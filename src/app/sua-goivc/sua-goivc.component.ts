import { Component, OnInit } from "@angular/core";
import { DanhMuc } from "./../Models/DanhMuc";
import { DanhsachGoiVaccine } from "./../Models/danhsachgoivaccine";
import { DanhMucVaccineService } from "./../Service/danh-muc-vaccine.service";
import { DanhSachGoivcineService } from "./../Service/danh-sach-goivcine.service";
import { ToastrService } from "ngx-toastr";
import {
  FormGroup,
  FormBuilder,
  Validators,
  FormControl,
  NgForm,
} from "@angular/forms";
import { Router, ActivatedRoute } from "@angular/router";
import { MatFormFieldModule } from "@angular/material/form-field";
@Component({
  selector: "app-sua-goivc",
  templateUrl: "./sua-goivc.component.html",
  styleUrls: ["./sua-goivc.component.css"],
})
export class SuaGoivcComponent implements OnInit {
  dataGVC: DanhsachGoiVaccine[] = [];
  dataDMgvc: DanhMuc[] = [];
  tinhtrang: any[];
  loaigoi: any[];
  imgURL;
  imgURL2: File;
  files;
  constructor(
    private router: Router,
    public dsgvcService: DanhSachGoivcineService,
    private dmucvcSV: DanhMucVaccineService,
    private toastr: ToastrService,
    private formbuider: FormBuilder,
    private route: ActivatedRoute
  ) {}

  ngOnInit(): void {
    this.dmucvcSV.GetDanhMucList().subscribe(
      (res) => {
        this.dataDMgvc = res;
      },
      (err) => {
        console.log(err);
      }
    );

    this.GetGoiVcByIds(this.route.snapshot.params["id_GoiVC"]);
    this.formSuagoivc = this.formbuider.group({
      id_GoiVaccine: [0],
      ma_GoiVC: [null, Validators.required],
      idDanhMuc: [0],
      tenGoi: [null, Validators.required],
     
      mota: [null, Validators.required],
      tinhTrang: [null, Validators.required],
      loaiGoi: [null, Validators.required],
      doTuoiTiem: [null, Validators.required],
      giaGoiTiem: [null, Validators.required],
    });
  }
  // tslint:disable-next-line:member-ordering
  formSuagoivc: FormGroup;
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
  
  successmsg() {
    this.toastr.success("Lưu thành công", "Success");
  }
  onBackDsGoivc() {
    this.router.navigate(["/quanlidsgoivaccine"]);
  }

  onSubmitForm(form: NgForm) {
    // formData.append("name", this.form.get('name').value);
    //formData.append("avatar", this.form.get('avatar').value);
    
    this.dsgvcService.UpDateGoivc(this.id_GoiVC, form).subscribe(
      (res) => {
        console.log(this.id_GoiVC);
        this.router.navigate(["/quanlidsgoivaccine"]);
      },
      (err) => {
        console.log(err);
      }
    );
  
  }

  changPath(event) {
    //this.imgURL = a.replace("C:\\fakepath\\", "assets/images/");
    this.files = event.target.files;
    const reader = new FileReader();
    reader.readAsDataURL(event.target.files[0]);
    reader.onload = (myevent: ProgressEvent) => {
      this.imgURL = (myevent.target as FileReader).result;
      //(event.target as HTMLInputElement).files[0];
    };
    this.imgURL = this.imgURL.replace("C:\\fakepath\\", "assets/images/");
    this.anhGoiVc = this.imgURL;
  }
  GetGoiVcByIds(id: number) {
    console.log(id);
    this.dsgvcService.getGoiVcByID(id).subscribe((data:DanhsachGoiVaccine) => {
      this.id_GoiVC = data.id_GoiVC;
      console.log(data.tinhTrang + "haha");
      this.imgURL = data.anhGoiVc;

      this.formSuagoivc.patchValue({
        id_GoiVC: data.id_GoiVC,
        ma_GoiVC: data.ma_GoiVC,
        idDanhMuc: data.idDanhMuc,
        tenGoi: data.tenGoi,
        anhGoiVc: data.anhGoiVc,
        mota: data.mota,
        tinhTrang: data.tinhTrang,
        loaiGoi: data.loaiGoi,
        doTuoiTiem: data.doTuoiTiem,
        giaGoiTiem: data.giaGoiTiem,
      });
    });
  }
}
