import { Component, OnInit } from '@angular/core';
import { DanhMuc } from "./../Models/DanhMuc";
import { DanhMucVaccineService } from "./../Service/danh-muc-vaccine.service";
import { DanhSachGoivcineService } from '../Service/danh-sach-goivcine.service';
import { Router, ActivatedRoute } from '@angular/router';
import { DanhsachGoiVaccine } from '../Models/danhsachgoivaccine';
@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  dmuc: DanhMuc[];
  data:DanhsachGoiVaccine[];
  constructor(private dmucService: DanhMucVaccineService,private router: Router,private dsgoiVC: DanhSachGoivcineService,private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.dmucService.GetDanhMucList().subscribe(
      (dmList: []) => {
        this.dmuc = dmList;
      },
      (err) => {
        console.log(err);
      }
    );
    this.dsgoiVC.getGoiVcByIdDanhMuc(1).subscribe(
      (res:DanhsachGoiVaccine[]) => {
        this.data = res;
        console.log(this.data);
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


