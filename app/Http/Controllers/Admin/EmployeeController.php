<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Employee;

class EmployeeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $Employees = Employee::orderBy('id','DESC')->get(); //Get All Employees
        return view('Admin.Employees.index', compact('Employees')); //Put Employees To View By Compact
    }
}
