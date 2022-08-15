document.addEventListener('turbolinks:load', () => {
  const currentLocationSearchButtun = document.getElementById('cur-loc-search')
  currentLocationSearchButtun.addEventListener('click', ()=>{
    alert('test')
  });
})
