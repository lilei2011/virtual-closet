// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function() {
    $("#o_name").hide();
    
    $("#submit").click(function(){
      $("#o_name").show();
    })

    $( "#catalog" ).tabs();

    $( "#catalog li" ).draggable({
      
      helper: "clone"
    });
    $( "#canvas ol" ).droppable({
      activeClass: "ui-state-default",
      hoverClass: "ui-state-hover",
      accept: ":not(.ui-sortable-helper)",
      drop: function( event, ui ) {
        
        $( this ).find( ".placeholder" ).remove();
        $( "<li></li>" ).html( ui.draggable.html() ).appendTo( this );
        console.log(ui.draggable)
        img_id = ui.draggable.context.firstChild.id
        $('<input>').attr({
          type: 'hidden',
          value: img_id,
          name:  'item[]'
        }).appendTo('#canvas form');
        
      }
    }).sortable({
      items: "li:not(.placeholder)",
      sort: function() {
        // gets added unintentionally by droppable interacting with sortable
        // using connectWithSortable fixes this, but doesn't allow you to customize active/hoverClass options
        $( this ).removeClass( "ui-state-default" );
      }
  });
 });