import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["action", "targetSelect"]
  static values = {
    targets: Array,
    actions: Array
  }

  connect() {
    this.updateTargets()
  }

  updateTargets() {
    const actionTypeId = this.actionTarget.value
    let filtered = this.targetsValue

    const action = this.actionsValue.find(
      a => String(a.id) === actionTypeId
    )

    if (!action) {
      this.renderOptions(filtered)
      return
    }

    switch (action.key) {
      case "ride":
        filtered = filtered.filter(t =>
          t.category === "attraction"
        )
        break

      case "dpa":
        filtered = filtered.filter(t =>
          ["attraction", "show", "parade"].includes(t.category) && t.dpa
        )
        break

      case "pp":
        filtered = filtered.filter(t =>
          t.category === "attraction" && t.pp
        )
        break

      case "entry":
        filtered = filtered.filter(t =>
          t.category === "show" && t.entry_request
        )
        break

      case "mobile_order":
        filtered = filtered.filter(t =>
          t.category === "restaurant" && t.mobile_order
        )
        break

      case "show":
        filtered = filtered.filter(t =>
          ["show", "parade"].includes(t.category)
        )
        break

      case "meal":
        filtered = filtered.filter(t =>
          t.category === "restaurant"
        )
        break
    }

    this.renderOptions(filtered)
  }

  renderOptions(targets) {
    this.targetSelectTarget.innerHTML =
      `<option value="">選択してください</option>` +
      targets.map(t =>
        `<option value="${t.id}">${t.name}</option>`
      ).join("")
  }

}