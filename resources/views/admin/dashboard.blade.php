@extends('layouts.app')
@section('pagetitle', 'Dashboard')
@section('styles')
<link href="{{ asset('css/vendor/admin.min.css') }}" rel="stylesheet">
@stop
    @section('content')


    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/dashboard">
                <div class="sidebar-brand-icon">
                    <i class="fas fa-user-secret fa-sm"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Control Panel</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="/admin/dashboard">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>DASHBOARD</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Manage
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#doctor" aria-expanded="true"
                    aria-controls="Branch">
                    <i class="fas fa-user-md"></i>
                    <span>DOCTOR</span>
                </a>
                <div id="doctor" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="py-2 collapse-inner rounded">

                        <a class="collapse-item" href="/admin/doctor/all"><i class="fas fa-list-ul"></i> &nbsp;All
                            Doctors</a>
                        <a class="collapse-item" href="/admin/doctor/add"><i class="fas fa-user-plus"></i> &nbsp;Add
                            Doctor</a>
                        <a class="collapse-item" href="/admin/doctor/remove"><i class="fas fa-user-minus"></i>
                            &nbsp;Remove Doctor</a>

                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#patient"
                    aria-expanded="true" aria-controls="Customer">
                    <i class="fas fa-fw fa-hospital-user"></i>
                    <span>PATIENT</span>
                </a>
                <div id="patient" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                    <div class=" py-2 collapse-inner rounded">

                        <a class="collapse-item" href="\admin\patient\all"><i class="fas fa-list-ul"></i> &nbsp;All
                            Patients</a>
                        <a class="collapse-item" href="\admin\patient\add"><i class="fas fa-user-plus"></i> &nbsp;Add
                            Patient</a>
                        <a class="collapse-item" href="\admin\patient\block"><i class="fas fa-user-times"></i>
                            &nbsp;Block Patient</a>

                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Operations
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#appointment"
                    aria-expanded="true" aria-controls="Shipment">
                    <i class="fas fa-prescription"></i>
                    <span>APPOINTMENTS</span>
                </a>
                <div id="appointment" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class=" py-2 collapse-inner rounded">
                        <a class="collapse-item" href="\admin\appointment\all"><i class="fas fa-file-prescription"></i>
                            &nbsp;All Appointments</a>
                        <a class="collapse-item" href="\admin\appointment\live"><i class="fas fa-eye"></i> &nbsp;Live
                            Status</a>
                        <a class="collapse-item" href="\admin\appointment\request"><i
                                class="fas fa-comment-medical"></i> &nbsp;Appointment Requests <span
                                class="badge badge-danger">{{ $pending }}</span></a>
                    </div>
                </div>
            </li>
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="\admin\departments">
                    <i class="fas fa-clinic-medical"></i>
                    <span>DEPARTMENTS</span>
                </a>

            </li>

            <li class="nav-item">
                <a class="nav-link" href="\admin\medicines">
                    <i class="fas fa-pills"></i>
                    <span>MEDICINES</span>
                </a>

            </li>



            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#Account"
                    aria-expanded="true" aria-controls="Account">
                    <i class="fas fa-user-secret"></i>
                    <span>ACCOUNT</span></a>
                <div id="Account" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class=" py-2 collapse-inner rounded">
                        <a class="collapse-item" href="\admin\profile\view"><i class="fas fa-user-cog"></i>
                            &nbsp;Account Settings</a>
                        <a class="collapse-item" href="\admin\profile\password"><i class="fas fa-user-lock"></i>
                            &nbsp;Change Password</a>

                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Begin Page Content -->
                <div class="container-fluid py-4">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
                    </div>
                    @if(session('status'))
                        <div class="alert alert-success text-center" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <!-- Content Row -->
                    <div class="row">

                        <div class="col-xl-3 col-md-6 mb-4">
                            <a onclick="window.location.href='/admin/doctor/all'">
                                <div class="card border-left-primary shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                    Doctors</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $doctor }}</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-user-md fa-2x text-gray-500"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="col-xl-3 col-md-6 mb-4">
                            <a onclick="window.location.href='/admin/patient/all'">
                                <div class="card border-left-success shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                    Patients</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $patient }}</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-hospital-user fa-2x text-gray-500"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                Completed</div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">
                                                        {{ $completed }}</div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-check-circle fa-2x text-gray-500"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Pending Requests Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <a onclick="window.location.href='/admin/appointment/request'">
                                <div class="card border-left-danger shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                    Pending</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $pending }}</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="far fa-clock fa-2x text-gray-500"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="jumbotron jumbotron-fluid"
                        style="padding-top:20px!important;padding-bottom:20px!important;">
                        <div class="container">
                            <h4 class="text-center">E-Hospital Management System</h4>
                            <p class="lead text-center small">Manage Administration Panel</p>
                            <div class="row mb-4">
                                <div class="col-md-6">
                                    <!-- Card -->
                                    <div class="card">

                                        <div class="card-image">

                                            <!-- Content -->
                                            <a href="/admin/departments">
                                                <div class="text-white rounded d-flex h-100 mask  indigo darken-3">
                                                    <div class="first-content align-self-center p-3">
                                                        <div class="row justify-content-center">
                                                            <i class="fas fa-clinic-medical fa-3x"></i>
                                                        </div><BR>
                                                        <h4 class="text-center card-title">Manage Departments</h4>
                                                        <p class="text-center">Add/Remove Departments. View details
                                                            about E-Hospital departments.</p>
                                                    </div>

                                                </div>
                                            </a>

                                        </div>
                                    </div>
                                    <!-- Card -->
                                </div>
                                <div class="col-md-6">
                                    <!-- Card -->
                                    <div class="card">

                                        <div class="card-image">

                                            <!-- Content -->
                                            <a href="/admin/medicines">
                                                <div class="text-white d-flex rounded h-100 mask red darken-4">
                                                    <div class="first-content align-self-center p-3">
                                                        <div class="row justify-content-center">
                                                            <i class="fas fa-pills fa-3x"></i>
                                                        </div><BR>
                                                        <h4 class="text-center card-title">Manage Medicines</h4>
                                                        <p class="text-center">Manage online medicine orders. View
                                                            details about orders.</p>
                                                    </div>

                                                </div>
                                            </a>

                                        </div>
                                    </div>
                                    <!-- Card -->
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->







    @section('scripts')
    <script src="{{ asset('js/vendor/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('js/vendor/admin.js') }}"></script>
    <script src="{{ asset('js/vendor/Chart.js') }}"></script>
    <script src="{{ asset('js/vendor/chart-bar-demo.js') }}"></script>
    <script src="{{ asset('js/vendor/chart-pie-demo.js') }}"></script>

    @stop
        @endsection
