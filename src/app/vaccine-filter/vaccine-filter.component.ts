import { Router } from "@angular/router";
import { DanhMuc } from "./../Models/DanhMuc";
import { DanhMucVaccineService } from "./../Service/danh-muc-vaccine.service";
import { Component, OnInit } from "@angular/core";

@Component({
  selector: "app-vaccine-filter",
  templateUrl: "./vaccine-filter.component.html",
  styleUrls: ["./vaccine-filter.component.css"],
})
export class VaccineFilterComponent implements OnInit {
  dmuc: DanhMuc[];
  constructor(
    private dmucService: DanhMucVaccineService,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.dmucService.GetDanhMucList().subscribe(
      (dmList: []) => {
        this.dmuc = dmList;
      },
      (err) => {
        console.log(err);
      }
    );
  }
  ChuyenTrang(id: number) {
    if (id === 1) {
      this.router.navigateByUrl("/dsgoivcchotreem/" + id);
    }
    if (id === 2) {
      //
      this.router.navigateByUrl("/dsgoivcchotretienhocduong/" + id);
    }
    if (id === 3) {
      this.router.navigateByUrl("/dsgoivcchothanhnien/" + id);
    }
    if (id === 4) {
      this.router.navigateByUrl("/dsgoivcchonguoitruongthanh/" + id);
    }
    if (id === 5) {
      this.router.navigateByUrl("/dsgoivcchophunutienmangthai/" + id);
    }
    if (id === 6) {
      this.router.navigateByUrl("/dsgoivctheoyeucau");
    }
  }
}
