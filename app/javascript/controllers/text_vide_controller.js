import { Controller } from "@hotwired/stimulus"
import { textVide } from 'text-vide'
// import { textVide } from 'text-vide';

// Connects to data-controller="text-vide"
export default class extends Controller {
  static targets = ["text", "btnBio", "btnReset"]

  bionique() {
    this.btnBioTarget.classList.add("d-none")
    const allTexts = document.querySelectorAll("#story-content p")

    allTexts.forEach((paragraph) => {
      const highlightedText = textVide(paragraph.innerText);
      console.log(paragraph.innerText)
      paragraph.innerHTML = highlightedText.replaceAll('.', '.<br><br>');
      // paragraph.gsub('.', '.<br><br>').html_safe;
      // console.log(highlightedText.replace('.', '.<br><br>'))
    })

    this.btnResetTarget.classList.remove("d-none")
  }

  reset() {
    location.reload()
  }

}
