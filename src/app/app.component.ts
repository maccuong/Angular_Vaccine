import { AuthenicationService } from "./services/authenication.service";
import { Component } from "@angular/core";
import { HomeComponent } from "./home/home.component";
import { NgModule } from "@angular/core";
import { Routes, RouterModule } from "@angular/router";
import { AuthService } from "./Service/auth.service";
import { GiohangService } from "./Service/giohang.service";
import { GioHang } from "./Models/giohang";

@Component({
  selector: "app-root",
  templateUrl: "./app.component.html",
  styleUrls: ["./app.component.css"],
})
export class AppComponent {
  title = "websiteVaccine";
  idkh: number;
  gh: GioHang[] = [];
  ngaytao: Date = new Date();
  ngay = this.ngaytao.getDay();
  thang = this.ngaytao.getMonth();
  nam = this.ngaytao.getFullYear();

  getgiohang() {
    this.ghService.GetGioHangList().subscribe(
      (res: GioHang[]) => {
        this.gh = res;
        console.log("lấy thành công danh sách giỏ hàng");
      },
      (err) => {
        console.log(err);
      }
    );
  }
  constructor(
    private authService: AuthService,
    private authenService: AuthenicationService,
    private ghService: GiohangService
  ) {
    if (!localStorage.getItem("authToken")) {
      this.authenService.setTempUserId();
    }
    this.authService.setThongTinKH();
  }
}
