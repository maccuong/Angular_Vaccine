import { MaterialModule } from "./material/material.module";
import { BrowserModule } from "@angular/platform-browser";
import { NgModule } from "@angular/core";
import { HttpClientModule, HTTP_INTERCEPTORS } from "@angular/common/http";
import { AppComponent } from "./app.component";
import { HomeComponent } from "./home/home.component";
import { AppRoutingModule } from "./app-routing.module";
import { RouterModule, Routes } from "@angular/router";
import { DanhsachGoiVaccineComponent } from "./danhsach-goi-vaccine/danhsach-goi-vaccine.component";
import { ChitietgoivcComponent } from "./chitietgoivc/chitietgoivc.component";
import { DashboardComponent } from "./dashboard/dashboard.component";
import { QuanlidsgoivaccineComponent } from "./quanlidsgoivaccine/quanlidsgoivaccine.component";
import { FormsModule, ReactiveFormsModule } from "@angular/forms";
import { CommonModule } from "@angular/common";
import { InputTextModule } from "primeng/inputtext";
import { TableModule } from "primeng/table";
import { ButtonModule } from "primeng/button";
import { ThemgoivcComponent } from "./themgoivc/themgoivc.component";
import { ToastrModule } from "ngx-toastr";
import { DropdownModule } from "primeng/dropdown";
import { InputTextareaModule } from "primeng/inputtextarea";
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { MatInputModule } from "@angular/material/input";
import { SuaGoivcComponent } from "./sua-goivc/sua-goivc.component";
import { LoginComponent } from "./login/login.component";
import { HttpInterceptorService } from "./services/http-interceptor.service";
import { ErrorInterceptorService } from "./services/error-interceptor.service";
import { FormThongtinKHComponent } from "./form-thongtin-kh/form-thongtin-kh.component";
import { GiohangComponent } from "./giohang/giohang.component";
import { FormgiohangComponent } from "./formgiohang/formgiohang.component";
import { ThanhtoanComponent } from "./thanhtoan/thanhtoan.component";
import { ThongtinngguoiTPComponent } from "./thongtinngguoi-tp/thongtinngguoi-tp.component";
import { CalendarModule } from "primeng/calendar";
import { VaccineFilterComponent } from "./vaccine-filter/vaccine-filter.component";
import { DanhsachvacinetycComponent } from "./danhsachvacinetyc/danhsachvacinetyc.component";
import { Danhsachgoivc1Component } from "./danhsachgoivc1/danhsachgoivc1.component";
import { Danhsachgoivc2Component } from "./danhsachgoivc2/danhsachgoivc2.component";
import { Danhsachgoivc3Component } from "./danhsachgoivc3/danhsachgoivc3.component";
import { Danhsachgoivc4Component } from "./danhsachgoivc4/danhsachgoivc4.component";
import { Danhsachgoivc5Component } from "./danhsachgoivc5/danhsachgoivc5.component";
import { ThankyouComponent } from './thankyou/thankyou.component';
import {MenuModule} from 'primeng/menu';
import {TabMenuModule} from 'primeng/tabmenu';
import { DanhsachdonhangcuaKhComponent } from './danhsachdonhangcua-kh/danhsachdonhangcua-kh.component';
import { ChitietdonhangkhComponent } from './chitietdonhangkh/chitietdonhangkh.component';
import { ChitietgiohangVaccineComponent } from './chitietgiohang-vaccine/chitietgiohang-vaccine.component';
import { ChitietvacineComponent } from './chitietvacine/chitietvacine.component';
import { HinhthucthanhtoanComponent } from './hinhthucthanhtoan/hinhthucthanhtoan.component';
import {ChartModule} from 'primeng/chart';
import { DoanhthutungayComponent } from './doanhthutungay/doanhthutungay.component';
import { ThongkeslvacineComponent } from './thongkeslvacine/thongkeslvacine.component';
import { LoginNhanvienComponent } from './login-nhanvien/login-nhanvien.component';




@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    DanhsachGoiVaccineComponent,
    ChitietgoivcComponent,
    DashboardComponent,
    QuanlidsgoivaccineComponent,
    ThemgoivcComponent,
    SuaGoivcComponent,
    LoginComponent,
    FormThongtinKHComponent,
    GiohangComponent,
    FormgiohangComponent,
    ThanhtoanComponent,
    ThongtinngguoiTPComponent,
    VaccineFilterComponent,
    DanhsachvacinetycComponent,
    Danhsachgoivc1Component,
    Danhsachgoivc2Component,
    Danhsachgoivc3Component,
    Danhsachgoivc4Component,
    Danhsachgoivc5Component,
    ThankyouComponent,
    DanhsachdonhangcuaKhComponent,
    ChitietdonhangkhComponent,
    ChitietgiohangVaccineComponent,
    ChitietvacineComponent,
    HinhthucthanhtoanComponent,
    DoanhthutungayComponent,
    ThongkeslvacineComponent,
    LoginNhanvienComponent,

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    MaterialModule,
    HttpClientModule,
    FormsModule,
    CommonModule,
    TableModule,
    InputTextModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    ButtonModule,
    ToastrModule.forRoot(),
    DropdownModule,
    InputTextareaModule,
    MatInputModule,
    CalendarModule,
    MenuModule,
    TabMenuModule,
    ChartModule
  ],
  providers: [
    {
      provide: HTTP_INTERCEPTORS,
      useClass: HttpInterceptorService,
      multi: true,
    },
    {
      provide: HTTP_INTERCEPTORS,
      useClass: ErrorInterceptorService,
      multi: true,
    },

  ],
  bootstrap: [AppComponent],
})
export class AppModule {}
