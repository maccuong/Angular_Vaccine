import { Component, OnInit } from '@angular/core';
import { DanhSachGoivcineService } from '../Service/danh-sach-goivcine.service';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-danhsachgoivc5',
  templateUrl: './danhsachgoivc5.component.html',
  styleUrls: ['./danhsachgoivc5.component.css']
})
export class Danhsachgoivc5Component implements OnInit {


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
