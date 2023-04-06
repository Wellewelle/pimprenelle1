import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["toggleCategories", "toggleInIndex", "onClick"]

  connect() {
    console.log("Hello from toggle_controller.js")
  }

  // toggle(event) {
  //   event.preventDefault()
  //   this.toggleCategoriesTarget.classList.toggle("d-none");
  // }

  toggle_in_index() {
    this.toggle_in_index.classList.toggle("d-none");
  }

  desactivation() {
    console.log("désactivation hello!")
    this.onClickTarget.classList.remove("active");
  }

  activation(event) {
    console.log("activation hello!")
    event.preventDefault()
    this.onClickTarget.classList.toggle("d-none")
  }
}
