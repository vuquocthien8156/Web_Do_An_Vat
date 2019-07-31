using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;

namespace BUS
{
    public class BUS_QL_Khachhang
    {
        DAO_QL_Khachhang _QLKH = new DAO_QL_Khachhang();
        public DataTable Get_info_KH()
        {
            return _QLKH.Get_info_KH();
        }

        public void DeleteKH(string Makh)
        {
            _QLKH.deletingKH(Makh);
        }

        public int update_info_KH(string MAKH, string Ten, string Diachi, int SDT, string Email)
        {
            return _QLKH.update_infoKH(MAKH , Ten , Diachi , SDT , Email);
        }

        public DataTable LayThongTinKhachHang_email(string email)
        {
            return _QLKH.Laythongtinkhachhang_email(email);
        }
    }
}
