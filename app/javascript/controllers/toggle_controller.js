import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  connect() {
  }
static targets = ["form"]

  show(event){
    this.formTarget.toggle()
  }
}
