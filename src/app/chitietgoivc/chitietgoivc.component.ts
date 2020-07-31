import { Observable } from 'rxjs';

import { ctgvaccine } from './../Models/ctgvaccine';
import { Component, OnInit } from '@angular/core';
import { DanhsachGoiVaccine } from '../Models/danhsachgoivaccine';
import { DanhSachGoivcineService } from '../Service/danh-sach-goivcine.service';
import { ActivatedRoute } from '@angular/router';
import { MatTableDataSource } from '@angular/material/table';
import { ChitietgoivcineService } from '../Service/chitietgoivcine.service';
import { GiohangService } from '../Service/giohang.service';


@Component({
  selector: 'app-chitietgoivc',
  templateUrl: './chitietgoivc.component.html',
  styleUrls: ['./chitietgoivc.component.css']
})
export class ChitietgoivcComponent implements OnInit {
   data: DanhsachGoiVaccine;
  datactgvc:  ctgvaccine[]=[];
  datas: MatTableDataSource<any>;
  sluong:number=1;
  iD_kh;
  displayedColumns: string[] = ['PhongBenh', 'TenVaccine', 'NuocSX','SoLieu'];
  constructor(private dsgoiVC: DanhSachGoivcineService, private route: ActivatedRoute,private ctgvc: ChitietgoivcineService,private ghService: GiohangService) { }

  ngOnInit(): void {
    this.iD_kh = localStorage.getItem("iD_TaiKhoanKH");
    this.dsgoiVC.getGoiVcByID(this.route.snapshot.params["id_GoiVC"]).subscribe(
      (res) => {
        this.data = res;
        console.log(this.data);
      },
      (err) => {
        console.log(err);
      }
    );
    this.ctgvc.getCtGoiVaccineByID(this.route.snapshot.params["id_GoiVC"]).subscribe(
      (arr) => {
      this.datactgvc=arr;
      //this.datas = new MatTableDataSource(this.datactgvc);
        console.log(arr);
      },
      (err) => {
        console.log(err);
      }
    );
  }

  addTocart(idgoivc:number) {
    if (idgoivc > 0) {
      this.ghService.addGoiVcToCart(this.iD_kh,idgoivc,this.sluong).subscribe(
        (tap) => {
          console.log("Thêm thành công");
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
