<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    @vite('resources/css/app.css')
</head>
<body class="bg-gray-100 min-h-screen">
    <div class="container mx-auto p-4">
    <div class="flex justify-center items-center min-h-screen bg-cover bg-center" style="background-image: url('{{ asset('images/hutomo-abrianto-X5BWooeO4Cw-unsplash.jpg') }}');">
    <div class="bg-form bg-opacity-90 p-6 rounded-lg shadow-lg max-w-md w-full text-center animate-fadeIn">
        <div class="mb-6">
            <img src="{{ asset('images/haala-flower-garden-high-resolution-logo-transparent.png') }}" alt="Logo" class="mx-auto w-24 h-auto">
            <h1 class="text-2xl font-semibold mt-4 mb-6">Register</h1>
        </div>
        <!-- validation errors -->
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <form action="{{ route('register') }}" method="POST" class="space-y-4">
            @csrf 
            <input type="text" name="name" placeholder="Name" class="inputReg" required>
            <input type="email" name="email" placeholder="Email" class="inputReg" required>
            <input type="text" name="city" placeholder="City" class="inputReg" required>
            <input type="password" name="password" placeholder="Password" class="inputReg" required>
            <input type="password" name="password_confirmation" placeholder="Confirm Password" class="inputReg" required>
            <button type="submit" class="w-full bg-green-500 hover:bg-green-600 text-white font-semibold py-2 rounded-lg">Register</button>
        </form>
    </div>
</div>
    </div>
</body>
</html>
