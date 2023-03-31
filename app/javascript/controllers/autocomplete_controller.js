import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="autocomplete"
export default class extends Controller {

  static targets = ["input", "results"];

  connect() {
  }

  search() {
    const query = this.inputTarget.value;

    if (query.length < 1) {
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
      return `<div class="autocomplete_result">
                <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Mark Zuckerberg" class="autocomplete_vignette">
                <a class="autocomplete_story" href="/stories/${story.id}">${story.title}</a>
              </div>`;
    }).join('');
  }
}


{/* <article class="leaderboard__profile">
<img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Mark Zuckerberg" class="leaderboard__picture">
<span class="leaderboard__name">Mark Zuckerberg</span>
<span class="leaderboard__value">35.7<span>B</span></span>
</article>

<div class="autocomplete_results">
<img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Mark Zuckerberg" class="autocomplete_vignette">
<a class="autocomplete_story" href="/stories/${story.id}">${story.title}</a>
<span class="autocomplete_rating">35.7</span>
</div> */}
