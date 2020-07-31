import { HdmuavaccineService } from './../Service/hdmuavaccine.service';
import { DonHang } from './../Models/donhang';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { GiohangService } from '../Service/giohang.service';
import { GioHang_Kh } from '../Models/giohang_Kh';
import { GioHang_Vaccine } from '../Models/giohang_vacine';


@Component({
  selector: 'app-hinhthucthanhtoan',
  templateUrl: './hinhthucthanhtoan.component.html',
  styleUrls: ['./hinhthucthanhtoan.component.css']
})
export class HinhthucthanhtoanComponent implements OnInit {
  gh_kh: GioHang_Kh[] = [];
  gh_vc: GioHang_Vaccine[] = [];
  donhang:DonHang;
  tongtien: number;
  tongsl: number;


  //idkh,idghang
  constructor( private route: ActivatedRoute, private ghService: GiohangService,private hdonService:HdmuavaccineService) { }
  idkh=this.route.snapshot.params["idkh"];
  idgh=this.route.snapshot.params["idghang"];
  ngOnInit(): void {

    this.hdonService.GetDonHangByKh(this.idkh,this.idgh).subscribe(
      (res)=>{
        this.donhang= res;
        console.log(res);
      },
      (err) => {
        console.log(err);
      }
    );

    this.ghService.GetTTGioHangList(this.idkh).subscribe(
      (res) => {
        this.gh_kh = res;
        this.getTotalPrice();
        console.log(this.gh_kh);
      },
      (err) => {
        console.log(err);
      }
    );
    this.ghService.GetTTVaccineInGioHangList(this.idkh).subscribe(
      (res) => {
        this.gh_vc = res;
        console.log(res);
        this.getTotalPrice();
      },
      (err) => {
        console.log(err);
      }
    );
  }
  getTotalPrice() {
    this.tongtien = 0;
    this.tongsl = 0;
    this.gh_kh.forEach((item) => {
      this.tongtien += item.tongTien;
      this.tongsl += item.soLuong;

    });
    this.gh_vc.forEach((item) => {
      this.tongtien += item.tongtien;
      this.tongsl += item.soLuong;

    });
  }
}
