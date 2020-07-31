import { DanhSachGoivcineService } from "./../Service/danh-sach-goivcine.service";
import { DanhMucVaccineService } from "./../Service/danh-muc-vaccine.service";
import { Ttgoivc } from "./../../domain/ttgoivc";
import { DanhsachGoiVaccine } from "./../Models/danhsachgoivaccine";
import { GoivcList } from "./../Models/goivcList";
import { Component, OnInit } from "@angular/core";
import { Router } from "@angular/router";
import { ChitietgoivcineService } from "../Service/chitietgoivcine.service";
import { VaccineService } from "../Service/vaccine.service";
import { Vaccine } from "../Models/vaccine";
import {
  MatDialog,
  MatDialogRef,
  MAT_DIALOG_DATA,
} from "@angular/material/dialog";
import { FormGroup } from "@angular/forms";

@Component({
  selector: "app-quanlidsgoivaccine",
  templateUrl: "./quanlidsgoivaccine.component.html",
  styleUrls: ["./quanlidsgoivaccine.component.css"],
})
export class QuanlidsgoivaccineComponent implements OnInit {
  data: GoivcList[] = [];
  datavc: Vaccine[] = [];
  first = 0;
  rows = 5;

  constructor(
    private router: Router,
    private ctgvcSercive: ChitietgoivcineService,
    private vcService: VaccineService,
    private dialog: MatDialog,
    private dsgoivcSV: DanhSachGoivcineService
  ) {}

  ngOnInit(): void {
    this.ctgvcSercive.GetgoiVcList().subscribe(
      (res) => {
        this.data = res;
        console.log(this.data);
      },
      (err) => {
        console.log(err);
      }
    );
    this.vcService.GetVaccineList().subscribe(
      (res) => {
        this.datavc = res;
        console.log(this.datavc);
      },
      (err) => {
        console.log(err);
      }
    );
  }

  ext() {
    this.first = this.first + this.rows;
  }

  prev() {
    this.first = this.first - this.rows;
  }

  reset() {
    this.first = 0;
  }

  isLastPage(): boolean {
    return this.first === this.data.length - this.rows;
  }

  isFirstPage(): boolean {
    return this.first === 0;
  }
  chuyenquathemgoivc() {
    this.router.navigate(["/themgoivc"]);
  }
  deletegoivc(id: number) {
    if (confirm("Bạn có muốn xóa thông tin nhân viên này ?")) {
      this.dsgoivcSV.DeleteGoivc(id).subscribe(
        (res) => {
          this.ctgvcSercive.GetgoiVcList().subscribe(
            (res) => {
              this.data = res;
              console.log(this.data);
            },
            (err) => {
              console.log(err);
            }
          );

          this.router.navigate(["/quanlidsgoivaccine"]);
        },
        (err) => {
          console.log(err);
        }
      );
    }
  }
}
