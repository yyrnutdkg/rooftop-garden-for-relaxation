document.addEventListener('turbolinks:load', () => {
  const currentLocationSearchButtun = document.getElementById('cur-loc-search')
  currentLocationSearchButtun.addEventListener('click', ()=>{
    navigator.geolocation.getCurrentPosition(success,fail);
    //alert('test')
  });
})



function success(pos){
  const lat = pos.coords.latitude;
  const lng = pos.coords.longitude;

  $.ajax({
    url: "/places/index",
    type: "GET",
    data: {
      q: {
        latitude: lat,
        longitude: lng
      }
    },
    error: function(data){
      alert("現在地の取得に失敗しました");
    }
  });
}

function fail(pos){
  alert("現在地の取得に失敗しました");
}
