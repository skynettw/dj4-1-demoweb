$(document).ready(function(){
    $('a#btn-vote').click(function() {
        pid = $(this).attr("pid");
        $.ajax({
            url: "/polls/votejs/"+pid+"/",
            success: function( result ) {
                if (result['vote']) {
                    alert("投"+ pid +"號1票，共" + result['vote'] + "票");
                    $("#votes-"+pid).html(result['vote']+"票");
                } else {
                    alert("要登入才能投票喔！");
                }
            },
        });
    }); 
})