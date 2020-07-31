import { Vaccine } from "./../Models/vaccine";

import { Injectable } from "@angular/core";
import { delay } from "rxjs/operators";
import { FormGroup, FormControl, Validators } from "@angular/forms";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable, of, throwError } from "rxjs";
import { catchError, tap, map } from "rxjs/operators";

const httpOptions = {
  headers: new HttpHeaders({ "Content-Type": "application/json" }),
};

const apiUrl = "http://localhost:7059/api/Vaccines";

@Injectable({
  providedIn: "root",
})
export class VaccineService {
  constructor(private http: HttpClient) {}

  private handleError<T>(operation = "operation", result?: T) {
    return (error: any): Observable<T> => {
      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }

  GetVaccineList(): Observable<Vaccine[]> {
    return this.http.get<Vaccine[]>(apiUrl).pipe(
      tap((hh) => console.log("lấy thành công danh sách vaccine")),
      catchError(this.handleError("GetVaccineList", []))
    );
  }
  getVaccineByID(id: number): Observable<Vaccine> {
    const URL = `${apiUrl}/${id}`;
    return this.http.get<Vaccine>(URL).pipe(
      tap((res) => console.log(res)),
      catchError(
        this.handleError<Vaccine>(`Lấy thành công vaccine có mã id=${id}`)
      )
    );
  }
  AddVaccine(vaccine: any): Observable<Vaccine> {
    //const hh= JSON.parse(hanghoa);
    return this.http.post<Vaccine>(apiUrl, vaccine, httpOptions).pipe(
      delay(3000),
      tap((vaccines: Vaccine) =>
        console.log(`Đã thêm hàng hóa id=${vaccines.id_Vaccine}`)
      )
    );
  }

  UpDateVaccine(id: number, vcine: any): Observable<any> {
    const URL = `${apiUrl}/${id}`;
    return this.http.put(URL, vcine, httpOptions).pipe(
      delay(4000),
      tap((_) => console.log(`update vaccine id=${id}`)),
      catchError(this.handleError<any>("UpDateVaccine"))
    );
  }
  
  DeleteVaccine(id: number): Observable<Vaccine> {
    const URL = `${apiUrl}/${id}`;
    return this.http.delete<Vaccine>(URL, httpOptions).pipe(
      delay(1000),
      tap((_) => console.log(`đã xóa hàng hóa id=${id}`)),
      catchError(this.handleError<any>("DeleteVaccine"))
    );
  }
}
