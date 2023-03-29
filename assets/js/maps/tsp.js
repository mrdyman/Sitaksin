function showTsp() {
// $.ajax({
//     url: "/tsp/getTspResult",
//     method: "post",
//     dataType: "json",
//     success: function (data) {
//     var koor = data;
//     i = 0;
//     var latitude = [];
//     var longitude = [];

//     $.each(koor, function (key1, value1) {
//         $.each(value1, function (key2, value2) {
//         $.each(value2, function () {
//             latitude[i] = koor[key1][key2]["lat"];
//             longitude[i] = koor[key1][key2]["lng"];
//             i++;
//         });
//         });
//     });

//     $.each(latitude, function (key1, value1) {
//         var poly = [];
//         $.each(value1, function (key2) {
//         var pos = new google.maps.LatLng(latitude[key1][key2], longitude[key1][key2]);
//         poly.push(pos);
//         var garis = new google.maps.Polyline({
//             path: poly,
//             strokeColor: "#FF0000",
//             strokeWeight: 5,
//         });
//         garis.setMap(map);
//         });
//     });
//     },
//     error: function () {
//     console.log("Error 404");
//     },
// });


$.ajax({
    url: "/tsp/getRute",
    method: "post",
    dataType: "json",
    success: function (data) {
        console.log(data)
        $(".result-tsp").append(data.step);
    },
    error: function () {
        console.log("Something wrong!");
    },
});

}