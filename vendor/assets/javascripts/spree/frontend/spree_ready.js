Spree.ready(function ($) {

    if (!$('.floating-wpp').length){
        $('#whatsappButton').floatingWhatsApp({
            phone: '543518093505',
            popupMessage: 'Hola, ¿como te puedo ayudar?',
            message: "Hola gente de LaPile! quiero pregunatarles sobre ...",
            showPopup: false,
            showOnIE: false,
            headerTitle: 'Welcome!',
            headerColor: 'crimson',
            backgroundColor: 'crimson'
        });
    }

})
