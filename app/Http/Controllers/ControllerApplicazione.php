<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\ResourceApplicazione;
// use App\Http\Resources\ResourceApplicazione as RApp;
use App\Models\Articolo;
class ControllerApplicazione extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $recordsArticoli = Articolo::paginate(11);
        $collezioniDiRecords = ResourceApplicazione::collection($recordsArticoli);//->additional(["autore" => "pippo"]);
        return $collezioniDiRecords;

    }


    
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //


        $articolo = ($request->isMethod('put')) ? Articolo::findOrFail($request->input("id")) : new Articolo();

        $articolo->titolo = $request->input("titolo");
        $articolo->body = $request->input("body");
        
        if($articolo->save()){
            return new ResourceApplicazione($articolo);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $recodSelezionato = Articolo::findOrFail($id);
        return new ResourceApplicazione($recodSelezionato);//->additional(["autore" => "pippo"]);
    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $recordSelezionato = Articolo::findOrFail($id);
        if($recordSelezionato->delete()){
            return $recordSelezionato;
        }
    }
}
