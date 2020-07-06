<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

use App\Candidate;
use App\Employee;

class CandidateController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $Candidates = Candidate::orderBy('id','DESC')->get(); //Get All Candidates
        return view('Admin.Candidates.index', compact('Candidates')); //Put Candidates To View By Compact
    }

    public function moveToEmployee(Request $request, $id)
    {
        // find candidate with given ID
        $Candidate = Candidate::findOrFail($id);
        // get all candidate attributes
        $CandidateData = $Candidate->attributesToArray();
        // remove id attributes To avoid duplicate id's in the employess table
        $CandidateData = Arr::except($CandidateData, ['id']);
        // create new Employee based on Candidate's data
        if(Employee::create($CandidateData)) //If createad New Employee Then delete old Candidate
        {
            $Candidate->delete();
            return redirect()->route('Employees')->with('Success', 'New employee is created');
        }
        else
        {
            return redirect()->route('Employees')->with('Error', 'Oops. We have problem');
        }

    }
}
