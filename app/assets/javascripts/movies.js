// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).on( "pagecreate", "#moviesPage", function() {
	var movies;
	
    $.ajax({
        url: "/movies.json",
        dataType: "json",
        crossDomain: false
    }).then( function ( response ) {
		movies = response;
	});


    $( "#autocomplete" ).on( "filterablebeforefilter", function ( e, data ) {		
        var $ul = $( this ),
            $input = $( data.input ),
            value = $input.val(),
            html = "";
        $ul.html( "" );
        if ( value && value.length >= 1 ) {			
			var patt = new RegExp($input.val(), "i");
			$.each( movies, function (i, movie) {
				// TODO: this filtering should be done in SQL
				if (patt.test(movie.name)) {
					html += '<li><a href="/movies/' + movie.id + '">' + movie.name + '</a></li>';
				}
			});
            $ul.html( html );
            $ul.listview( "refresh" );
            $ul.trigger( "updatelayout");
        }
    });
});
