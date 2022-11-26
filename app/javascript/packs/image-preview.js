window.previewImage = function(id){
    const target = this.event.target;
    const file = target.files[0];
    const reader = new FileReader();
    const preview = document.querySelector(`#${id}`);

    reader.addEventListener("load", function(){
      preview.src = reader.result;
    }, false);

    if(file){
      reader.readAsDataURL(file);
    }
}
