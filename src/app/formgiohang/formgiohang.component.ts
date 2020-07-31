import { GioHang_Vaccine } from "./../Models/giohang_vacine";
import { GiohangService } from "./../Service/giohang.service";
import { AuthService } from "./../Service/auth.service";
import { Component, OnInit } from "@angular/core";
import { GioHang_Kh } from "../Models/giohang_Kh";
import { registerLocaleData } from "@angular/common";
import localeFr from "@angular/common/locales/fr";
registerLocaleData(localeFr, "fr");
@Component({
  selector: "app-formgiohang",
  templateUrl: "./formgiohang.component.html",
  styleUrls: ["./formgiohang.component.css"],
})
export class FormgiohangComponent implements OnInit {
  idkh;
  gh_kh: GioHang_Kh[] = [];
  gh_vc: GioHang_Vaccine[] = [];
  tongtien: number;
  tongsl: number;
  sluong:number=1;
  constructor(
    private authService: AuthService,
    private ghService: GiohangService
  ) {}

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
  addtocart(id_gvc: number) {
    this.ghService.addGoiVcToCart(this.idkh, id_gvc,this.sluong).subscribe(
      (res) => {
        console.log("Một gói vắc xin đã được thêm vào giỏ hàng");
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
      },
      (err) => {
        console.log(err);
      }
    );
  }
  deleltetocart(id_gvc: number) {
    this.ghService.DeleteGoiVcInGH(this.idkh, id_gvc).subscribe((res) => {
      console.log("Đã xóa một gói vắc xin trong giỏ hàng");
      this.ghService.GetTTGioHangList(this.idkh).subscribe(
        (result) => {
          this.gh_kh = result;
          this.getTotalPrice();
          console.log("Đây là dòng số 69 component formgiohang");
        },
        (err) => {
          console.log(err);
        }
      );
    });
  }
  xoakhoigiohang(id_gvc: number) {
    if (confirm("Bạn có muốn xóa gói vắc xin này khỏi giỏ hàng này ?")) {
      this.ghService.DeleteGoiVckhoiGH(this.idkh, id_gvc).subscribe((res) => {
        console.log("Đã xóa một gói vắc xin khỏi giỏ hàng");
        this.ghService.GetTTGioHangList(this.idkh).subscribe(
          (result) => {
            this.gh_kh = result;
            this.getTotalPrice();
            console.log("Đây là dòng số 87 component formgiohang");
          },
          (err) => {
            console.log(err);
          }
        );
      });
    }
  }
  //giảm số lượng vắc xin trong giỏ hàng
  giamSluongVcGH(idvc: number) {
    console.log(idvc);
    this.ghService.GiamSlVaccineInGH(this.idkh, idvc).subscribe(
      (result) => {
        console.log("đã giảm số lượng vắc xin thành công");
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
      },
      (err) => {
        console.log(err);
      }
    );
  }
  xoaVcKhoiGioHang(idvc: number) {
    if (confirm("Bạn có muốn xóa vắc xin này khỏi giỏ hàng này ?")) {
      this.ghService.XoaVacinekhoiGH(this.idkh, idvc).subscribe(
        (res) => {
          console.log("đã xóa vắc xin trong giỏ hàng thành công");
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
        },
        (err) => {
          console.log(err);
        }
      );
    }
  }
  //thêm vắc xin vào giỏ hàng
  addVcToCart(idvc: number) {
    this.ghService.addVaccineToCart(this.idkh, idvc,this.sluong).subscribe(
      (res) => {
        console.log("Đã thêm vắc xin vào giỏ hàng");
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
      },
      (err) => {
        console.log(err);
      }
    );
  }
  logout() {
    this.authService.logout();
  }
  //xóa vắc xin khõi giỏ hàng
}
