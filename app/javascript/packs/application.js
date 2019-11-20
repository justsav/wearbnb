import "bootstrap";
import { initFlatPicker } from "../plugins/flatpickr";
import { initUpdateNavbarOnScroll } from "../plugins/navbar";

const calendar = document.getElementById('date-picker');

if (calendar !== null) {
  initFlatPicker();
}

initUpdateNavbarOnScroll();
