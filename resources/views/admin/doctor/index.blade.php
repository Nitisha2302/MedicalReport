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

    <div class="container-fluid py-4">
        <div class="row">
            <div class="col-12">
                <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                            <h6 class="text-white text-capitalize ps-3">{{ $title }}</h6>
                        </div>
                        <div class="mt-2">
                            <a href="{{ route('admin.doctor.create') }}" class="btn btn-info btn float-end">Create Doctor
                            </a>
                        </div>

                        <div class="mt-2">
                            <a style="margin: 0px 10px" href="{{ route('admin.doctor.restore') }}" class="btn btn-danger btn float-end">Restore Doctor
                            </a>
                        </div>
                    </div>

                    @if (session('success'))
                        <div class="alert alert-success alert-dismissible text-white" role="alert">
                            <span class="text-sm"> {{ session('success') }}</span>
                            <button type="button" class="btn-close text-lg py-3 opacity-10" data-bs-dismiss="alert"
                                aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif

                    @if (session('error'))
                        <div class="alert alert-success alert-dismissible text-white" role="alert">
                            <span class="text-sm"> {{ session('error') }}</span>
                            <button type="button" class="btn-close text-lg py-3 opacity-10" data-bs-dismiss="alert"
                                aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    @endif


                    <div class="card-body px-0 pb-2">
                        <div class="table-responsive p-0">
                            <table class="table align-items-center mb-0">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Author</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Username</th>

                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Plan</th>
                                        <th
                                            class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Status</th>
                                        <th
                                            class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Employed</th>
                                        <th class="text-secondary opacity-7">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($doctors as $item)
                                        <tr>
                                            <td>
                                                <div class="d-flex px-2 py-1">
                                                    <div>
                                                        <img src="{{ $item['image'] }}"
                                                            class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <h6 class="mb-0 text-sm">{{ $item['name'] }}</h6>
                                                        <p class="text-xs text-secondary mb-0">{{ $item['email'] }}</p>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0">{{ $item['username'] }}</p>
                                                <p class="text-xs text-secondary mb-0">Mob : {{ $item['phone'] }}</p>
                                            </td>
                                            <td>
                                                <h6 class="text-xs font-weight-bold mb-0">
                                                    @if(isset($item['currentPlan'] ))
                                                    <span class="badge badge-sm bg-gradient-success"> ACTIVE </span>
                                                    @else
                                                    <span class="badge badge-sm bg-gradient-danger"> EXPIRED</span>
                                                    @endif
                                                </h6>
                                            </td>
                                            <td class="align-middle text-center text-sm">
                                                <span class="badge badge-sm bg-gradient-success">Online</span>
                                            </td>
                                            <td class="align-middle text-center">
                                                <span
                                                    class="text-secondary text-xs font-weight-bold">{{ $item['created_at'] }}</span>
                                            </td>
                                            <td class="align-middle">
                                                <a class="btn btn-primary btn-sm"
                                                    href="{{ route('admin.doctor.edit', $item['id']) }}"
                                                    class="text-secondary font-weight-bold text-xs" data-toggle="tooltip"
                                                    data-original-title="Edit user">
                                                    <i class="fas fa-user-edit text-white text-sm" data-bs-toggle="tooltip"
                                                        data-bs-placement="top" aria-hidden="true" aria-label="Edit Profile"
                                                        data-bs-original-title="Edit Profile"></i>
                                                </a>
                                                <a class="btn btn-danger btn-sm"
                                                    href="{{ route('admin.doctor.delete', $item['id']) }}"
                                                    class="text-secondary font-weight-bold text-xs" data-toggle="tooltip"
                                                    data-original-title="Edit user">
                                                    <i class="fas fa-trash text-white text-sm" data-bs-toggle="tooltip"
                                                        data-bs-placement="top" aria-hidden="true"
                                                        aria-label="Delete Profile"
                                                        data-bs-original-title="Delete Profile"></i>
                                                </a>

                                                <a class="btn btn-danger btn-sm"
                                                    href="{{ route('admin.doctor.patient', $item['id']) }}"
                                                    class="text-secondary font-weight-bold text-xs" data-toggle="tooltip"
                                                    data-original-title="Edit user">
                                                    <i class="fas fa-suitcase text-white text-sm" data-bs-toggle="tooltip"
                                                        data-bs-placement="top" aria-hidden="true"
                                                        aria-label="Delete Profile"
                                                        data-bs-original-title="Delete Profile"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="container">
                                {{ $doctors->links('vendor.pagination.bootstrap-5') }}
                                <p>Total Records: {{ $totalRecords }} Records Per Page: {{ $recordsPerPage }}</p>
                                <p></p>
                            </div>
                            <div class="container">

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('extra_body_scripts')
@endpush
