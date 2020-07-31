import { GoiVcCuaGH } from './../Models/chitietGoivc_GH';
import { Injectable } from '@angular/core';
import { VaccineCuaGH } from '../Models/VaccineCuaGH';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { tap, catchError } from 'rxjs/operators';


const apiUrl =  "http://localhost:7059/api/ChiTietDonHang/vaccineCuaGH/";
const apiUrl1 =  "http://localhost:7059/api/ChiTietDonHang/";
@Injectable({
  providedIn: 'root'
})
export class ChitietdonhangSVService {

  constructor(private http: HttpClient) { }

  private handleError<T> (operation = 'operation', result?: T) {
    return (error: any): Observable<T> => {

      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }

  GetTTVaccineCuaDonHangList(iD_GioHang: number) {
    return this.http.get<VaccineCuaGH[]>(apiUrl + `${iD_GioHang}`).pipe(
      tap((gh: VaccineCuaGH[]) => console.log(gh)),
      catchError(this.handleError("GetTTVaccineCuaDonHangList", []))
    );
  }



  GetTTGoiVaccineCuaDonHangList(iD_GioHang: number) {
    return this.http.get<GoiVcCuaGH[]>(apiUrl1 + `${iD_GioHang}`).pipe(
      tap((gh: GoiVcCuaGH[]) => console.log(gh)),
      catchError(this.handleError("GetTTGoiVaccineCuaDonHangList", []))
    );
  }

}
