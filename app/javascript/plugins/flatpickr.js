import flatpickr from "flatpickr";

const initFlatPicker = () => {
  // console.log('im flatpicker')
  flatpickr("#date-picker", {
    mode: "range",
    minDate: "today"
  });
}

// export { initFlatPicker };
export { initFlatPicker };
