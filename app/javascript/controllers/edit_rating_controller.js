import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-rating"
export default class extends Controller {
  static targets = ["upbtn", "dwnbtn"]
  connect() {
    console.log("Test001")
  }

  increase(event) {
    console.log("Increase Button");
    this.upbtnTarget.setAttribute("disabled", "");
    this.dwnbtnTarget.setAttribute("disabled", "");
  }

  decrease(event) {
    console.log("Decrease Button");
    this.upbtnTarget.setAttribute("disabled", "");
    this.dwnbtnTarget.setAttribute("disabled", "");
  }
}
