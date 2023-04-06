import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-content"
export default class extends Controller {
  static targets = ["summary", "content", "button", "bionicbtn"]
  static values = { id: Number }

  connect() {
    console.log("test001");
  }

  show(event) {
    event.preventDefault();
    this.summaryTarget.classList.toggle("d-none");
    this.contentTarget.classList.toggle("d-none");
    this.buttonTarget.classList.add("d-none");
    this.bionicbtnTarget.classList.remove("d-none");

    const id = this.idValue
    const url = `/stories/${id}/read_stories`
    fetch(url, {
      method: "POST",
      headers: { "Accept": "application/json", "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content },
    })
      .then(response => response.json())
      .then((data) => {
      })
  }
}
