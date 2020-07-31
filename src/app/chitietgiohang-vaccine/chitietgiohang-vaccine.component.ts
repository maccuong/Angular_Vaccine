import { Component, OnInit } from '@angular/core';
import { VaccineCuaGH } from '../Models/VaccineCuaGH';
import { Router, ActivatedRoute } from '@angular/router';
import { ChitietdonhangSVService } from '../Service/chitietdonhang-sv.service';
import { Input } from '@angular/core';
@Component({
  selector: 'app-chitietgiohang-vaccine',
  templateUrl: './chitietgiohang-vaccine.component.html',
  styleUrls: ['./chitietgiohang-vaccine.component.css']
})
export class ChitietgiohangVaccineComponent implements OnInit {
  @Input()id_donhang: number;
  vacineList: VaccineCuaGH[]=[];

  constructor(private ctdonhangService: ChitietdonhangSVService, private router: Router,private route: ActivatedRoute) { }


  ngOnInit(): void {
    this.laydanhsachgoivaccine();
  }
  laydanhsachgoivaccine(){
    this.ctdonhangService.GetTTVaccineCuaDonHangList(this.id_donhang).subscribe(
      (results:VaccineCuaGH[])=>{
        if(results.length>0){

          this.vacineList=results;
          console.log(results);
          console.log(this.id_donhang);
        }
        else
        {
          this.vacineList =[];
          console.log(results);
        }

      }
    );
  }
}
