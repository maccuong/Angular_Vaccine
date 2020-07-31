import { Injectable } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';
import { HttpClient,HttpHeaders } from '@angular/common/http';
import { Observable, of, throwError } from 'rxjs';
import { catchError, tap, map } from 'rxjs/operators';
import { TaiKhoanKH } from '../Models/thongtinTk';

const httpOptions = {
  headers: new HttpHeaders({'Content-Type': 'application/json'})
};
const apiUrl =  "http://localhost:7059/api/ThongTinTaiKhoan";
//TaiKhoanKH
//ThongTinTaiKhoan
@Injectable({
  providedIn: 'root'
})
export class ThongtinkhachhangService {


    private handleError<T> (operation = 'operation', result?: T) {
      return (error: any): Observable<T> => {

        // TODO: send the error to remote logging infrastructure
        console.error(error); // log to console instead

        // Let the app keep running by returning an empty result.
        return of(result as T);
      };
    }
  constructor(private http: HttpClient) { }
  UpDateThongtintk(id: number, thongtintaikh: any):Observable<any>{
    const URL = `${apiUrl}/${id}`;
    return this.http.put(URL,thongtintaikh,httpOptions).pipe(
      tap(_=> console.log(`cập nhật thông tin tài khoản=${id}`)),
      catchError(this.handleError<any>('UpDateThongtintk'))
    );
  }
  getThongTinTkID(id: number): Observable<TaiKhoanKH>{
    const URL = `${apiUrl}/${id}`;
    return this.http.get<TaiKhoanKH>(URL).pipe(
      tap(res=> console.log(res)),
      catchError(this.handleError<TaiKhoanKH>(`GetDonHang id=${id}`))
    );
  }
}
