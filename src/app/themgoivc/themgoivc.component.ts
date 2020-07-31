import { DanhMuc } from "./../Models/DanhMuc";
import { DanhsachGoiVaccine } from "./../Models/danhsachgoivaccine";
import { DanhMucVaccineService } from "./../Service/danh-muc-vaccine.service";
import { DanhSachGoivcineService } from "./../Service/danh-sach-goivcine.service";
import { Component, OnInit } from "@angular/core";
import { ToastrService } from "ngx-toastr";
import {
  FormGroup,
  FormBuilder,
  Validators,
  FormControl,
} from "@angular/forms";
import { Router, ActivatedRoute } from "@angular/router";
import { MatFormFieldModule } from "@angular/material/form-field";
@Component({
  selector: "app-themgoivc",
  templateUrl: "./themgoivc.component.html",
  styleUrls: ["./themgoivc.component.css"],
})
export class ThemgoivcComponent implements OnInit {
  dataGVC: DanhsachGoiVaccine[] = [];
  dataDMgvc: DanhMuc[] = [];
  tinhtrang: any[];
  loaigoi: any[];
  imgURL;
  files;

  formthemgoivc: FormGroup;
  id_GoiVC = 0;
  ma_GoiVC = "";
  idDanhMuc = 0;
  tenGoi = "";
  anhGoiVc = "";
  mota = "";
  tinhTrang = "";
  loaiGoi = "";
  doTuoiTiem = "";
  giaGoiTiem = "";
  constructor(
    private router: Router,
    public dsgvcService: DanhSachGoivcineService,
    private dmucvcSV: DanhMucVaccineService,
    private toastr: ToastrService,
    private formbuider: FormBuilder
  ) {
    this.tinhtrang = [{ code: "Còn hàng" }, { code: "Hết hàng" }];
    this.loaigoi = [{ code: "Gói cơ bản" }, { code: "Gói có Menactra" }];
  }

  ngOnInit(): void {
    this.dmucvcSV.GetDanhMucList().subscribe(
      (res) => {
        this.dataDMgvc = res;
      },
      (err) => {
        console.log(err);
      }
    );
    this.formthemgoivc = this.formbuider.group({
      id_GoiVaccine: [0],
      ma_GoiVC: [null, Validators.required],
      idDanhMuc: [0],
      tenGoi: [null, Validators.required],
      anhGoiVc: [null, Validators.required],
      mota: [null, Validators.required],
      tinhTrang: [null, Validators.required],
      loaiGoi: [null, Validators.required],
      doTuoiTiem: [null, Validators.required],
      giaGoiTiem: [null, Validators.required],
    });
  }
  onSubmitdh(fg: FormGroup) {
    console.log(fg);

    this.dsgvcService.AddGoiVC(fg).subscribe((res: any) => {
      this.router.navigate(["/quanlidsgoivaccine"]);
      //fg.setValue({ id_GoiVC: res.$key });
    });
  }
  successmsg() {
    this.toastr.success("Lưu thành công", "Success");
  }
  changPath(event) {
    //this.imgURL = a.replace("C:\\fakepath\\", "assets/images/");
    this.files = event.target.files;
    console.log(event.target.files);
    const reader = new FileReader();
    reader.readAsDataURL(event.target.files[0]);
    reader.onload = (myevent: ProgressEvent) => {
      this.imgURL = (myevent.target as FileReader).result;
    };
    this.imgURL = this.imgURL.replace("C:\\fakepath\\", "assets/images/");
  }
}
