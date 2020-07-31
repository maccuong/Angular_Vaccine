import { Injectable } from "@angular/core";
import { delay } from "rxjs/operators";
import { FormGroup, FormControl, Validators } from "@angular/forms";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable, of, throwError } from "rxjs";
import { catchError, tap, map } from "rxjs/operators";
import { DanhMuc } from "../Models/DanhMuc";

const httpOptions = {
  headers: new HttpHeaders({ "Content-Type": "application/json" }),
};

const apiUrl = "http://localhost:7059/api/DanhMucGoiVC";
@Injectable({
  providedIn: "root",
})
export class DanhMucVaccineService {
  private handleError<T>(operation = "operation", result?: T) {
    return (error: any): Observable<T> => {
      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }

  constructor(private http: HttpClient) {}

  GetDanhMucList(): Observable<DanhMuc[]> {
    return this.http.get<DanhMuc[]>(apiUrl).pipe(
      tap((hh) => console.log("lấy thành công danh mục gói vaccine")),
      catchError(this.handleError("GetDanhMucList", []))
    );
  }
}
