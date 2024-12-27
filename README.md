Task Management API

This repository provides an API for managing tasks, built with Laravel. The implementation separates concerns between the controller and service layers for clean and maintainable code. The application includes endpoints for creating, retrieving, updating, and deleting tasks, with support for both JSON API responses and web-based views.

Approach

1. Controller-Service Architecture

    Controllers are responsible for handling HTTP requests and routing them to the appropriate services.
    Services encapsulate the business logic, ensuring that the controllers remain lightweight and focused on request-response handling.

2. API and Web Compatibility

    The TaskController dynamically determines whether to return a JSON response (for API endpoints) or render a Blade view (for web endpoints) based on the route and request headers.
    This is achieved using the wantsJson() method and explicit route checking (e.g., is('api/*')).

3. Authentication with Sanctum

    All API routes are protected using Laravel Sanctum, ensuring only authenticated users can access or manipulate task data.
    A token-based authentication system is implemented, and tokens can be generated and used for API access.

4. Reusable Service Layer

    The TaskService centralizes the logic for task operations (e.g., retrieving, storing, updating, deleting).
    This approach promotes code reusability and simplifies future enhancements or refactoring.

5. Task Filtering and Pagination

    API supports filtering tasks by status and sorting them by due date using query parameters.
    Paginated results ensure efficient handling of large datasets.

API Endpoints

Method	Endpoint	Description	Auth Required
GET	/api/tasks	Retrieve all tasks	Yes
POST /api/tasks	Create a new task	Yes
GET	/api/tasks/{id}	Retrieve a specific task	Yes
PUT	/api/tasks/{id}	Update a specific task	Yes
DELETE /api/tasks/{id}	Delete a specific task	Yes

Setup Instructions

    Clone the repository:

git clone https://github.com/mdmosabber/task-management-api.git
cd task-management-api

Install dependencies:

composer install
npm install

Configure environment:

    Copy .env.example to .env.
    Set database credentials and Sanctum configuration.

Run migrations and seed database:

php artisan migrate --seed

Generate an application key:

php artisan key:generate

Start the development server:

    php artisan serve

Testing with Postman

    Obtain an API token:
        Hit the /api/token endpoint to generate a token.
        Use the token in the Authorization header as Bearer <your-token>.

    Test CRUD operations:
        Use the endpoints described in the "API Endpoints" section.