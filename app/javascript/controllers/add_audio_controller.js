import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-audio"
export default class extends Controller {
  static targets = ["addmore", "content"]
  connect() {
    console.log(this.addmoreTarget)
  }

  showform() {
    this.addmoreTarget.classList.add("d-none");
    this.contentTarget.classList.remove("d-none");
  }
}
