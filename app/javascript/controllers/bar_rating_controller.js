import { Controller } from "@hotwired/stimulus"
import "jquery-bar-rating";
// import "jquery-bar-rating/dist/themes/css-stars.css";
// Module parse failed: Unexpected token 

// Connects to data-controller="bar-rating"
export default class extends Controller {
  static targets = ["reviewRating"];

  connect() {
    this.reviewRatingTarget.barrating({
      theme: "css-stars",
      initialRating: 1,
      deselectable: false
    });
  }
}
