@extends('layouts.app')

@section('content')
          <!-- loader END -->
        <!-- Sign in Start -->
        <section class="sign-in-page">
            <div class="container sign-in-page-bg mt-5 p-0">
                <div class="row no-gutters">
                    <div class="col-md-6 text-center">
                        <div class="sign-in-detail text-white">
                            <div class="owl-carousel" data-autoplay="true" data-loop="true" data-nav="false" data-dots="true" data-items="1" data-items-laptop="1" data-items-tab="1" data-items-mobile="1" data-items-mobile-sm="1" data-margin="0">
                                <div class="item">
                                    <img src="{{Request::root()}}/assets/images/managment.png" class="img-fluid mb-4" alt="logo">
                                    <h4 class="mb-1 text-white">Management Area Is Restricted</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 position-relative">
                        <div class="sign-in-from">



                            <h1 class="mb-0">Management Area</h1>                           
                            <form  method="POST" action="" class="mt-4">
                              @csrf
                                <div class="form-group">
                                    <label for="email">{{ __('E-Mail Address') }}</label>
                                    <input type="email" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus class="form-control mb-0 @error('email') is-invalid @enderror" id="email" placeholder="{{ __('E-Mail Address') }}">

                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                
                                </div>
                                <div class="form-group">
                                    <label for="password">{{ __('Password') }}</label>
                                    <input type="password" name="password" required autocomplete="current-password" class="form-control mb-0 @error('password') is-invalid @enderror" id="password" placeholder="{{ __('Password') }}">
                                </div>
                                <div class="d-inline-block w-100">
                                    <div class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
                                        
                                    </div>
                                    <button type="submit" class="btn btn-primary float-right">{{ __('Login') }}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Sign in END -->
@endsection

