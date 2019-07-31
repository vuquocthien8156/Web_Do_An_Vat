using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Data;
using System.Data.Sql;

namespace BUS
{
    public class BUS_Nhanvien
    {
        Dao_Nhanvien _NV = new Dao_Nhanvien();
        public DataRow get_info_NV(string TK)
        {
            return _NV.get_info_NV(TK);
        }
        public DataTable GetStaff()
        {
            return _NV.GetStaff();
        }
        public void DeleteStaff(string Masp)
        {
            _NV.DeleteStaff(Masp);
        }

        public void UpdateStaff(string Manv, string Ten, int Phai, DateTime Ngaysinh, string Diachi, DateTime Ngayvaolam, int LoaiNV, string Mail, string Mathanhtoan)
        {
            _NV.UpdateStaff(Manv , Ten , Phai , Ngaysinh ,Diachi ,Ngayvaolam , LoaiNV , Mail , Mathanhtoan);
        }

        public int Count_Admin()
        {
            return _NV.Count_Admin();
        }
        public int Insert_NhanVien( string TenNV, int Phai, DateTime NgaySinh, String DiaChi, DateTime NgayVaoLam, int LoaiNV, string TenTK, string Mail, string MaThanhToan)
        {
            return _NV.Insert_NhanVien(getmanv(), TenNV, Phai, NgaySinh, DiaChi, NgayVaoLam, LoaiNV, TenTK, Mail, MaThanhToan);
        }
        public string getmanv()
        {
            return "NV_" + (_NV.Count_Nhanvien()+1);
        }
    }
}
