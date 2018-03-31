$("document").ready(function() {
    //verifier q'une touche relaché
    $(".codepostal").keyup(function() {
        // si valeur du champs est egale a 5 pour lancer ajax
        if ($(this).val().length === 5) {
            $.ajax({
                type: 'get',
                //url: 'http://localhost/Ecommerce/web/app_dev.php/villes/' + $(this).val(),
                url: Routing.generate('villes', {codepostal:$(this).val()}),
                // traitement avant d'envoyer 
                beforeSend: function() {
                    if ($(".loading").length == 0) {
                        $("form .ville").parent().append('<div class="loading"></div>');
                    }
                },
                success: function(data) 
                // .ville c'est la classe
                        {
                // champs ville tu donne la valeur recuperé            
                    $(".ville").val(data.ville);
                    $(".loading").remove();
                }
            });
        } else {
            $(".ville").val('');
        }
    });
});