import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["toggleCategories"]

  connect() {
    console.log("Hello from toggle_controller.js")
  }

  toggle() {
    this.toggleCategoriesTarget.classList.toggle("d-none");
  }
}
