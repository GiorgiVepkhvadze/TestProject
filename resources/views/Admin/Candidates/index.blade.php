@extends('layouts.app')
@section('title', 'Candidates')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Candidates</div>

                <div class="card-body">

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Qualify</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($Candidates as $Candidate)
                                <tr>
                                    <th scope="row">{{ $Candidate->id }}</th>
                                    <td>{{ $Candidate->name }}</td>
                                    <td>{{ $Candidate->email }}</td>
                                    <td>{{ $Candidate->phone }}</td>
                                    <td>
                                        <form method="POST" action="{{ route('moveToEmployee', $Candidate->id) }}">
                                            @csrf
                                            <button type="submit" class="btn btn-outline-info">Qualify</button></td>
                                         </form>
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
@endsection
