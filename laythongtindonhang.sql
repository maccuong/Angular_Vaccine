select gvc.TenGoi,ctgh.SoLuong
from PhieuDatMuaOnlines pm, GioHangs gh, GoiVaccines gvc, CtGioHangs ctgh
where pm.Id_GioHang=45 and gh.Id_GioHang=ctgh.Id_GioHang and pm.Id_GioHang=ctgh.Id_GioHang and ctgh.Id_GoiVC=gvc.Id_GoiVC
-----------------

select vc.TenVaccine,ctgh.SoLuong
from PhieuDatMuaOnlines pm, GioHangs gh, Vaccines vc, CtGioHangs ctgh
where pm.Id_GioHang=45 and gh.Id_GioHang=ctgh.Id_GioHang and pm.Id_GioHang=ctgh.Id_GioHang and ctgh.Id_Vaccine=vc.Id_Vaccine