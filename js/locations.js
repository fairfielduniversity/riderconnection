(function ($) {
    var autocomplete, autocomplete_end, start_obj, end_obj, distanceService;
    function initialize() {
        distanceService = new google.maps.DistanceMatrixService();
        // Create the autocomplete object, restricting the search
        // to geographical location types.
        autocomplete = new google.maps.places.Autocomplete(
            (document.getElementById('location-start')),
            { types: ['geocode'] });
        autocomplete_end = new google.maps.places.Autocomplete(
            (document.getElementById('location-end')),
            {types: ['geocode']});
        google.maps.event.addListener(autocomplete, 'place_changed', function () {
            start_obj = autocomplete.getPlace();
        });
        google.maps.event.addListener(autocomplete_end, 'place_changed', function () {
            end_obj = autocomplete_end.getPlace();
        });
    }
    function findRidesNearBy(start, end, callback) {
        distanceService.getDistanceMatrix({
            origins: [start],
            destinations: [end],
            travelMode: google.maps.TravelMode.DRIVING,
            avoidHighways: false,
            avoidTolls: false,
            unitSystem: google.maps.UnitSystem.IMPERIAL
        }, callback);
    }
    function _submitRequest(distanceResponse, status) {
        console.log("from: " + start_obj.formatted_address);
        console.log("to: " + end_obj.formatted_address);
        console.log("distance: ");
        console.log(distanceResponse.rows[0].elements[0]);
    }
    //dom starts
    $(function () {
        initialize();
        $('#get-a-ride').on('click', function () {
            findRidesNearBy(start_obj.formatted_address, end_obj.formatted_address, _submitRequest);

        });
    });
}(jQuery));