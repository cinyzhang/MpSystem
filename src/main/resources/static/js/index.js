//mouse悬浮列表样式
$('.list-group-item').mouseenter(function () {
    $(this).toggleClass('active')
}).mouseleave(function(){
    $(this).toggleClass('active',false)
})

