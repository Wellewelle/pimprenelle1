import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-content"
export default class extends Controller {
  static targets = ["summary", "content", "button"]

  connect() {
    console.log("test001");
  }

  show(event) {
    event.preventDefault();
    this.summaryTarget.classList.toggle("d-none");
    this.contentTarget.classList.toggle("d-none");
    this.buttonTarget.classList.add("d-none");
  }
}
