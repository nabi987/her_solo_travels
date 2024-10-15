import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["totalDays", "totalPrice", "startDate", "endDate", "price"]

  connect() {
      flatpickr(this.startDateTarget), {
        minDate: new Date().fp_incr(2),
        maxDate: new Date().fp_incr(364),
    }
      flatpickr(this.endDateTarget), {
        minDate: new Date().fp_incr(2),
        maxDate: new Date().fp_incr(364),
    }
  }
}