import { Component, OnInit } from '@angular/core';

import { ThongkeSLVaccine } from './../Models/thongkeslvacine';
import { DoanhThu } from './../Models/doanhthu';

import { ThongKeService } from '../Service/thong-ke.service';
@Component({
  selector: 'app-thongkeslvacine',
  templateUrl: './thongkeslvacine.component.html',
  styleUrls: ['./thongkeslvacine.component.css']
})
export class ThongkeslvacineComponent implements OnInit {

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
    this.ThongKeSrvive.DoanhThuSluongvaccinecon().subscribe(
      (res:ThongkeSLVaccine[])=>{
        this.sluongvacine=res;
      }
    );
    this.cols1 = [
      { field: 'ma_Vaccine', header: 'Mã vắc xin' },
      { field: 'tenVaccine', header: 'Tên vắc xin' },
      { field: 'giaBan', header: 'Giá bán' },
      { field: 'sluongcon', header: 'Số lượng còn' },
      { field: 'slmua', header: 'Đã bán' }
  ];
  this.exportColumns = this.cols.map(col => ({title: col.header, dataKey: col.field}));
  }
  exportExcel1() {
    import('xlsx').then(xlsx => {
        const worksheet = xlsx.utils.json_to_sheet(this.getvacine());
        const workbook = { Sheets: { 'data': worksheet }, SheetNames: ['data'] };
        const excelBuffer: any = xlsx.write(workbook, { bookType: 'xlsx', type: 'array' });
        this.saveAsExcelFile(excelBuffer, "sluongvacine");
    });
  }
saveAsExcelFile(buffer: any, fileName: string): void {
  import('file-saver').then(FileSaver => {
      let EXCEL_TYPE = 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=UTF-8';
      let EXCEL_EXTENSION = '.xlsx';
      const data: Blob = new Blob([buffer], {
          type: EXCEL_TYPE
      });
      FileSaver.saveAs(data, fileName + '_export_' + new Date().getTime() + EXCEL_EXTENSION);
  });
}
getvacine() {
  let carss = [];
  for(let car of this.sluongvacine) {
      car.sluongcon = car.sluongcon;
      carss.push(car);
  }
  return carss;
}
  next() {
    this.first = this.first + this.rows;
}
  next1() {
  this.first1 = this.first1 + this.rows1;
  }

prev() {
    this.first = this.first - this.rows;
}
prev1() {
  this.first1 = this.first1 - this.rows1;
}

reset() {
    this.first = 0;
}
reset1() {
  this.first1 = 0;
}


isFirstPage(): boolean {
    return this.first === 0;
}
isLastPage1(): boolean {
  return this.first1 === (this.sluongvacine.length - this.rows1);
}

isFirstPage1(): boolean {
  return this.first1 === 0;
}

}
