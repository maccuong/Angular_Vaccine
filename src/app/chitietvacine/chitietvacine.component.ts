import { Router } from '@angular/router';
import { ActivatedRoute } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { VaccineService } from '../Service/vaccine.service';
import { Vaccine } from '../Models/vaccine';
import { GiohangService } from '../Service/giohang.service';




@Component({
  selector: 'app-chitietvacine',
  templateUrl: './chitietvacine.component.html',
  styleUrls: ['./chitietvacine.component.css']
})
export class ChitietvacineComponent implements OnInit {
  vacine: Vaccine;
  sluong:number=1;
  iD_kh;
  constructor(private vaccineSv:VaccineService,private route: ActivatedRoute,private router:Router,private ghService: GiohangService) { }

  ngOnInit(): void {
    this.iD_kh = localStorage.getItem("iD_TaiKhoanKH");
    this.vaccineSv.getVaccineByID(this.route.snapshot.params['id_Vaccine']).subscribe(
      (res)=>{
        this.vacine=res;
      },
      (err)=>{
        console.log(err);
      }
    );
  }
  addTocart(id_VC:number) {
    if (id_VC > 0) {
      this.ghService.addVaccineToCart(this.iD_kh,id_VC,this.sluong).subscribe(
        (res) => {
          console.log("Thêm vắc xin vào giỏ hang thàng công");
        },
        (err) => {
          console.log(err);
        }
      );
    }
  }
 tangsoluong(){
   this.sluong +=1;
 }
 giamsoluong(){
   if(this.sluong>2){
    this.sluong -=1;
   }
   else
   {
     this.sluong=1;
   }

}
}
