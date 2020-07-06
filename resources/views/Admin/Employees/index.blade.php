@extends('layouts.app')
@section('title', 'Employees')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">

                @if (\Session::has('Error'))
                    <div class="alert alert-danger">
                            {!! \Session::get('Error') !!}
                    </div>
                @endif

                @if (\Session::has('Success'))
                    <div class="alert alert-success">
                            {!! \Session::get('Success') !!}
                    </div>
                @endif

                <div class="card-header">Employees</div>

                <div class="card-body">

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Phone</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($Employees as $Employee)
                                <tr>
                                    <th scope="row">{{ $Employee->id }}</th>
                                    <td>{{ $Employee->name }}</td>
                                    <td>{{ $Employee->email }}</td>
                                    <td>{{ $Employee->phone }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
