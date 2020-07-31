import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AuthenicationService {

  constructor() { }
  setTempUserId() {
    if (!localStorage.getItem('iD_TaiKhoanKH')) {
      const tempUserID = this.generateTempUserId();
      localStorage.setItem('iD_TaiKhoanKH', tempUserID.toString());
    }
  }

  generateTempUserId() {
    return Math.floor(Math.random() * (99999 - 11111 + 1) + 12345);
  }
}
