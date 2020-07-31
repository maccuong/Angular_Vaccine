import { GioHang_Vaccine } from "./../Models/giohang_vacine";
import { GioHang_Kh } from "./../Models/giohang_Kh";
import { of } from "rxjs";
import { Injectable } from "@angular/core";
import { HttpClient } from "@angular/common/http";
import { map, catchError, tap } from "rxjs/operators";
import { Observable } from "rxjs";
import { GioHang } from "../Models/giohang";

const apiUrl = "http://localhost:7059/api/GioHang/";
const apiUrl2 = "http://localhost:7059/api/GioHang";
const apiUrl1 = "http://localhost:7059/api/ChiTietGioHang";
const apiUr3 = "http://localhost:7059/api/GioHang/xoakhoigihang/";
const apiUr4 = "http://localhost:7059/api/GioHang/themvcvaogh/"; //http://localhost:7059/api/ctgvaccine/GetVaccineCtGh/
const apiUr5 = "http://localhost:7059/api/ctgvaccine/GetVaccineCtGh/";
const apiUr6 = "http://localhost:7059/api/GioHang/remove/";
const apiUr7 = "http://localhost:7059/api/GioHang/xoavckhoigihang/";
@Injectable({
  providedIn: "root",
})
export class GiohangService {
  private handleError<T>(operation = "operation", result?: T) {
    return (error: any): Observable<T> => {
      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }
  constructor(private http: HttpClient) {}

  GetGioHangList(): Observable<GioHang[]> {
    return this.http.get<GioHang[]>(apiUrl2).pipe(
      tap((gh: GioHang[]) => console.log(gh)),
      catchError(this.handleError("GetGioHangList", []))
    );
  }

  TaoGioHang(iD_TaiKhoanKH: number) {
    return this.http
      .post(apiUrl + `${iD_TaiKhoanKH}`, {}) //{iD_TaiKhoanKH}/{id_GoiVC}
      .pipe(
        map((response) => {
          return response;
        })
      );
  }
  addGoiVcToCart(iD_TaiKhoanKH: number, id_GoiVC: number,sluongs:number) {
    return this.http
      .post(apiUrl + `${iD_TaiKhoanKH}/${id_GoiVC}/${sluongs}`, {}) //{iD_TaiKhoanKH}/{id_GoiVC}
      .pipe(
        tap((gh) => console.log("them thanh cong")),
        catchError(this.handleError("addGoiVcToCart", []))
      );
  }
  GetTTGioHangList(iD_TaiKhoanKH: number) {
    return this.http.get<GioHang_Kh[]>(apiUrl + `${iD_TaiKhoanKH}`).pipe(
      tap((gh: GioHang_Kh[]) => console.log(gh)),
      catchError(this.handleError("GetTTGioHangList", []))
    );
  }

  DeleteGoiVcInGH(
    iD_TaiKhoanKH: number,
    id_GoiVC: number
  ): Observable<GioHang_Kh> {
    const URL = `${apiUrl}${iD_TaiKhoanKH}/${id_GoiVC}`;
    return this.http.delete<GioHang_Kh>(URL).pipe(
      tap((_) => console.log(`đã xóa gói vắc xin có id=${id_GoiVC}`)),
      catchError(this.handleError<any>("DeleteGoiVcInGH"))
    );
  }
  DeleteGoiVckhoiGH(
    iD_TaiKhoanKH: number,
    id_GoiVC: number
  ): Observable<GioHang_Kh> {
    const URL = `${apiUr3}${iD_TaiKhoanKH}/${id_GoiVC}`;
    return this.http.delete<GioHang_Kh>(URL).pipe(
      tap((_) => console.log(`đã xóa gói vắc xin có id=${id_GoiVC}`)),
      catchError(this.handleError<any>("DeleteGoiVcInGH"))
    );
  }
  //thêm vắc xin vào giỏ hàng
  addVaccineToCart(iD_TaiKhoanKH: number, id_Vaccine: number,sluongs:number) {
    return this.http
      .post(apiUr4 + `${iD_TaiKhoanKH}/${id_Vaccine}/${sluongs}`, {}) //{iD_TaiKhoanKH}/{id_GoiVC}
      .pipe(
        tap((gh) => console.log("them thanh cong vắc xin vào giỏ hàng")),
        catchError(this.handleError("addVaccineToCart", []))
      );
  }
  ///lấy danh sach vắc xin trong giỏ hàng
  GetTTVaccineInGioHangList(iD_TaiKhoanKH: number) {
    return this.http.get<GioHang_Vaccine[]>(apiUr5 + `${iD_TaiKhoanKH}`).pipe(
      tap((gh: GioHang_Vaccine[]) => console.log(gh)),
      catchError(this.handleError("GetTTVaccineInGioHangList", []))
    );
  }
  // giảm số lượng vắc xin trong giỏ hàng
  GiamSlVaccineInGH(
    iD_TaiKhoanKH: number,
    id_Vaccine: number
  ): Observable<GioHang_Vaccine> {
    const URL = `${apiUr6}${iD_TaiKhoanKH}/${id_Vaccine}`;
    return this.http.delete<GioHang_Vaccine>(URL).pipe(
      tap((_) => console.log(`đã giảm số lượng vắc xin có id=${id_Vaccine}`)),
      catchError(this.handleError<any>("GiamSlVaccineInGH"))
    );
  }
  /////xóa vắc xin khỏi giỏ hàng
  XoaVacinekhoiGH(
    iD_TaiKhoanKH: number,
    id_Vaccine: number
  ): Observable<GioHang_Kh> {
    const URL = `${apiUr7}${iD_TaiKhoanKH}/${id_Vaccine}`;
    return this.http.delete<GioHang_Kh>(URL).pipe(
      tap((_) => console.log(`đã xóa gói vắc xin có id=${id_Vaccine}`)),
      catchError(this.handleError<any>("XoaVacinekhoiGH"))
    );
  }
}
