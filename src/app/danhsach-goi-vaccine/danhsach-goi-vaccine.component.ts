import { goivacine_dmuc } from "./../Models/goivaccine_danhmuc";
import { DanhSachGoivcineService } from "../Service/danh-sach-goivcine.service";
import { Component, OnInit, Input } from "@angular/core";
import { DanhsachGoiVaccine } from "../Models/danhsachgoivaccine";
import { Router, ActivatedRoute } from "@angular/router";
import { delay } from "rxjs/operators";

@Component({
  selector: "app-danhsach-goi-vaccine",
  templateUrl: "./danhsach-goi-vaccine.component.html",
  styleUrls: ["./danhsach-goi-vaccine.component.css"],
})
export class DanhsachGoiVaccineComponent implements OnInit {
  data: [];

  constructor(
    private dsgoiVC: DanhSachGoivcineService,
    private router: Router,
    private route: ActivatedRoute
  ) {}

  ngOnInit(): void {
    this.dsgoiVC.GetGoiVaccineList().subscribe(
      (res: []) => {
        this.data = res;
        console.log(this.data);
      },
      (err) => {
        console.log(err);
      }
    );
  }
}
