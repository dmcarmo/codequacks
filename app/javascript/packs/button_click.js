$(".booking").on("click", function(e) {
    console.log("CLICK!");
    console.log(e);
    e.stopPropagation();
});