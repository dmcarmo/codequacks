import { Controller } from "@hotwired/stimulus"
import { Modal } from 'bootstrap';

// Connects to data-controller="duck-events"
export default class extends Controller {
  connect() {
    const buttons = document.querySelectorAll('.booking');
    buttons.forEach(btn => btn.addEventListener("click", function(e) {
      e.stopPropagation();
    }));
  
    const cards = document.querySelectorAll('.card-modal');
    cards.forEach(card => card.addEventListener("click", function(e) {
      const currentDuckId = e.currentTarget.id;
      const modal = new Modal(document.getElementById(`duckModal${currentDuckId}`));
      modal.show();
    }));
  }
}
