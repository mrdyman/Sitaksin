var sambung_titik = false;
var pilihangaris = new Array(); //
var hasil = new Array();
var garisx;
var str = "";

var point = [];

// fungsi untuk buat garis (polyline)
function buatGaris() {
  // KETIKA TOMBOL DI KLIK, CEK, APAKAH TULISAN TOMBOL = START?
  if (document.getElementById("btn").innerHTML == "Start") {
    // KALAU YA (TRUE) MAKA UBAH MODE KE ON
    mode = "on";
    // KOSOSNGKAN ARRAY YANG ADA DI VARIABEL PASANGAN TITIK
    pasangantitik.length = 0;
    // UBAH TULISAN TOMBOL MENJADI STOP
    document.getElementById("btn").innerHTML = "Stop";
  } else {
    // console.log("stop");
    mode = "off";
    document.getElementById("btn").innerHTML = "Start";
    var garis = new google.maps.Polyline({
      path: pasangantitik,
      strokeColor: "#FF00AA",
      strokeWeight: 5,
    });
    garis.setMap(map);
    pasangantitik.length = 0;
  }
}
//! ---------------------------------------------------------------------------------------
function sambungTitikManual() {
  var pilihangaris = {
    geodesic: true,
    strokeColor: "rgb(20, 120, 218)",
    strokeOpacity: 1.0,
    strokeWeight: 2,
    editable: true,
  };

  garisx = new google.maps.Polyline(pilihangaris);
  garisx.setMap(map);

  if (document.getElementById("sambungkan_manual").innerHTML == "Draw Polyline") {
    sambung_titik = true;
    document.getElementById("sambungkan_manual").innerHTML = "Klik untuk simpan dan berhenti ba sambung";
  } else {
    var gariss = new google.maps.Polyline({
      path: tempattitik,
      strokeColor: "#77DD77",
      strokeWeight: 5,
    });
    gariss.setMap(map);

    // hitung jarak dari titik awal ke titik tujuan dari polyline yang akan ditambahkan
    // satuan jarak = Meter
    var jarak = google.maps.geometry.spherical.computeLength(gariss.getPath());

    // ambil data polyline
    var titik_awal = srcToDes[0];
    var titik_tujuan = srcToDes[1];
    var mJalur = titik_awal + "-" + titik_tujuan;
    var mKoordinat = poly;
    var mJarak = jarak;

    // jalankan ajax untuk simpan polyline ke database
    $.ajax({
      url: "/polyline/store",
      method: "post",
      data: {
        tAwal: titik_awal,
        tTujuan: titik_tujuan,
        jalur: mJalur,
        koordinat: mKoordinat,
        jarak: mJarak,
      },
      dataType: "json",
      success: function (data) {
        console.log(data);
      },
      error: function () {
        console.log("have an error!");
      },
    });

    tempattitiklat = [];
    tempattitiklng = [];
    str = "";
    sambung_titik = false;
    tempattitik = [];
    srcToDes = []; //? titik awal dan titik tujuan dikosongkan kembali karena telah selesai menyambungkan 2 titik
    mkr = 0;
    document.getElementById("sambungkan_manual").innerHTML = "Draw Polyline";
  }
}
//! -----------------------------------------------------------------------------------

// script untuk tampilkan polyline
function tampilPolyline() {
  $.ajax({
    url: "/polyline/getPolyline",
    method: "post",
    dataType: "json",
    success: function (data) {
      var koor = data;
      i = 0;
      var latitude = [];
      var longitude = [];

      $.each(koor, function (key1, value1) {
        $.each(value1, function (key2, value2) {
          $.each(value2, function () {
            latitude[i] = koor[key1][key2]["lat"];
            longitude[i] = koor[key1][key2]["lng"];
            i++;
          });
        });
      });

      $.each(latitude, function (key1, value1) {
        var poly = [];
        $.each(value1, function (key2) {
          var pos = new google.maps.LatLng(latitude[key1][key2], longitude[key1][key2]);
          poly.push(pos);
          var garis = new google.maps.Polyline({
            path: poly,
            strokeColor: "#FF0000",
            strokeWeight: 5,
          });
          garis.setMap(map);
        });
      });
    },
    error: function () {
      console.log("Error 404");
    },
  });
}
