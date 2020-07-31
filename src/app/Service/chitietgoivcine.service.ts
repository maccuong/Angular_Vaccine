import { Injectable } from "@angular/core";
import { delay } from "rxjs/operators";
import { FormGroup, FormControl, Validators } from "@angular/forms";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable, of, throwError } from "rxjs";
import { catchError, tap, map } from "rxjs/operators";
import { GoivcList } from "../Models/goivcList";
import { ChitietgoiVaccine } from "../Models/chitietgoivc";
import { ctgvaccine } from "../Models/ctgvaccine";

const httpOptions = {
  headers: new HttpHeaders({ "Content-Type": "application/json" }),
};

const apiUrl = "http://localhost:7059/api/ChiTietGoiVaccine";

const apiUrl1 = "http://localhost:7059/api/ctgvaccine";

@Injectable({
  providedIn: "root",
})
export class ChitietgoivcineService {
  constructor(private http: HttpClient) {}

  private handleError<T>(operation = "operation", result?: T) {
    return (error: any): Observable<T> => {
      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }

  GetCTgoiVaccineList(): Observable<ChitietgoiVaccine[]> {
    return this.http.get<ChitietgoiVaccine[]>(apiUrl).pipe(
      tap((hh) => console.log("Lấy thành công chi tiết gói vaccine")),
      catchError(this.handleError("GetCTgoiVaccineList", []))
    );
  }
  GetgoiVcList(): Observable<GoivcList[]> {
    return this.http.get<GoivcList[]>(apiUrl1).pipe(
      tap((hh) => console.log("Lấy thành công danh sách gói vaccine")),
      catchError(this.handleError("GetgoiVcList", []))
    );
  }
  getCtGoiVaccineByID(id: number): Observable<ctgvaccine[]> {
    const URL = `${apiUrl1}/${id}`;
    return this.http.get<ctgvaccine[]>(URL).pipe(
      tap((res) => console.log(res)),
      catchError(
        this.handleError<ctgvaccine[]>(`Lỗi ct gói vaccine có mã id=${id}`)
      )
    );
  }
  AddctgVaccine(ctgvaccine: any): Observable<ChitietgoiVaccine> {
    return this.http
      .post<ChitietgoiVaccine>(apiUrl, ctgvaccine, httpOptions)
      .pipe(
        delay(3000),
        tap((ctgoivc: ChitietgoiVaccine) =>
          console.log(`Đã thêm vaccine vào gói vaccine id=${ctgoivc.id_GoiVC}`)
        )
      );
  }

  UpDatectVaccine(id: number, ctvcine: any): Observable<any> {
    const URL = `${apiUrl}/${id}`;
    return this.http.put(URL, ctvcine, httpOptions).pipe(
      delay(4000),
      tap((_) => console.log(`update ct gói vaccine id=${id}`)),
      catchError(this.handleError<any>("UpDatectVaccine"))
    );
  }
  DeletectgVaccine(id: number): Observable<ChitietgoiVaccine> {
    const URL = `${apiUrl}/${id}`;
    return this.http.delete<ChitietgoiVaccine>(URL, httpOptions).pipe(
      delay(1000),
      tap((_) => console.log(`đã xóa ct gói id=${id}`)),
      catchError(this.handleError<any>("DeletectgVaccine"))
    );
  }
}
