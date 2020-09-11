Spree.ready(function ($) {

    if (!$('.floating-wpp').length){
        $('#whatsappButton').floatingWhatsApp({
            phone: '543517502749',
            popupMessage: 'Hola, ¿como te puedo ayudar?',
            message: "Hola gente de LaPile! me comunico para...",
            showPopup: false,
            showOnIE: false,
            headerTitle: 'Welcome!',
            headerColor: 'crimson',
            backgroundColor: 'crimson'
        });
    }

})
