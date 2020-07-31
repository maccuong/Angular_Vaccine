import { goivacine_dmuc } from "./../Models/goivaccine_danhmuc";
import { Injectable } from "@angular/core";
import { delay } from "rxjs/operators";
import { FormGroup, FormControl, Validators } from "@angular/forms";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Observable, of, throwError } from "rxjs";
import { catchError, tap, map } from "rxjs/operators";
import { DanhsachGoiVaccine } from "../Models/danhsachgoivaccine";

const httpOptions = {
  headers: new HttpHeaders({ "Content-Type": "application/json" }),
};

const apiUrl = "http://localhost:7059/api/GoiVaccine"; //http://localhost:7059/api/ctgvaccine
const apiUrl2 = "http://localhost:7059/api/ctgvaccine";
const apiUrl3 = "http://localhost:7059/api/ctgvaccine/Getgoivcdm";
@Injectable({
  providedIn: "root",
})
export class DanhSachGoivcineService {
  private handleError<T>(operation = "operation", result?: T) {
    return (error: any): Observable<T> => {
      // TODO: send the error to remote logging infrastructure
      console.error(error); // log to console instead

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }

  constructor(private http: HttpClient) {}
  GetGoiVaccineList(): Observable<DanhsachGoiVaccine[]> {
    return this.http.get<DanhsachGoiVaccine[]>(apiUrl).pipe(
      tap((hh) => console.log("lấy thành công danh sách vaccine")),
      catchError(this.handleError("GetGoiVaccineList", []))
    );
  }

  AddGoiVC(goivc: any): Observable<DanhsachGoiVaccine> {
    //const hh= JSON.parse(hanghoa);
    return this.http.post<DanhsachGoiVaccine>(apiUrl, goivc, httpOptions).pipe(
      delay(3000),
      tap((goivcs: DanhsachGoiVaccine) =>
        console.log(`Đã thêm gói vaccine id=${goivc.goivc}`)
      ),
      catchError(this.handleError<DanhsachGoiVaccine>(`AddGoiVC`))
    );
  }
  getGoiVcByID(id: number): Observable<DanhsachGoiVaccine> {
    const URL = `${apiUrl}/${id}`;
    return this.http.get<DanhsachGoiVaccine>(URL).pipe(
      tap((res) => console.log(res)),
      catchError(
        this.handleError<DanhsachGoiVaccine>(
          `Lấy thành công vaccine có mã id=${id}`
        )
      )
    );
  }
  getGoiVcByIdDanhMuc(id: number): Observable<goivacine_dmuc[]> {
    const URL = `${apiUrl3}/${id}`;
    return this.http.get<goivacine_dmuc[]>(URL).pipe(
     
      tap((hh) =>
        console.log("lấy thành công danh sách gói vaccine theo danh mục")
      ),
      catchError(this.handleError("getGoiVcByIdDanhMuc", []))
    );
  }

  UpDateGoivc(id: number, gvc: any): Observable<any> {
    const URL = `${apiUrl}/${id}`;
    console.log(gvc);
    return this.http.put(URL, gvc, httpOptions).pipe(
      delay(4000),
      tap((_) => console.log(`update gói vắc xin id=${id}`)),
      catchError(this.handleError<any>("UpDateGoivc"))
    );
  }
  UpDateanhgoivc(id: number, anhgvc: string) {
    const URL = `${apiUrl2}/${id}`;
    console.log(anhgvc);
    return this.http.put(URL, anhgvc).pipe(
      delay(4000),
      tap((_) => console.log(`update anh id=${id}`)),
      catchError(this.handleError<any>("UpDateGoivc"))
    );
  }
  DeleteGoivc(id: number): Observable<DanhsachGoiVaccine> {
    const URL = `${apiUrl}/${id}`;
    return this.http.delete<DanhsachGoiVaccine>(URL, httpOptions).pipe(
      delay(1000),
      tap((_) => console.log(`đã xóa gói vắc xin id=${id}`)),
      catchError(this.handleError<any>("DeleteGoivc"))
    );
  }
}
