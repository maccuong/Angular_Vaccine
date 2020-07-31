import { ThongkeSLVaccine } from './../Models/thongkeslvacine';
import { DoanhThu } from './../Models/doanhthu';
import { Component, OnInit } from '@angular/core';
import { ThongKeService } from '../Service/thong-ke.service';


@Component({
  selector: 'app-dashboard',
  templateUrl: './dashboard.component.html',
  styleUrls: ['./dashboard.component.css']
})
export class DashboardComponent implements OnInit {
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
  constructor(private ThongKeSrvive: ThongKeService) {

   }

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


    this.cols = [
      { field: 'thang', header: 'Tháng' },
      { field: 'soluonghd', header: 'Tổng số hóa đơn' },
      { field: 'doanhthu', header: 'Doanh Thu' },

  ];
  this.exportColumns = this.cols.map(col => ({title: col.header, dataKey: col.field}));
    this.ThongKeSrvive.DoanhThuTheoThang().subscribe(
      (res:DoanhThu[])=>{
        this.datass= res;
        console.log(this.datass);

      }
    );
    this.datass.forEach((item)=>{
     this.doanhthu.push(item.doanhthu);
    });
    console.log(this.numbers);
  this.data = {
    labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July','Eight','Nine','Ten','Ele',"twle"],
    datasets: [
        {
            label: 'My First dataset',
            backgroundColor: '#42A5F5',
            borderColor: '#1E88E5',
            data: [65, 59, 80, 81, 56, 55, 40]
        }
    ]
}
  }
  exportExcel() {
    import('xlsx').then(xlsx => {
        const worksheet = xlsx.utils.json_to_sheet(this.getCars());
        const workbook = { Sheets: { 'data': worksheet }, SheetNames: ['data'] };
        const excelBuffer: any = xlsx.write(workbook, { bookType: 'xlsx', type: 'array' });
        this.saveAsExcelFile(excelBuffer, "doanhthuthang");
    });
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
  getCars() {
  let carss = [];
  for(let car of this.datass) {
      car.doanhthu = car.doanhthu;
      carss.push(car);
  }
  return carss;
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

isLastPage(): boolean {
    return this.first === (this.datass.length - this.rows);
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
