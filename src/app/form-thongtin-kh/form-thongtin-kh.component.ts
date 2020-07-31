import { TaiKhoanKH } from './../Models/thongtinTk';
import { AuthService } from "./../Service/auth.service";
import { Component, OnInit } from "@angular/core";
import { GioHang } from "../Models/giohang";
import { GiohangService } from "../Service/giohang.service";
import {MenuItem} from 'primeng/api';
import { ThongtinkhachhangService } from '../Service/thongtinkhachhang.service';

@Component({
  selector: "app-form-thongtin-kh",
  templateUrl: "./form-thongtin-kh.component.html",
  styleUrls: ["./form-thongtin-kh.component.css"],
})
export class FormThongtinKHComponent implements OnInit {
  items: MenuItem[];
  activeItem: MenuItem;
  gh: GioHang[] = [];
  idkh;
  tk;
  ngaytao: Date = new Date();
  ngay = this.ngaytao.getDay();
  thang = this.ngaytao.getMonth();
  nam = this.ngaytao.getFullYear();

  constructor(
    private authService: AuthService,
    private ghService: GiohangService,private thongtinkhService: ThongtinkhachhangService
  ) {}

  ngOnInit(): void {
    this.idkh= localStorage.getItem("iD_TaiKhoanKH");
    this.thongtinkhService.getThongTinTkID(this.idkh).subscribe(
      (res:TaiKhoanKH)=>{
        this.tk = res;
        console.log(res);
      }
    );
  }
  logout() {
    this.authService.logout();
  }
}
