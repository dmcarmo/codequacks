import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startDate", "endDate" ]

  connect() {
    flatpickr(this.startDateTarget, {})
    flatpickr(this.endDateTarget, {})

    const startDateInput = document.getElementById('booking_start_date');
    const endDateInput = document.getElementById('booking_end_date');
    if (startDateInput) {
      const unavailableDates = JSON.parse(document.querySelector('#duck-booking-dates').dataset.unavailable);
      const picker = flatpickr(".range_start", {
        "plugins": [rangePlugin({ input: ".range_end"})],
        minDate: "today",
        inline: true,
        disable: unavailableDates
      });
      const duckPricePerDay = document.getElementById("duck-price-per-day").innerText;
      const totalDays = document.getElementById("total-days");
      const stringDays = document.getElementById("string-days");
      const totalCostElement = document.getElementById("total-cost");
      const submitButton = document.getElementById("submit_button");

      const dynamicPrice = () => {
        let dateDiffInMilliseconds = new Date(endDateInput.value) - new Date(startDateInput.value);
        let nbrOfDays = (dateDiffInMilliseconds / 86400000) + 1;
        if (startDateInput.value && endDateInput.value) {
          totalDays.innerText = nbrOfDays;
          stringDays.innerText = (nbrOfDays === 1) ? " day" : " days";
          totalCostElement.innerText = nbrOfDays * duckPricePerDay;
          submitButton.disabled = null;
        } else {
          submitButton.disabled = "disabled";
        }
      };

      [startDateInput, endDateInput].forEach(date => {
        date.addEventListener("change", (event) => {
          dynamicPrice();
        });
      });
      
      const clear = document.getElementById("clear_button");
      clear.addEventListener("click", function() {
        picker.clear();
        totalDays.innerText = 0;
        stringDays.innerText = " days";
        totalCostElement.innerText = 0;
      }, false);
    };
  }
}
