import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="autocomplete"
export default class extends Controller {
  static targets = ["input", "results"];

  connect() {}

  search() {
    const query = this.inputTarget.value;

    if (query.length < 1) {
      this.resultsTarget.innerHTML = "";
      return;
    }

    fetch(`/stories?query=${query}`, {
      headers: { Accept: "text/plain" },
    })
      .then((response) => response.text())
      .then((stories) => {
        this.resultsTarget.innerHTML = stories;
      });
  }

  // generateResultsHtml(stories) {
  //   return stories["stories"]
  //     .map((story) => {
  //       return `<div class="autocomplete_result">
  //     <%= cl_image_tag ${story.photo}, crop: :pad, class:"autocomplete_vignette", style:"height: 7rem;"  %>
  //     <a class="autocomplete_story" href="/stories/${story.id}">${story.title}</a>
  //             </div>`;
  //     })
  //     .join("");
  // }
}
