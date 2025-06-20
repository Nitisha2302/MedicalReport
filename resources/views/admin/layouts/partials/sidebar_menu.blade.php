<aside
    class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 bg-gradient-dark"
    id="sidenav-main">
    <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
            aria-hidden="true" id="iconSidenav"></i>
        <a class="navbar-brand m-0" href=" https://demos.creative-tim.com/material-dashboard/pages/dashboard "
            target="_blank">
            {{-- <img src="./assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo" /> --}}
            <span class="ms-1 font-weight-bold text-white">Doctor Management</span>
        </a>
    </div>

    <hr class="horizontal light mt-0 mb-2" />

    <div class="collapse navbar-collapse w-auto" id="sidenav-collapse-main">
        <ul class="navbar-nav">
            <li class="nav-item " >
                <a class="nav-link {{ request()->is('admin/dashboard') ? 'active bg-gradient-primary text-white' : '' }}" href="{{ url('/admin/dashboard') }}">
                    <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="material-icons opacity-10">dashboard</i>
                    </div>

                    <span class="nav-link-text ms-1">Dashboard</span>
                </a>
            </li>

            <li class="nav-item " >
                <a class="nav-link {{ request()->is('admin/doctor*') ? 'active bg-gradient-primary text-white' : '' }}" href="{{ url('/admin/doctors') }}">
                    <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="material-icons opacity-10">group</i>
                    </div>

                    <span class="nav-link-text ms-1">Doctors</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link {{ request()->is('admin/patients*') ? 'active bg-gradient-primary text-white' : '' }}" href="{{ url('/admin/patients') }}">
                    <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="material-icons opacity-10">group</i>
                    </div>

                    <span class="nav-link-text ms-1">Patients</span>
                </a>
            </li>


            <li class="nav-item">
                <a class="nav-link {{ request()->is('admin/plan*') ? 'active bg-gradient-primary text-white' : '' }}" href="{{ url('/admin/plans') }}">
                    <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
                        <i class="material-icons opacity-10">group</i>
                    </div>

                    <span class="nav-link-text ms-1">Plans</span>
                </a>
            </li>

        </ul>
    </div>

    <div class="sidenav-footer position-absolute w-100 bottom-0">
        <div class="mx-3">
            {{-- <a class="btn btn-outline-primary mt-4 w-100"
                href="https://www.creative-tim.com/learning-lab/bootstrap/overview/material-dashboard?ref=sidebarfree"
                type="button">Documentation</a> --}}
            <a class="btn bg-gradient-primary w-100"
                href="{{ url('/admin/logout') }}"
                type="button">Logout</a>
        </div>
    </div>
</aside>
