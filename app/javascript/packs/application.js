// <<<<<<< HEAD
import "bootstrap";
// <<<<<<< HEAD
// =======
// >>>>>>> b89a590e7c4f032ca50a89a9c8facfa33e767847
// begin plugin code
/*!
 * Moving Boxes v2.3.4
 * by Chris Coyier
 * https://css-tricks.com/moving-boxes/
 */
/*jshint browser:true, jquery:true */

// <<<<<<< HEAD
// =======
console.log("hello from application.js")

// >>>>>>> 35ffcce4d2f199b292291b1417e569498571be82
// =======
// >>>>>>> b89a590e7c4f032ca50a89a9c8facfa33e767847

// TEST==========================================================================================================
dragElement(document.getElementById("mydiv"));

function dragElement(elmnt) {
  var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;
  if (document.getElementById(elmnt.id + "header")) {
    // if present, the header is where you move the DIV from:
    document.getElementById(elmnt.id + "header").onmousedown = dragMouseDown;
  } else {
    // otherwise, move the DIV from anywhere inside the DIV:
    elmnt.onmousedown = dragMouseDown;
  }

  function dragMouseDown(e) {
    e = e || window.event;
    e.preventDefault();
    // get the mouse cursor position at startup:
    pos3 = e.clientX;
    pos4 = e.clientY;
    document.onmouseup = closeDragElement;
    // call a function whenever the cursor moves:
    document.onmousemove = elementDrag;
  }

  function elementDrag(e) {
    e = e || window.event;
    e.preventDefault();
    // calculate the new cursor position:
    pos1 = pos3 - e.clientX;
    pos2 = pos4 - e.clientY;
    pos3 = e.clientX;
    pos4 = e.clientY;
    // set the element's new position:
    elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
    elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
  }

  function closeDragElement() {
    // stop moving when mouse button is released:
    document.onmouseup = null;
    document.onmousemove = null;
  }
}
