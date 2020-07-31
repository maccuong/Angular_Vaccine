import { DonHang } from './../Models/donhang';
import { Injectable } from '@angular/core';
import { delay } from 'rxjs/operators';
import { HttpClient,HttpHeaders } from '@angular/common/http';
import { Observable, of, throwError } from 'rxjs';
import { catchError, tap, map } from 'rxjs/operators';

const httpOptions = {
  headers: new HttpHeaders({ "Content-Type": "application/json" }),
};

const apiUrl =  "http://localhost:7059/api/MuaOnline";
const apiUrl1 =  "http://localhost:7059/api/MuaOnline/donhang_kh";

@Injectable({
  providedIn: 'root'
})
export class ThanhtoanService {

  constructor(private http: HttpClient) { }

  private handleError<T> (operation = 'operation', result?: T) {
    return (error: any): Observable<T> => {

      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }


  AddDonhang(donhang: any): Observable <DonHang>{
    //const hh= JSON.parse(hanghoa);
    return this.http.post<DonHang>(apiUrl,donhang,httpOptions).pipe(
      tap((hanghoas:DonHang)=> console.log(`Đã thêm đơn hàng`)),
      catchError(this.handleError<DonHang>(`AddDonhang`))
    ) ;
  }
  GetDonHangList(id:number): Observable<DonHang[]> {
    const URL = `${apiUrl1}/${id}`;
    return this.http.get<DonHang[]>(URL).pipe(
      tap(hh =>console.log('lấy thành công đơn hàng')),
      catchError(this.handleError('GetDonHangList', []))
    );
 }
}
