import { Input } from '@angular/core';
import { Component, OnInit } from '@angular/core';
import { GoiVcCuaGH } from './../Models/chitietGoivc_GH';
import { VaccineCuaGH } from '../Models/VaccineCuaGH';
import { Router, ActivatedRoute } from '@angular/router';
import { ChitietdonhangSVService } from '../Service/chitietdonhang-sv.service';

@Component({
  selector: 'app-chitietdonhangkh',
  templateUrl: './chitietdonhangkh.component.html',
  styleUrls: ['./chitietdonhangkh.component.css']
})
export class ChitietdonhangkhComponent implements OnInit {
  goivcList:GoiVcCuaGH[]=[];
  
  @Input()id_donhang: number;
  constructor(private ctdonhangService: ChitietdonhangSVService, private router: Router,private route: ActivatedRoute) { }

  ngOnInit(): void {
    this.laydanhsachgoivaccine();
  }
  laydanhsachgoivaccine(){
    this.ctdonhangService.GetTTGoiVaccineCuaDonHangList(this.id_donhang).subscribe(
      (result:[])=>{
        this.goivcList=result;
        console.log(result);
      }
    );
  }
}
