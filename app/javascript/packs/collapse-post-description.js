window.seeMoreDescription = function(id){
  // console.log('start');
  // console.log(id);

  // const seeMorePostDescription = document.getElementById(`read-more-${id}`);
  // const seeMorePostDescriptionBtn = document.getElementById(`post-description-more-btn-${id}`);

  // console.log(seeMorePostDescriptionBtn);
  // console.log(seeMorePostDescription);

  // seeMorePostDescription.classList.remove('is-hidden');
  // seeMorePostDescriptionBtn.classList.add('is-hidden');

  $(`#post-description-${id}`).replaceWith("<%= simple_format(post.description) %>");
}
