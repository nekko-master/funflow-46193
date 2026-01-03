import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["list"]

  toggle() {
    this.listTarget.classList.toggle("hidden")

    this.element
      .querySelector(".secondary-button")
      .textContent =
        this.listTarget.classList.contains("hidden")
          ? "作成したプランを見る"
          : "プラン一覧を閉じる"
  }
}