@php
    $breadcrumb = [
        [
            'icon' => 'fa fa-home',
            'href' => url('/'),
            'name' => __('Dashboard'),
        ],
    ];
@endphp

@extends('admin.layouts.master', $breadcrumb)
@section('title', $title)

@section('page_content')

    <div class="container-fluid px-2 px-md-4">
        <div class="page-header min-height-300 border-radius-xl mt-4"
            style="background-image: url('https://images.unsplash.com/photo-1531512073830-ba890ca4eba2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&q=80');"
            id="file-ip-1-preview-1">
            <span class="mask  bg-gradient-primary  opacity-6"></span>
        </div>
        <div class="card card-body mx-3 mx-md-4 mt-n6">
            <div class="row gx-4 mb-2">
                {{-- <div class="col-lg-4 col-md-6 my-sm-auto ms-sm-auto me-sm-0 mx-auto mt-3">
          <div class="nav-wrapper position-relative end-0">
            <ul class="nav nav-pills nav-fill p-1" role="tablist">
              <li class="nav-item">
                <a class="nav-link mb-0 px-0 py-1 active " data-bs-toggle="tab" href="javascript:;" role="tab" aria-selected="true">
                  <i class="material-icons text-lg position-relative">home</i>
                  <span class="ms-1">App</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link mb-0 px-0 py-1 " data-bs-toggle="tab" href="javascript:;" role="tab" aria-selected="false">
                  <i class="material-icons text-lg position-relative">email</i>
                  <span class="ms-1">Messages</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link mb-0 px-0 py-1 " data-bs-toggle="tab" href="javascript:;" role="tab" aria-selected="false">
                  <i class="material-icons text-lg position-relative">settings</i>
                  <span class="ms-1">Settings</span>
                </a>
              </li>
            </ul>
          </div>
        </div> --}}
            </div>
            <div class="row">
                <div class="row">
                    <div class="col-12 col-xl-12">
                        <div class="card card-plain h-100">
                            <div class="card-header pb-0 p-3">
                                <h6 class="mb-0">{{ $title }}</h6>
                                <div class="col-12 text-end">
                                    <a class="btn bg-gradient-dark mb-0 me-4" href="{{ back()->getTargetUrl() }}">Back to
                                        list</a>
                                </div>
                            </div>
                            <form action="{{ route('admin.doctor.update', $doctor->id) }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="col-md-6">
                                    <div class="avatar avatar-xl position-relative preview">
                                        <img src="https://material-dashboard-pro-laravel.creative-tim.com/assets/img/placeholder.jpg"
                                            alt="avatar" class="w-100 rounded-circle shadow-sm" id="file-ip-1-preview">
                                        <label for="file-input"
                                            class="btn btn-sm btn-icon-only bg-gradient-light position-absolute bottom-0 end-0 mb-n2 me-n2">
                                            <i class="fa fa-pen top-0" data-bs-toggle="tooltip" data-bs-placement="top"
                                                title="" aria-hidden="true" data-bs-original-title="Select Image"
                                                aria-label="Select Image"></i><span class="sr-only">Select Image</span>
                                        </label>
                                        <input type="file" name="image" id="file-input" onchange="showPreview(event);">
                                    </div>
                                </div>


                                <div class="card-body p-3">

                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group">
                                                <label for="name" class="form-control-label">Name</label>
                                                <input type="text" name="name" id="name" class="form-control"
                                                    placeholder="Name" value="{{ $doctor->name }}"
                                                    style="background-color: #eeeeee; padding-left: 10px">
                                            </div>

                                            @error('name')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror
                                        </div>


                                        <div class="col-6">
                                            <div class="form-group">
                                                <label for="user-name" class="form-control-label">User Name</label>
                                                <input type="text" name="username" id="user-name" class="form-control"
                                                    placeholder="User Name" value="{{ $doctor->username }}"
                                                    style="background-color: #eeeeee; padding-left: 10px">
                                            </div>

                                            @error('username')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group mt-2">
                                                <label for="email-address" class="form-control-label">Email</label>
                                                <input type="email" name="email" id="email-address" class="form-control"
                                                    placeholder="Email address" value="{{ $doctor->email }}"
                                                    style="background-color: #eeeeee; padding-left: 10px">
                                            </div>
                                            @error('email')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="col-6">
                                            <div class="form-group mt-2">
                                                <label for="phone" class="form-control-label">Phone</label>
                                                <input type="text" name="phone" id="phone" class="form-control"
                                                    placeholder="Phone" value="{{ $doctor->phone }}"
                                                    style="background-color: #eeeeee; padding-left: 10px">
                                            </div>
                                            @error('phone')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group mt-2">
                                                <label for="specialized" class="form-control-label">Specialized</label>
                                                <input type="text" name="specialized" id="specialized"
                                                    class="form-control" placeholder="specialized" value="{{ $doctor->specialized }}"
                                                    style="background-color: #eeeeee; padding-left: 10px">
                                            </div>

                                            @error('specialized')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="col-6">
                                            <div class="form-group mt-2">
                                                <label for="phone" class="form-control-label">Gender</label>
                                                <select class="form-control" id="gender" name="gender"
                                                    style="background-color: #eeeeee; padding-left: 10px">
                                                    <option value="male" {{ $doctor->gender == 'male' ? 'selected' : '' }}>Male</option>
                                                    <option value="female" {{ $doctor->gender == 'female' ? 'selected' : '' }}>Female</option>
                                                </select>
                                            </div>
                                            @error('gender')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group mt-2">
                                                <label for="email-address" class="form-control-label">Password</label>
                                                <input type="password" name="password" id="email-address" class="form-control"
                                                    placeholder="Password" value="{{old('password') }}"
                                                    style="background-color: #eeeeee; padding-left: 10px">
                                            </div>
                                            @error('password')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror
                                        </div>

                                        <div class="col-6">
                                            <div class="form-group mt-2">
                                                <label for="phone" class="form-control-label">Confirm Password</label>
                                                <input type="password" name="confirm_password" id="confirm_password" class="form-control"
                                                    placeholder="Confirm Password" value="{{old('confirm_password') }}"
                                                    style="background-color: #eeeeee; padding-left: 10px">
                                            </div>
                                            @error('confirm_password')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-6">
                                            <div class="form-group mt-2">
                                                <label for="specialized" class="form-control-label">Address</label>
                                                <textarea name="address" id="address" class="form-control" placeholder="specialized"
                                                    style="background-color: #eeeeee; padding-left: 10px"> {{old('address') }}
                                                </textarea>
                                            </div>

                                            @error('address')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror

                                        </div>

                                        <div class="col-6">
                                            <div class="form-group mt-2">
                                                <label for="specialized" class="form-control-label">Bio</label>
                                                <textarea name="bio" id="bio" class="form-control" placeholder="specialized"
                                                    style="background-color: #eeeeee; padding-left: 10px"> {{old('bio') }}
                                                </textarea>
                                            </div>
                                            @error('bio')
                                                <div class="alert alert-danger alert-dismissible text-white" role="alert">
                                                    <span class="text-sm">{{ $message }}</span>
                                                    <button type="button" class="btn-close text-lg py-3 opacity-10"
                                                        data-bs-dismiss="alert" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                            @enderror
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group mt-2">
                                                <label for="address" class="form-control-label">SELECT PLANS</label>
                                                <select name="plan" id="plan" class="form-control" style="background-color: #eeeeee; padding-left: 10px">
                                                    <option value="">Select Plans</option>
                                                    @foreach ($plans as $item)
                                                    <option value="{{$item['id']}}">{{$item['name']}}</option>
                                                    @endforeach

                                                </select>
                                            </div>
                                        </div>
                                    </div>


                                    <button type="submit" class="btn bg-gradient-primary mt-2">Submit</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('extra_body_scripts')
    <script>
        function showPreview(event) {
            if (event.target.files.length > 0) {
                var src = URL.createObjectURL(event.target.files[0]);
                var preview = document.getElementById("file-ip-1-preview");
                var preview1 = document.getElementById("file-ip-1-preview-1");
                preview1.style.backgroundImage = "url('" + src + "')";
                preview.src = src;
                preview.style.display = "block";
            }
        }
    </script>
@endpush
