import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filtres"
export default class extends Controller {
  static targets = ["btnFantaisie", "stories", "2 à 5 ans", "5 à 8 ans", "8 à 10 ans", "10 à 12 ans", "12 ans et plus", "Romance", "Fantaisie", "Aventure", "Amitié", "Scien-Fiction", "Humour", "Pour s'endormir", "conte", "légende", "Fées", "Chevaliers", "Sorcières", "Magie", "Princes et Princesses", "Animaux", "Monstres", "Rêves", "5 minutes ou moins", "5 à 10 minutes", "10 à 15 minutes", "15 à 20 minutes", "20 minutes ou plus"]

  // tag: "fantaisie"

  connect() {
    console.log("Hello from filtres_controller.js")
  }

  search() {
    console.log("hello search")

    this.btnFantaisieTarget.classList.toggle("fantaisie");
    this.storiesTarget.classList.add("d-none");
    this.FantaisieTargets.forEach(element => {
      element.classList.toggle("d-none")
    });
  }
}
