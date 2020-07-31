import { VaccineService } from './../Service/vaccine.service';
import { Component, OnInit } from '@angular/core';
import { Vaccine } from '../Models/vaccine';
import { registerLocaleData } from "@angular/common";
import localeFr from "@angular/common/locales/fr";
registerLocaleData(localeFr, "fr");
@Component({
  selector: 'app-danhsachvacinetyc',
  templateUrl: './danhsachvacinetyc.component.html',
  styleUrls: ['./danhsachvacinetyc.component.css']
})
export class DanhsachvacinetycComponent implements OnInit {
  vacineList:[];
  constructor(private vcService:VaccineService) { }

  ngOnInit(): void {
    this.vcService.GetVaccineList().subscribe(
      (result:[])=>{
        this.vacineList=result;
      },
      (err)=>{
        console.log(err);
      }
    );
  }

}
