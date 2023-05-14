const bigImg =document.querySelector(".img-big img")
const smImg =document.querySelectorAll(".img-sm img")
smImg.forEach(function(imgItem,x){
    imgItem.addEventListener("click",function(){
        bigImg.src=imgItem.src
    })
})