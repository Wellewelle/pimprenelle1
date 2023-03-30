import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["toggleCategories", "toggleInIndex"]

  connect() {
    console.log("Hello from toggle_controller.js")
  }

  toggle() {
    event.preventDefault()
    this.toggleCategoriesTarget.classList.toggle("d-none");
  }

  toggle_in_index() {
    this.toggle_in_index.classList.toggle("d-none");
  }
}
