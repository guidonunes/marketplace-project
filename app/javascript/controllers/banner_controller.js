import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"]

  connect() {
    this.currentIndex = 0;
    this.showBanner();
    setInterval(() => this.rotateBanner(), 5000); // Cambia cada 5 segundos
  }

  showBanner() {
    this.imageTargets.forEach((image, index) => {
      image.classList.toggle("active", index === this.currentIndex);
    });
  }

  rotateBanner() {
    this.currentIndex = (this.currentIndex + 1) % this.imageTargets.length;
    this.showBanner();
  }
}
