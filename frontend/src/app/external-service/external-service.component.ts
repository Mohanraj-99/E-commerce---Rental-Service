import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-external-service',
  templateUrl: './external-service.component.html',
  styleUrls: ['./external-service.component.css']
})
export class ExternalServiceComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  goToUrl(){
    window.location.href = "http://localhost:8501";
  }
  goToUrl2(){
    window.location.href = "http://localhost:8502";
  }
 

}
