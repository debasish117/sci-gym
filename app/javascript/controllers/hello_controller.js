import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // connect() {
  //   this.element.textContent = "Hello Soubhagya!"
  // }

  getPrice(event) {
    let planId = event.target.value;
    let price = "";
    JSON.parse(event.target.dataset.prices).some(function (arrayItem){
      if(arrayItem.hasOwnProperty(parseInt(planId))){
        price = arrayItem[planId];
        return true;
      }
    });
    document.getElementById("price").value = price;
  } 

  greet() {
    document.getElementById("set").innerHTML = "errorMsg"
    console.log(`Hello, ${this.name}!`)
  }

  
  get name() {
    return this.targets.find("name").value
  }
}
