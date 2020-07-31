import { AuthService } from "./../Service/auth.service";
import { Component, OnInit } from "@angular/core";
import { FormGroup, FormBuilder, Validators } from "@angular/forms";
import { ActivatedRoute, Router } from "@angular/router";
import { first } from "rxjs/operators";
import { ToastrService } from "ngx-toastr";
import { GiohangService } from "../Service/giohang.service";
import { GioHang } from "../Models/giohang";

@Component({
  selector: "app-login",
  templateUrl: "./login.component.html",
  styleUrls: ["./login.component.css"],
})
export class LoginComponent implements OnInit {
  loading = false;
  loginForm: FormGroup;
  submitted = false;
  returnUrl: string;

  constructor(
    private formBuilder: FormBuilder,
    private route: ActivatedRoute,
    private router: Router,
    private authService: AuthService,
    private toasrt: ToastrService
  ) {}

  ngOnInit(): void {
    this.loginForm = this.formBuilder.group({
      email: ["", Validators.required],
      matKhau: ["", Validators.required],
    });
  }

  onSubmit(form: FormGroup) {
    this.authService.login(form).subscribe(
      (res: any) => {
        localStorage.setItem("token", res.token);

        this.router.navigateByUrl("/thongtinkh");
      },
      (err) => {
        if (err.status === 400)
          this.toasrt.error(
            "Sai tên đăng nhập hoặc mật khẩu",
            "Đăng nhập thất bại"
          );
        else console.log(err);
      }
    );
  }
}
