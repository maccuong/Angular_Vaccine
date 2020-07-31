import { UserKhs } from "./../Models/UserKH";
import { Injectable } from "@angular/core";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { BehaviorSubject } from "rxjs";
import { map } from "rxjs/operators";
import { Router } from "@angular/router";

const httpOptions = {
  headers: new HttpHeaders({ "Content-Type": "application/json" }),
};

const apiUrl = "http://localhost:7059/api/Login";
@Injectable({
  providedIn: "root",
})
export class AuthService {
  userData = new BehaviorSubject<UserKhs>(new UserKhs());
  constructor(private http: HttpClient, private router: Router) {}

  login(userDetails) {
    return this.http.post<any>(apiUrl, userDetails).pipe(
      map((response) => {
        localStorage.setItem("authToken", response.token);
        this.setThongTinKH();
        localStorage.setItem(
          "iD_TaiKhoanKH",
          response.userDetails.iD_TaiKhoanKH
        );
        return response;
      })
    );
  }

  setThongTinKH() {
    if (localStorage.getItem("authToken")) {
      const userDetails = new UserKhs();
      const decodeUserDetails = JSON.parse(
        window.atob(localStorage.getItem("authToken").split(".")[1])
      );
      userDetails.email = decodeUserDetails.sub;
      userDetails.iD_TaiKhoanKH = decodeUserDetails.iD_TaiKhoanKH;
      userDetails.hoten = decodeUserDetails.hoten;
      userDetails.loaiTK = decodeUserDetails.loaiTK;
      this.userData.next(userDetails);
    }
  }
  logout() {
    localStorage.removeItem("authToken");
    localStorage.removeItem("iD_TaiKhoanKH");
    this.setTempUserId();
    this.router.navigate(["/loginKH"]);
    this.userData.next(new UserKhs());
  }
  setTempUserId() {
    if (!localStorage.getItem("iD_TaiKhoanKH")) {
      const tempUserID = this.generateTempUserId();
      localStorage.setItem("iD_TaiKhoanKH", tempUserID.toString());
    }
  }

  generateTempUserId() {
    return Math.floor(Math.random() * (99999 - 11111 + 1) + 12345);
  }
}
