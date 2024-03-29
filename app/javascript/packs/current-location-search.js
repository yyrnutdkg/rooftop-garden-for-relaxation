document.addEventListener('turbolinks:load', () => {
  document.getElementById('btn-current-place').disabled = true;

  const currentLocationSearchButtun = document.getElementById('cur-loc-search')
  currentLocationSearchButtun.addEventListener('click', (e)=>{
    if(!navigator.geolocation) {
      alert('Geolocation is not supported by your browser');
   } else {
    navigator.geolocation.getCurrentPosition(success,fail);
   }
  });
})

function success(pos){
  const lat = pos.coords.latitude;
  const lng = pos.coords.longitude;
  document.getElementById('q_latitude').value = lat;
  document.getElementById('q_longitude').value = lng;
  document.getElementById('cur-loc-search').disabled = true;
  document.getElementById('btn-current-place').disabled = false;
}

function fail(pos){
  alert("現在地の取得に失敗しました");
}
