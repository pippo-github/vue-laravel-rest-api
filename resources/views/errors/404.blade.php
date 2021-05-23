@extends('layouts.layouts')
@section('title', "route not exists 404")
@section('contents')

<div class="container">
    <h1 class="mt-4 mb-4">
        Page not found, error 404
    </h1>

    <div class='jumbotron'>
        <p>
            The url requested is not found, please insert a valid url
        </p>
    
        <a class='btn btn-success' href="/"> back to home</a>
    </div>
</div>

@endsection