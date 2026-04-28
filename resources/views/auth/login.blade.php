<x-guest-layout>
    <style>
        input[type="email"],
        input[type="password"] {
            color: #1f2937 !important;
        }
        input[type="email"]::-webkit-input-placeholder,
        input[type="password"]::-webkit-input-placeholder {
            color: #6b7280 !important;
            opacity: 1 !important;
        }
        input[type="email"]::placeholder,
        input[type="password"]::placeholder {
            color: #6b7280 !important;
            opacity: 1 !important;
        }
    </style>
    <div class="mb-6 text-center">
        <h1 class="text-2xl font-semibold text-gray-900">{{ __('Welcome back') }}</h1>
        <p class="mt-1 text-sm text-gray-600">{{ __('Sign in to your account') }}</p>
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('login') }}" class="space-y-4">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required
                autofocus autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div>
            <x-input-label for="password" :value="__('Password')" />
            <x-text-input id="password" class="block mt-1 w-full" type="password" name="password" required
                autocomplete="current-password" />
            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Remember Me -->
        <div class="flex items-center justify-between">
            <label for="remember_me" class="inline-flex items-center">
                <input id="remember_me" type="checkbox"
                    class="rounded border-gray-300 text-indigo-600 shadow-sm focus:ring-indigo-500" name="remember">
                <span class="ms-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
            </label>

            @if (Route::has('password.request'))
                <a class="text-sm text-indigo-600 hover:text-indigo-700 font-medium"
                    href="{{ route('password.request') }}">
                    {{ __('Forgot password?') }}
                </a>
            @endif
        </div>

        <x-primary-button class="w-full mt-2">
            {{ __('Log in') }}
        </x-primary-button>
    </form>

    <p class="mt-6 text-center text-sm text-gray-600">
        {{ __('Don\'t have an account?') }}
        <a href="{{ route('register') }}" class="font-medium text-indigo-600 hover:text-indigo-700">{{ __('Sign up') }}</a>
    </p>

    <div class="mt-4 text-center">
        <a href="{{ route('home') }}" style="display: inline-block; color: white; text-decoration: none; background-color: #D95F80; padding: 15px 30px; border-radius: 50px; border: 1px solid #D95F80; font-size: 12px; transition: 0.3s;" onmouseover="this.style.color='black';this.style.backgroundColor='transparent';" onmouseout="this.style.color='white';this.style.backgroundColor='#D95F80';">
            {{ __('Back to Home') }}
        </a>
    </div>
</x-guest-layout>
