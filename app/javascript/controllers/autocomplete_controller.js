import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete"
export default class extends Controller {

  static targets = ["input", "results"];

  connect() {
  }

  search() {
    const query = this.inputTarget.value;

    if (query.length < 3) {
      this.resultsTarget.innerHTML = "";
      return;
    }

    fetch(`/stories?query=${query}`, {
      headers: { "Accept": "application/json" }
    })
      .then((response) => response.json())
      .then((stories) => {
        this.resultsTarget.innerHTML = this.generateResultsHtml(stories);
      });
  }

  generateResultsHtml(stories) {
    return stories.map((story) => {
      return `<li><a href="/stories/${story.id}">${story.title}</a></li>`;
    }).join('');
  }
}
