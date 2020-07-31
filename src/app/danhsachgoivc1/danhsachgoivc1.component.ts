import { Component, OnInit } from '@angular/core';
import { DanhSachGoivcineService } from '../Service/danh-sach-goivcine.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-danhsachgoivc1',
  templateUrl: './danhsachgoivc1.component.html',
  styleUrls: ['./danhsachgoivc1.component.css']
})
export class Danhsachgoivc1Component implements OnInit {
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
