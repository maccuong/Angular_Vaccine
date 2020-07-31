import { doanhthutungay } from './../Models/doanhthutungay';
import { DoanhThu } from './../Models/doanhthu';
import { Injectable } from '@angular/core';
import { of } from "rxjs";
import { HttpClient } from "@angular/common/http";
import { map, catchError, tap } from "rxjs/operators";
import { Observable } from "rxjs";
import { ThongkeSLVaccine } from '../Models/thongkeslvacine';

//
const apiUrl = "http://localhost:7059/api/ThongKe";
const apiUrl1 = "http://localhost:7059/api/ThongKe/thongkeslvaccine";
const apiurl = "http://localhost:7059/api/ThongKe/thongkedthuDaytoDay/";

@Injectable({
  providedIn: 'root'
})
export class ThongKeService {

  private handleError<T>(operation = "operation", result?: T) {
    return (error: any): Observable<T> => {
      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }

  constructor(private http: HttpClient) { }

  DoanhThuTheoThang(): Observable<DoanhThu[]> {
    return this.http.get<DoanhThu[]>(apiUrl).pipe(
      tap((gh: DoanhThu[]) => console.log(gh)),
      catchError(this.handleError("GetGioHangList", []))
    );
  }

  DoanhThuSluongvaccinecon(): Observable<ThongkeSLVaccine[]> {
    return this.http.get<ThongkeSLVaccine[]>(apiUrl1).pipe(
      tap((gh: ThongkeSLVaccine[]) => console.log(gh)),
      catchError(this.handleError("DoanhThuSluongvaccinecon", []))
    );
  }
  DoanthuTuNgayDenNgay(ngaybd: Date, ngaykt:Date):Observable<doanhthutungay[]>{
    const URL = `${apiurl}/${ngaybd}/${ngaykt}`;
    return this.http.get<doanhthutungay[]>(URL).pipe(
      tap((gh: doanhthutungay[]) => console.log(gh)),
      catchError(this.handleError("DoanthuTuNgayDenNgay", []))
    );
  }
}
