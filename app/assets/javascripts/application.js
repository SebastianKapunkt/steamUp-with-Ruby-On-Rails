// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery3
//= require jquery_ujs

$(document).on("click", '#random_button', function() {
    var selected = $('#user_dropdown option').filter(':selected').val();

    $.ajax({
        url: "/users/" + userId + "/random", // Route to the Script Controller method
        type: "GET",
        dataType: "json",
        data: { requested_user: selected }, // This goes to Controller in params hash, i.e. params[:]
        complete: function() {},
        success: function(data, textStatus, xhr) {
            $('.content_row').html("<a href=\"/games/" + data.game.id + "\"><div class=\"content_box_child\"><div id=\"game_title\"></div><div id=\"game_id\"></div></div></a>");
            $('#game_title').html(data.game.title);
            $('#game_id').html(data.game.game_id);
        },
        error: function() {
            alert("Couldn't find game")
        }
    });
});