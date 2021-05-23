<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ResourceApplicazione extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return parent::toArray($request);
        // return [
        //     "titolo_personalizzato" => $this->titolo,
        //     "titolo_body" => $this->body,
        // ];
    }


    // se non funziona il metodo sottostante
    // utilizzare il metodo:
    // ->additional(["autore" => "pippo"]);
    // in questo modo:
    // return ResourceApplicazione::collection($recordsArticoli)->additional(["autore" => "pippo"]);

    // la quale avra' lo stesso effetto del metodo seguente

    // public function with($request){
    //     return[
    //         'autore' => 'giuseppe tarallo'
    //     ];
    // }

}
