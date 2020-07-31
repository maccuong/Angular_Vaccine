import { UserRole } from './../Models/roles';
import { UserKhs } from './../Models/UserKH';
import { AuthService } from './../Service/auth.service';
import { Injectable } from '@angular/core';
import { CanActivate, ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree, Router } from '@angular/router';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AdminGuard implements CanActivate {

  userDataSubscription: any;
  userData = new UserKhs();
  constructor(private router: Router, private authService: AuthService) {
    this.userDataSubscription = this.authService.userData.asObservable().subscribe(data => {
      this.userData = data;
    });
  }





  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
      if(this.userData.loaiTK==UserRole.Admin){
        return true;
      }
      this.router.navigate(['/loginKH'], { queryParams: { returnUrl: state.url } });
      return false;
  }
  
}
