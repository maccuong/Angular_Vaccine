
import { ThanhtoanService } from './../Service/thanhtoan.service';
import { DonHang } from './../Models/donhang';
import { Component, OnInit, ViewChild } from '@angular/core';
import {MatAccordion} from '@angular/material/expansion';
import { ChitietdonhangSVService } from '../Service/chitietdonhang-sv.service';
import { GoiVcCuaGH } from '../Models/chitietGoivc_GH';
import { VaccineCuaGH } from '../Models/VaccineCuaGH';


@Component({
  selector: 'app-danhsachdonhangcua-kh',
  templateUrl: './danhsachdonhangcua-kh.component.html',
  styleUrls: ['./danhsachdonhangcua-kh.component.css']
})
export class DanhsachdonhangcuaKhComponent implements OnInit {
  @ViewChild(MatAccordion) accordion: MatAccordion;
  dh:DonHang[]=[];
  goivcList:GoiVcCuaGH[]=[];
  vacineList: VaccineCuaGH[]=[];
  idtk;
  constructor(private thanhtoanService: ThanhtoanService,private ctdonhangService: ChitietdonhangSVService) { }
  //this.ctdonhangService.GetTTGoiVaccineCuaDonHangList(this.route.snapshot.params["id_GioHang"]).subscribe(
  //  (res:[])=>{
  //    this.goivcList=res;
   //   console.log(res);
   // }
  //);
  ngOnInit(): void {
    this.idtk=localStorage.getItem("iD_TaiKhoanKH");
    this.thanhtoanService.GetDonHangList(this.idtk).subscribe(
      (res:DonHang[])=>{
          this.dh= res;
          console.log(this.dh);

      }
    );

  }


}
