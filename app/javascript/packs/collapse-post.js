document.addEventListener('turbolinks:load', () => {
  const numOfDisplayItems = 3;
  const moreViewPostsBtn = document.getElementById('post-more-view-btn');
  const lenghtOfdisplayItems = document.querySelectorAll('.card-of-post').length;
  if(lenghtOfdisplayItems <= numOfDisplayItems){
    moreViewPostsBtn.classList.add('is-hidden');
  }else{
    document.querySelectorAll(`.card-of-post:nth-child(n + ${numOfDisplayItems + 1})`).forEach(function(value){
      value.classList.add('is-hidden');
    })
  }

  moreViewPostsBtn.addEventListener('click', ()=>{
    const displayItems = document.querySelectorAll('.card-of-post.is-hidden');

    if(displayItems.length < numOfDisplayItems){
      for (let i= 0; i< displayItems.length; i++ ){
        displayItems[i].classList.remove('is-hidden');
      }
    }else{
      for (let i= 0; i< numOfDisplayItems; i++ ){
        displayItems[i].classList.remove('is-hidden');
      }
    }

    if (displayItems.length <= numOfDisplayItems){
      moreViewPostsBtn.classList.add('is-hidden');
    }
  });
})
