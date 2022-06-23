import { Controller } from "stimulus"
import $ from 'jquery';

export default class extends Controller {
  static targets = [ "input" ]

  connect() {
      $('#review_rating').barrating({
        theme: 'css-stars'
      });

      }
}
