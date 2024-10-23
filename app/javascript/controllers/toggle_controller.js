import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {

  static targets = ["togglableElement"]
  fire(event) {
    this.togglableElementTarget.classList.toggle("d-none");
    event.currentTarget.classList.toggle("d-none");

  }
}
