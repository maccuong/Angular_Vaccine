import { Component, OnInit } from '@angular/core';
import { DanhSachGoivcineService } from '../Service/danh-sach-goivcine.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-danhsachgoivc2',
  templateUrl: './danhsachgoivc2.component.html',
  styleUrls: ['./danhsachgoivc2.component.css']
})
export class Danhsachgoivc2Component implements OnInit {
  data:[];
  constructor( private dsgoiVC: DanhSachGoivcineService,
    private router: Router,
    private route: ActivatedRoute) { }

  ngOnInit(): void {
    console.log(this.route.snapshot.params["idDanhMuc"]);
    this.dsgoiVC
      .getGoiVcByIdDanhMuc(this.route.snapshot.params["idDanhMuc"])
      .subscribe(
        (res: []) => {
          console.log(this.route.snapshot.params["idDanhMuc"]);
          this.data = res;
          console.log(this.data);
        },
        (err) => {
          console.log(err);
        }
      );
  }

}
