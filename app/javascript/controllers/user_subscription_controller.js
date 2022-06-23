import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { userId: Number }
  static targets = ["bell", "message"]

  connect() {

    this.channel = consumer.subscriptions.create(
      { channel: "UserChannel", id: this.userIdValue },
      { received: data => {
        if (data.count) {
          this.bellTarget.classList.remove('d-none')
          this.bellTarget.innerHTML = data.count
        }
        if (data.message) {
          // this.messageTarget.classList.add(data.message)
          window.location.reload()
        }

      }}
    )
    console.log(`Subscribe to the user with the id ${this.userIdValue}.`)
  }
}
