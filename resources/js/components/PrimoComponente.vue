<template>
    <div>
        <h1>
            {{ titoloApp }}
        </h1>

        <div v-html='parag1' class='mt-5 mb-4' >

        </div>

        <div v-html='parag2' class='mb-5 font-italic' >

        </div>

<nav aria-label="Page navigation" class="mb-5">
  <ul class="pagination">
    <li>
    <span style="margin-right: 7px;" class="font-italic font-weight-bold">Pagination: </span>  <a href="#" aria-label="Previous">

        <span @click='paginaPrecedente(paginazioneOggetto.pagina_precedente)' 
              v-bind:class='{EliminaTastoPaginazione: !paginazioneOggetto.pagina_precedente }' 
              aria-hidden="true">&laquo;
        </span>

      </a>

    </li>
    <li>{{ paginazioneOggetto.pagina_corrente }} of {{ paginazioneOggetto.pagina_finale }}</li>
    <li>
      <a href="#" aria-label="Next">

        <span v-bind:class='{EliminaTastoPaginazione: !paginazioneOggetto.pagina_prossima }' 
              @click='paginaSuccessiva(paginazioneOggetto.pagina_prossima)' 
              aria-hidden="true">&raquo;
        </span>

      </a>
    </li>
  </ul>
</nav>

        <a href="/articoli" class="btn btn-warning mt-4 mb-4" style="color: white"> show all Rest API contents </a>

        <div id='mainInputBox' class="form-grup">

            <form @submit.prevent='inviaDatiForm()'>

                <input  v-model='oggettoRichiesta.titolo'  placeholder="value1" class="form-control mb-1" type="text" name="" id="">
                <input  v-model='oggettoRichiesta.body'  placeholder="value2" class="form-control mb-1" type="text" name="" id="">
                <input  class="form-control mt-2 mb-5 btn btn-primary text-white" type="submit" value="submit values">

            </form>

        </div>

        <!-- qui l'oggetto "data" della richiesta JSON e' gia' stato vettorizzato -->
        <!-- {{ recordsAricoli }} -->

        <div id="mainOutputBox" style="max-height: 250px; overflow: auto;">

            <div class="card card-body mb-2" v-for="(articolo, indice) in recordsAricoli" v-bind:key='indice'>

                    <div style="background-color: rgba(119, 0, 255, .1); padding: 11px;">

                        <h3> {{ articolo.titolo }} </h3>
                        <p class="p-2">  {{ articolo.body }} </p>

                    </div>

                            <div class="d-flex justify-content-around mt-5" >

                                <div style="width:49%;">
                                    <a @click='elimina(articolo.id)' class="w-100 btn btn-danger mb-2">delete record from MySQL db</a>
                                </div>

                                <div style="width:49%;">
                                    <a @click='aggiorna(articolo)' class="w-100 btn btn-success">update record from MySQL db</a>
                                </div>

                            </div>
        
                </div> 
        </div>

<div id='footerBox'>
    Vue and Laravel, REST API, giuseppe tarallo -- UK, London 
</div>

    </div>
</template>


<script>
    export default {
        data() {
            return {
                titoloApp: "vue and laravel,  Rest API",
                parag1: `The application allows you to control a REST API, based on MySQL db, through Vue and the JS <b><i>fetch promise</i></b>, as it gives the possibility to obtain and send data to the routes managed by Laravel.`,
                parag2: `The backend part of the project is managed by Laravel, while the frontend part is managed by Vue through Single Page Application.`,
                oggettoRichiesta:
                {
                    id: '',         // non serve lasciato come placeholder
                    aaatitolo: '',
                    aaabody: '',
                },
                paginazioneOggetto: {},
                    
                recordsAricoli: [],
                aggiornaRecord: false
            }
        },
        methods:{

          miaFetch(url = "/articoli", verboMetodo = 'get')
          {
             fetch(url,{
                  method: verboMetodo,
                    headers: {
                    'Content-Type': 'application/json'                 
                    }
                  })
                  .then( richiesta => richiesta.json())
                  .then( dati => {
                    
                    // una richiesta del genere ottiene  un oggetto "data"
                    // al suo interno c'e' il vettore coi dati ...
                    //   {data: Array(11), links: {…}, meta: {…}}

                    console.log( dati );

                    this.creaPaginazione(dati.meta, dati.links); 
                    this.recordsAricoli = dati.data; 

                  }).catch(e => console.log(e.message))
        },

        elimina(id) {
             if(confirm("vuoi eliminare il record")) {

                this.miaFetch(`/articolo/api/${id}`, "delete");
                this.miaFetch();
                
             }
        },

        aggiorna(oggettoAggionato) {
            this.aggiornaRecord = true;

                    console.log('id:' , oggettoAggionato)
                    alert("update record")
                    location.href = '#mainInputBox';
                    
                    this.oggettoRichiesta.titolo =  oggettoAggionato.titolo;
                    this.oggettoRichiesta.body   =  oggettoAggionato.body;
                    this.oggettoRichiesta.id     =  oggettoAggionato.id;

                    this.miaFetch();
        },

                inviaDatiForm() {

                console.log(`invia i dati ${this.oggettoRichiesta.titolo}`)
                console.log('this.aggiornaRecord:' + this.aggiornaRecord)

                if(this.aggiornaRecord === false) {
                    fetch('/articolo/api/', {
                        method: 'post',
                            headers: {
                            'Content-Type': 'application/json'                 
                            },
                            body: JSON.stringify(this.oggettoRichiesta) 
                        })
                        .then( richiesta => richiesta.json())
                        .then( dati => {
                            
                            // una richiesta del genere ottiene  un oggetto "data"
                            // al suo interno c'e' il vettore coi dati ...
                            //   {data: Array(11), links: {…}, meta: {…}}

                                //   console.log( dati ); 
                                this.recordsAricoli = dati.data;

                        })
                        .catch(e => { console.log('errore accade qui 00000001');  console.log(e) })

                        this.oggettoRichiesta.titolo = '';
                        this.oggettoRichiesta.body = '';
                        this.miaFetch();
                }
                else {

                    fetch('/articolo/api', {
                        method: 'put',
                            headers: {
                            'Content-Type': 'application/json',
                            'Accept': 'application/json',                // fondamentale se da errore: "json file error position 0 <"
                            },
                            // mode: 'cors',                            // in questo caso non serve
                            body: JSON.stringify(this.oggettoRichiesta) // l'oggetto json va convertito in string per essere spedito al controller
                        })
                        .then( richiesta => richiesta.json())
                        .then( dati => {
                            
                            // una richiesta del genere ottiene  un oggetto "data"
                            // al suo interno c'e' il vettore coi dati ...
                            //   {data: Array(11), links: {…}, meta: {…}}

                                console.log("oggetto:", dati ); 
                                this.recordsAricoli = dati.data;
                            })
                            .catch(e => { console.log('errore accade qui aaaaaaaaaa');  console.log(e.message) })
                }
                this.miaFetch();
        },
        creaPaginazione(DatiDelMetaObj, DatiDelLinkObj) {
            let oggettoPaginazione = {
                pagina_corrente   : DatiDelMetaObj.current_page,
                pagina_finale     : DatiDelMetaObj.last_page,
                pagina_prossima   : DatiDelLinkObj.next,
                pagina_precedente : DatiDelLinkObj.prev
            }

            this.paginazioneOggetto = oggettoPaginazione; 
        },

            paginaPrecedente(url) {
                this.miaFetch(url);
            },

            paginaSuccessiva(url) {
                this.miaFetch(url);
            }

        },

        created() {
            this.miaFetch() 
        }
    }
</script>



<style scoped>

.EliminaTastoPaginazione{
    display: none;
}

#footerBox{
    background-color: rgba(0, 0, 0, .7);
    color: rgb(51, 224, 51);
    padding: 11px;
    font: 1.2em cursive;
    text-align: center;
    margin: 77px 0 0 0;
}
    
</style>