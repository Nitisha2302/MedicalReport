<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="author" content="MTS">
        <title> | @yield('title')</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <meta name="csrf-token" content="{{ csrf_token() }}"><!-- for ajax -->

        <!---favicon-->
        {{-- <link rel="shortcut icon" href="{{ faviconPath() }}" /> --}}

        @include('admin.layouts.partials.head_style')
        @include('admin.layouts.partials.head_script')

    </head>

    <body class="g-sidenav-show bg-gray-100">
        <div class="wrapper_custom">
            @include('admin.layouts.partials.header')
            @include('admin.layouts.partials.sidebar_menu')
            <main class="main-content border-radius-lg">

                <div class="container-fluid py-4">
                    @yield('page_content')

                    @include('admin.layouts.partials.footer')
                </div>
            </main>
            <div class="control-sidebar-bg"></div>
        </div>

        @stack('extra_body_scripts')
    </body>
</html>