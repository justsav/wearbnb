import flatpickr from "flatpickr";

const initFlatPicker = () => {
  const calendar = document.getElementById('date-picker');
  const unavailableDates = JSON.parse(calendar.dataset.unavailableDates);

  // console.log('im flatpicker')
  flatpickr("#date-picker", {
    mode: "range",
    minDate: "today",
    disable: unavailableDates
  });
}

export { initFlatPicker };
