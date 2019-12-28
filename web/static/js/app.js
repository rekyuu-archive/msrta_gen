// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import "phoenix_html"

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"
var count = 0
$(`.quest .goal_${count}`).fadeToggle(500);
$(".quest .goal").click(function() {
  $(`.quest .goal_${count}`).fadeToggle(500);
  count = count + 1;

  setTimeout(function() {
    $(`.quest .goal_${count}`).fadeToggle(500);
  },500)
});
$("a.shrinelink").click(function(e) {
  e = e || window.event
  //IE9 & Other Browsers
  if (e.stopPropagation) {
    e.stopPropagation();
  }
  //IE8 and Lower
  else {
    e.cancelBubble = true;
  }
})
