import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="select"
export default class extends Controller {
  submit({ params }) {
    if (params.submitter) {
      this.element.requestSubmit(document.getElementById(params.submitter));
    } else {
      this.element.requestSubmit();
    }
  }
}
