<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Task Management</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Styles -->
        <style>
            body {
                padding: 0;
                margin: 0;
            }
            .container {
                width: 90%;
                margin: auto;
            }
            a {
                text-decoration: none;
            }
            nav {
                margin: 10px;
                display: flex;
                justify-content: center;
            }
            nav a {
                padding: 10px 20px;
                background: #9ca3af;
                border-radius: 4px;
                display: inline-block;
                margin: 5px;
                color: #ffffff;
            }
            .title {
                text-align: center;
                font-size: 30px;
                margin-top: 50px;
            }
        </style>

    </head>
    <body>
        <div class="container">
            <div>
                @if (Route::has('login'))
                    <nav>
                        @auth
                            <a
                                href="{{ url('/dashboard') }}"
                                class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                            >
                                Dashboard
                            </a>
                        @else
                            <a
                                href="{{ route('login') }}"
                                class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                            >
                                Log in
                            </a>

                            @if (Route::has('register'))
                                <a
                                    href="{{ route('register') }}"
                                    class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                                >
                                    Register
                                </a>
                            @endif
                        @endauth
                    </nav>
                @endif
            </div>
            <div class="title">
                <h1> Welcome to task management software</h1>
            </div>
        </div>
    </body>
</html>
