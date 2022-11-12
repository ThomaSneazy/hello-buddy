import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "output1", "output2", "output3" ]

  connect() {

   this.output1Target.style.opacity = 0.4;
   this.output2Target.style.opacity = 0.4;
   this.output3Target.style.opacity = 0.4;

  }
}
