import { LoginNhanvienComponent } from './login-nhanvien/login-nhanvien.component';
import { DoanhthutungayComponent } from './doanhthutungay/doanhthutungay.component';
import { ThongkeslvacineComponent } from './thongkeslvacine/thongkeslvacine.component';
import { HinhthucthanhtoanComponent } from './hinhthucthanhtoan/hinhthucthanhtoan.component';
import { ChitietvacineComponent } from './chitietvacine/chitietvacine.component';
import { ThankyouComponent } from './thankyou/thankyou.component';
import { ThanhtoanComponent } from "./thanhtoan/thanhtoan.component";
import { Danhsachgoivc1Component } from "./danhsachgoivc1/danhsachgoivc1.component";
import { DanhsachvacinetycComponent } from "./danhsachvacinetyc/danhsachvacinetyc.component";
import { ThongtinngguoiTPComponent } from "./thongtinngguoi-tp/thongtinngguoi-tp.component";
import { FormgiohangComponent } from "./formgiohang/formgiohang.component";
import { FormThongtinKHComponent } from "./form-thongtin-kh/form-thongtin-kh.component";
import { AdminGuard } from "./guards/admin.guard";
import { KhachhangauthGuard } from "./guards/khachhangauth.guard";
import { LoginComponent } from "./login/login.component";
import { SuaGoivcComponent } from "./sua-goivc/sua-goivc.component";
import { ThemgoivcComponent } from "./themgoivc/themgoivc.component";

import { QuanlidsgoivaccineComponent } from "./quanlidsgoivaccine/quanlidsgoivaccine.component";
import { DashboardComponent } from "./dashboard/dashboard.component";
import { ChitietgoivcComponent } from "./chitietgoivc/chitietgoivc.component";
import { DanhsachGoiVaccineComponent } from "./danhsach-goi-vaccine/danhsach-goi-vaccine.component";
import { NgModule } from "@angular/core";
import { CommonModule } from "@angular/common";

import { Routes, RouterModule } from "@angular/router";
import { HomeComponent } from "./home/home.component";
import { Danhsachgoivc2Component } from "./danhsachgoivc2/danhsachgoivc2.component";
import { Danhsachgoivc3Component } from "./danhsachgoivc3/danhsachgoivc3.component";
import { Danhsachgoivc4Component } from "./danhsachgoivc4/danhsachgoivc4.component";
import { Danhsachgoivc5Component } from "./danhsachgoivc5/danhsachgoivc5.component";
import { DanhsachdonhangcuaKhComponent } from './danhsachdonhangcua-kh/danhsachdonhangcua-kh.component';


const routes: Routes = [
  {
    path: "",
    redirectTo: "/home", //themgoivc
    pathMatch: "full",
  },
  //{
   // path: "",
   // redirectTo: "/dsgoivc", //themgoivc
    //pathMatch: "full",//thongkevacxin
 // },
  {
    path: "dsgoivc",
    component: DanhsachGoiVaccineComponent,
  },
  {
    path: "loginnhanvien",
    component: LoginNhanvienComponent,
  },
  {
    path: "thongkevacxin",
    component: ThongkeslvacineComponent,
    canActivate: [AdminGuard],
  },
  {
    path: "doanhthutungay",
    component: DoanhthutungayComponent,
    canActivate: [AdminGuard],
  },
  {
    path: "dsgoivcchotreem/:idDanhMuc",
    component: Danhsachgoivc1Component,
  },
  {
    path: "dsgoivcchotretienhocduong/:idDanhMuc",
    component: Danhsachgoivc2Component,
  },
  {
    path: "chitietvacine/:id_Vaccine",
    component: ChitietvacineComponent,
  },
  {
    path: "dsgoivcchothanhnien/:idDanhMuc",
    component: Danhsachgoivc3Component,
  },
  {
    path: "dsgoivcchonguoitruongthanh/:idDanhMuc",
    component: Danhsachgoivc4Component,
  },
  {
    path: "dsgoivcchophunutienmangthai/:idDanhMuc",
    component: Danhsachgoivc5Component,
  },
  {
    path: "dsgoivctheoyeucau",
    component: DanhsachvacinetycComponent,
  },
  {
    path: "home",
    component: HomeComponent,
  },
  {
    path: "chitietgoivc/:id_GoiVC",
    component: ChitietgoivcComponent,
  },
  {
    path: "suagoivc/:id_GoiVC",
    component: SuaGoivcComponent,
    canActivate: [AdminGuard],
  },
  {
    path: "dashboard",
    component: DashboardComponent,
    canActivate: [AdminGuard],
  },
  {
    path: "loginKH",
    component: LoginComponent,
  },
  {
    path: "Giohang",
    component: FormgiohangComponent,
  },
  {
    path: "thankyou",
    component: ThankyouComponent,
  },
  {
    path: "thanhtoan",
    component: ThanhtoanComponent,
  },
  {
    path: "hinhthucthanhtoan/:idkh/:idghang",
    component: HinhthucthanhtoanComponent,
  },
  {
    path: "thongtintk",
    component: ThongtinngguoiTPComponent,
  },
  {
    path: "quanlidsgoivaccine",
    component: QuanlidsgoivaccineComponent,
    canActivate: [AdminGuard], //dsachvaccinetyc
  },
  {
    path: "themgoivc",
    component: ThemgoivcComponent,
    canActivate: [AdminGuard],
  },
  {
    path: "thongtinkh",
    component: FormThongtinKHComponent,//CtdhCuakhComponent
  },
  {
    path: "danhsachdonhang",
    component: DanhsachdonhangcuaKhComponent,
  },

];
@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes, { onSameUrlNavigation: "reload" }),
  ],
  exports: [RouterModule],
})
export class AppRoutingModule {}
