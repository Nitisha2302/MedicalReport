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
                    </div>
                    <div class="card-body px-0 pb-2">
                        <div class="table-responsive p-0">
                            <table class="table align-items-center mb-0">
                                <thead>
                                    <tr>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Doctor Name</th>
                                        <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Patient Name</th>
                                        <th
                                            class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                                            Unique ID</th>
                                        <th
                                            class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                                            Create</th>
                                        <th class="text-secondary opacity-7">File</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($reports as $item)
                                        <tr>
                                            <td>
                                                <div class="d-flex px-2 py-1">
                                                    <div>
                                                        {{-- <img src="{{ $item['image'] }}"
                                                            class="avatar avatar-sm me-3 border-radius-lg" alt="user1"> --}}
                                                    </div>
                                                    <div class="d-flex flex-column justify-content-center">
                                                        <a href="{{ route('admin.doctor.edit', $item['doctor']['id']) }}">
                                                            <h6 class="mb-0 text-sm">{{ $item['doctor']['name'] }}</h6>
                                                            <p class="text-xs text-secondary mb-0">
                                                                {{ $item['doctor']['username'] }}</p>
                                                        </a>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="{{ route('admin.patient.edit', $item['patient']['id']) }}">
                                                    <p class="text-xs font-weight-bold mb-0">{{ $item['patient']['name'] }}
                                                    </p>
                                                </a>
                                            </td>
                                            <td>
                                                <p class="text-xs font-weight-bold mb-0">{{ $item['unique_id'] }}</p>
                                            </td>
                                            <td class="align-middle text-center">
                                                <span
                                                    class="text-secondary text-xs font-weight-bold">{{ $item['created_at'] }}</span>
                                            </td>
                                            <td class="align-middle">
                                                <a class="btn btn-primary btn-sm" href="{{ $item['file'] }}"
                                                    class="text-secondary font-weight-bold text-xs" data-toggle="tooltip"
                                                    data-original-title="Edit user" target="_blank">
                                                    <i class="fas fa-eye text-white text-sm" data-bs-toggle="tooltip"
                                                        data-bs-placement="top" aria-hidden="true" aria-label="Edit Profile"
                                                        data-bs-original-title="Edit Profile"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('extra_body_scripts')
@endpush
