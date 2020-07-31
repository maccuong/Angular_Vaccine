import { TaiKhoanKH } from './../Models/thongtinTk';
import { ThongtinKH } from './../Models/thongtinkh';
import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from "@angular/router";
import { ToastrService } from "ngx-toastr";
import {
  FormGroup,
  FormBuilder,
  Validators,
  FormControl,
} from "@angular/forms";
import { ThongtinkhachhangService } from '../Service/thongtinkhachhang.service';

@Component({
  selector: 'app-thongtinngguoi-tp',
  templateUrl: './thongtinngguoi-tp.component.html',
  styleUrls: ['./thongtinngguoi-tp.component.css']
})
export class ThongtinngguoiTPComponent implements OnInit {
  idkh;
  matk;
 
  constructor( private router: Router, private toastr: ToastrService,
    private formbuider: FormBuilder,private thongtinKhService: ThongtinkhachhangService) { }
   formthemThongtinKH: FormGroup;
   iD_TKKH = 0;
   maTTKH = "";
   iD_TaiKhoanKH = "";
   sDT_TK = "";
   dchi_TK = "";
   hoTen_TK = "";
   gioitinh_TK = "";
   ngaySinh_ngTk = "";

  ngOnInit(): void {
    this.idkh = localStorage.getItem("iD_TaiKhoanKH");
    this.matk="";
  	this.formthemThongtinKH = this.formbuider.group({
      iD_TKKH: [0],
      maTTKH: [" ", Validators.required],
      iD_TaiKhoanKH: [this.idkh],
      sDT_TK: [null,Validators.required],
      dchi_TK: [null, Validators.required],
      hoTen_TK: [null, Validators.required],
      gioitinh_TK: [null, Validators.required],
      ngaySinh_ngTk: [null, Validators.required],

    });

  }
  onSubmit(fg: FormGroup){
    this.thongtinKhService.UpDateThongtintk(this.idkh,fg).subscribe(
      res => {


        this.router.navigate(['/thongtinkh']);
      },
      (err) => {
        console.log(err);

      }
    );
  }
  logout(){

  }
}
