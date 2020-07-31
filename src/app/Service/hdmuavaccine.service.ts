import { DonHang } from './../Models/donhang';
import { Injectable } from '@angular/core';
import { HttpClient } from "@angular/common/http";
import { map, catchError, tap } from "rxjs/operators";
import { Observable, of } from "rxjs";



const apiUrl = "http://localhost:7059/api/MuaOnline/hoadonkh/";
@Injectable({
  providedIn: 'root'
})
export class HdmuavaccineService {

  private handleError<T>(operation = "operation", result?: T) {
    return (error: any): Observable<T> => {
      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }
  constructor(private http: HttpClient) { }


  GetDonHangByKh(idkh:number,idgh:number): Observable<DonHang> {
    const URL = `${apiUrl}${idkh}/${idgh}`;
    return this.http.get<DonHang>(URL).pipe(
      tap((res) => console.log(res)),
      catchError(
        this.handleError<DonHang>(`Lỗi`)
      )
    );
  }
}
