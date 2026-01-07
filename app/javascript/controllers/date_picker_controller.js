import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  open() {
    // Chrome / Edge / Safari 対応
    if (this.element.showPicker) {
      this.element.showPicker()
    } else {
      // フォールバック（古いブラウザ）
      this.element.focus()
    }
  }
}
