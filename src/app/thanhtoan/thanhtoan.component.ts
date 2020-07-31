import { ThanhtoanService } from './../Service/thanhtoan.service';
import { Validators } from "@angular/forms";
import { Component, OnInit } from "@angular/core";
import { GioHang_Kh } from "../Models/giohang_Kh";
import { GioHang_Vaccine } from "../Models/giohang_vacine";
import { AuthService } from "../Service/auth.service";
import { GiohangService } from "../Service/giohang.service";
import { FormGroup, FormBuilder } from "@angular/forms";
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: "app-thanhtoan",
  templateUrl: "./thanhtoan.component.html",
  styleUrls: ["./thanhtoan.component.css"],
})
export class ThanhtoanComponent implements OnInit {
  idkh;
  idghang:number;
  gh_kh: GioHang_Kh[] = [];
  gh_vc: GioHang_Vaccine[] = [];
  tongtien: number;
  tongsl: number;
  constructor(
    private authService: AuthService,

    private ghService: GiohangService,private router : Router,
    private formbuider: FormBuilder,private thanhtoanService:ThanhtoanService,private route: ActivatedRoute
  ) {}
  themDonMuahangForm: FormGroup;
  iD_PhieuDmOnline = 0;
  ma_PhieuDmOnline = "";
  hoTenNguoiDM = "";
  email_NguoiDM = "";
  sDT_NgDM = "";
  iD_TaiKhoanKH = 0;
  ngayDatMuaOL="";

  hoTen_NgLH1 = "";
  sDT_NgLH1 = "";
  hoTen_NgLH2 = "";
  sDT_NgLH2 = "";
  ngaySinhNguoiTiem = "";
  hotenNguoiTiem = "";
  gioiTinh_NguoiTIem = "";
  dT_NguoiTiem = "";
  id_GioHang="";
  tongTien = 0;
  ngOnInit(): void {
    this.idkh = localStorage.getItem("iD_TaiKhoanKH");
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
    this.themDonMuahangForm = this.formbuider.group({
      iD_PhieuDmOnline: [0],
      ma_PhieuDmOnline: [null, Validators.required],
      hoTenNguoiDM: [null, Validators.required],
      email_NguoiDM: [null, Validators.required],
      sDT_NgDM: [null, Validators.required],
      iD_TaiKhoanKH: [this.idkh],
      ngayDatMuaOL: [null, Validators.required],
      hoTen_NgLH1: [null, Validators.required],
      sDT_NgLH1: [null, Validators.required],
      hoTen_NgLH2: [null, Validators.required],
      sDT_NgLH2: [null, Validators.required],
      ngaySinhNguoiTiem: [null, Validators.required],
      hotenNguoiTiem: [null, Validators.required],
      gioiTinh_NguoiTIem: [null, Validators.required],
      dT_NguoiTiem: [null, Validators.required],
      id_GioHang: [0],
      tongTien: [null, Validators.required],
    });
  }

  getTotalPrice() {
    this.tongtien = 0;
    this.tongsl = 0;
    this.gh_kh.forEach((item) => {
      this.tongtien += item.tongTien +item.tongTien*0.15;
      this.tongsl += item.soLuong;
      this.idghang=item.id_GioHang;
    });
    this.gh_vc.forEach((item) => {
      this.tongtien += item.tongtien + item.tongtien*0.15;
      this.tongsl += item.soLuong;
      this.idghang=item.id_GioHang;
    });

  }
  onSubmit(fg: FormGroup) {
    console.log(fg);

    this.thanhtoanService.AddDonhang(fg).subscribe(
      (res:any) => {
       // this.router.navigate(['/danhsachdonhang']);
       console.log(fg);


       console.log("Thêm thành công");


      },
      (err)=>{
        console.log(err);
      }
    );
  }
}
