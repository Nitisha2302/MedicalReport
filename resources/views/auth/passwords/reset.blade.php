<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to right, #007bff, #28a745, #ffc107);
            animation: gradientAnimation 10s ease infinite alternate;
        }

        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }

            100% {
                background-position: 100% 50%;
            }
        }

        .container {
            width: 400px;
            background-color: rgba(255, 255, 255, 0.9);
            /* Use rgba to make background slightly transparent */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .header {
            background-color: #007bff;
            color: #fff;
            padding: 20px;
            text-align: center;
            border-radius: 8px 8px 0 0;
        }

        .content {
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 12px 20px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            margin-top: -10px;
            margin-bottom: 10px;
        }

        .success-message {
            color: #28a745;
            margin-bottom: 20px;
        }

        .footer {
            background-color: #f0f0f0;
            padding: 20px;
            text-align: center;
            border-radius: 0 0 8px 8px;
        }

        .container.collapsed .content {
            height: 0;
            overflow: hidden;
        }

        .container.collapsed #resetButton {
            opacity: 0;
            pointer-events: none;
        }

        #resetButton {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 12px 20px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, opacity 0.3s;
        }

        #resetButton:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="header">
            <h2>Password Reset</h2>
        </div>
        <div class="content">
            <form id="resetForm" action="{{ route('password.reset.confirm', ['token' => $token]) }}" method="POST">
                @csrf
                <input type="hidden" name="token" value="{{ $token }}">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value="{{ $email ?? old('email') }}" required>
                    <div class="error">{{ $errors->first('email') }}</div>
                </div>
                <div class="form-group">
                    <label for="password">New Password:</label>
                    <input type="password" id="password" name="password" required>
                    <div class="error">{{ $errors->first('password') }}</div>
                </div>
                <div class="form-group">
                    <label for="password_confirmation">Confirm New Password:</label>
                    <input type="password" id="password_confirmation" name="password_confirmation" required>
                    <div class="error">{{ $errors->first('password_confirmation') }}</div>
                </div>
                <input type="submit" value="Reset Password">
            </form>
            @if (session('status'))
                <div class="success-message">{{ session('status') }}</div>
            @endif
        </div>
        <div class="footer">
            <p>Back to <a href="{{ route('/') }}">Login</a></p>
        </div>
    </div>
    <script>
        function collapseForm() {
            document.getElementById("resetForm").classList.toggle("collapsed");
        }
    </script>
</body>

</html>
