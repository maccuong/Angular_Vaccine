import { GiohangService } from "./../Service/giohang.service";
import { Component, OnInit, Input } from "@angular/core";
import { DanhsachGoiVaccine } from "../Models/danhsachgoivaccine";

@Component({
  selector: "app-giohang",
  templateUrl: "./giohang.component.html",
  styleUrls: ["./giohang.component.css"],
})
export class GiohangComponent implements OnInit {
  @Input() id_GoiVC;
  @Input() id_VC;
  iD_kh;
  sluong:number=1;
  constructor(private ghService: GiohangService) {}

  ngOnInit(): void {
    this.iD_kh = localStorage.getItem("iD_TaiKhoanKH");
  }
  addTocart() {
    if (this.id_GoiVC > 0) {
      this.ghService.addGoiVcToCart(this.iD_kh, this.id_GoiVC,this.sluong).subscribe(
        (tap) => {
          console.log("Thêm thành công");
        },
        (err) => {
          console.log(err);
        }
      );
    } else if (this.id_VC > 0) {
      this.ghService.addVaccineToCart(this.iD_kh, this.id_VC,this.sluong).subscribe(
        (res) => {
          console.log("Thêm vắc xin vào giỏ hang thàng công");
        },
        (err) => {
          console.log(err);
        }
      );
    }
  }
}
