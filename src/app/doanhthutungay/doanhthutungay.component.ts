import { doanhthutungay } from './../Models/doanhthutungay';
import { Component, OnInit } from '@angular/core';
import { ThongkeSLVaccine } from './../Models/thongkeslvacine';
import { DoanhThu } from './../Models/doanhthu';

import { ThongKeService } from '../Service/thong-ke.service';
@Component({
  selector: 'app-doanhthutungay',
  templateUrl: './doanhthutungay.component.html',
  styleUrls: ['./doanhthutungay.component.css']
})
export class DoanhthutungayComponent implements OnInit {
  value1: Date;
  value2: Date;
  Doanhthutungay: doanhthutungay[];
  data:any;
doanhthu:number[];
sluongvacine:ThongkeSLVaccine[];
numbers = new Array();
datass:DoanhThu[];
cols: any[];
cols1:any[];
first = 0;
first1 = 0;
exportColumns: any[];
rows = 6;
rows1 = 5;
  constructor(private ThongKeSrvive: ThongKeService) { }

  ngOnInit(): void {

}
Thongke(){
  this.ThongKeSrvive.DoanthuTuNgayDenNgay(this.value1,this.value2).subscribe(
    (res:doanhthutungay[])=>{
      this.Doanhthutungay=res;
      console.log(this.Doanhthutungay);
    }
  );
}
}
