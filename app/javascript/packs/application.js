// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Internal imports, e.g:
import { initStarRating } from '../components/rating';
import { addDuckEvents } from '../components/modal-card';
import { typed } from'../components/typed';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initStarRating();
  addDuckEvents();
  typed();
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
  };
});
