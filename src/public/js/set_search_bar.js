// SEARCH_BAR
function set_search_bar() {
  let search_bar = document.getElementById("search--bar");
  let style = window.getComputedStyle(search_bar);
  let animation = style.animationName;
  search_bar.style.display = "flex";

  if (animation == "fade-out") {
    search_bar.style.animationName = "fade-in";
  } else if (animation == "fade-in") {
    search_bar.style.animationName = "fade-out";
  } else {
    search_bar.style.animationName = "fade-in";
  }
}
