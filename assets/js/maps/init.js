function initMap() {
    var mapOptions = {

        center: { lat: -0.836261, lng: 119.893715 },
        zoom: 17,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
    };

    // tampilkan maps
    map = new google.maps.Map(document.getElementById("map"), mapOptions);

    google.maps.event.addListener(map, "click", function (event) {
        if (sambung_titik == true) {
            if (tempattitik == 0) {
            alert("Tentukan Titik Awal!");
            } else {
            tempattitik[0] = garisx.getPath();
            tempattitik.push(event.latLng);
            console.log(tempattitik);
    
            poly.push(event.latLng.lat() + "," + event.latLng.lng());
            console.log(poly);
            }
        } else {
            alert("Posisi Kordinat : " + event.latLng);
        }
    });

    // Variabel untuk menyimpan batas kordinat
    var bounds = new google.maps.LatLngBounds();

    $.ajax({
        url: "/taksin/getMarker",
        method: "post",
        dataType: "json",
        success: function (data) {
            console.log(data);
            for (var i = 0; i < data.length; i++) {
                displayLocation(data[i]);
            }
        },
    });
}

function displayLocation(location) {
    var geocoder = new google.maps.Geocoder();
    var infowindow = new google.maps.InfoWindow();
    var content = '<div class="infoWindow"><strong>' + location.nama_gedung + "</strong>" + "<br/>" + location.latitude + "<br/>" + location.longitude + "</div>";

    if (parseInt(location.lat) == 0) {
        geocoder.geocode({ address: location.address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
            var marker = new google.maps.Marker({
                map: map,
                // icon: icon,
                position: results[0].geometry.location,
                title: location.name,
            });
    
            google.maps.event.addListener(marker, "click", function () {
                infowindow.setContent(content);
                infowindow.open(map, marker);
            });
            }
        });
    } else {
        var position = new google.maps.LatLng(parseFloat(location.latitude), parseFloat(location.longitude));
        var marker = new google.maps.Marker({
            map: map,
            // icon: icon,
            position: position,
            title: location.name,
        });
    
        google.maps.event.addListener(marker, "click", function (event) {
            infowindow.setContent(content);
            infowindow.open(map, marker);
            if (sambung_titik == true) {
            mkr += 1;
            if (mkr > 2) {
                alert("cuma boleh 2 titik! silahkan sambung ulang titiknya yah.");
                tempattitik = [];
            }
            srcToDes.push(location.id);
            poly.push(event.latLng.lat() + "," + event.latLng.lng());
            }
            // setting warna garis untuk menghubungkan 2 titik
            var pilihangaris = {
            geodesic: true,
            strokeColor: "rgb(20, 120, 218)",
            strokeOpacity: 1.0,
            strokeWeight: 2,
            editable: true,
            };
    
            var indexLength = tempattitik.length;
            var indexLast = indexLength - 1;
    
            if (sambung_titik == true) {
            if (tempattitik != 0) {
                alert("Titik Berhasil Disambuung ceunah!");
                gambargaris = new google.maps.Polyline(pilihangaris);
                gambargaris.setMap(map);
                tempattitik[indexLast] = gambargaris.getPath();
    
                tempattitik.push(event.latLng);
            } else {
                gambargaris = new google.maps.Polyline(pilihangaris);
                gambargaris.setMap(map);
                tempattitik = gambargaris.getPath();
    
                tempattitik.push(event.latLng);
            }
            }
        });
    }
}

function mycallback(){
    //
}