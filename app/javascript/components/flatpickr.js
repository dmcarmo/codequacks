import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const startDateInput = document.getElementById('booking_start_time');
const endDateInput = document.getElementById('booking_end_time');
if (startDateInput) {
  const unavailableDates = JSON.parse(document.querySelector('#duck-booking-dates').dataset.unavailable);
  flatpickr(".range_start", {
    "plugins": [rangePlugin({ input: ".range_end"})],
    minDate: "today",
    inline: true,
    disable: unavailableDates
  });
  const duckPricePerDay = document.getElementById("duck-price-per-day").innerText;
  const totalDays = document.getElementById("total-days");
  const totalPriceElement = document.getElementById("total-price");

  const dynamicPrice = () => {
    let dateDiffInMilliseconds = new Date(endDateInput.value) - new Date(startDateInput.value);
    let nbrOfDays = dateDiffInMilliseconds / 86400000;
    if(startDateInput.value && endDateInput.value) {
      totalDays.innerText = nbrOfDays
      totalPriceElement.innerText = nbrOfDays * duckPricePerDay
    }
  };

  [startDateInput, endDateInput].forEach(date => {
    date.addEventListener("change", (event) => {
      dynamicPrice();
    });
  });
};