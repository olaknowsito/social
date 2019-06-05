$(document).ready(function() {
    // ajaax call will submit the form for us
    //button for  profile post
    
    $('#submit_profile_post').click(function(){
        console.log('success');
        $.ajax({
            type: "POST",
            url: "includes/handlers/ajax_submit_profile_post.php",
            data: $('form.profile_post').serialize(),
            success: function(msg) {
                // alert(msg);
                $("#post_form").modal('hide');
                location.reload();
            },
            error: function() {
                alert('failure');
            }
        });
    });
});