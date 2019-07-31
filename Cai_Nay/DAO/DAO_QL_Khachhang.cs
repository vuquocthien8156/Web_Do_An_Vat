using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DAO_QL_Khachhang
    {
        public DataTable Get_info_KH()
        {
            string sql = "select * from Khachhang where Daxoa = 0";
            return DataProvider.ExecuteSelectQuery(sql , null);
        }

        public void deletingKH(string MAKH)
        {
            string sql = "Update KhachHang set Daxoa = 1 where @Makh = MaKH";
            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@Makh" , MAKH);
            DataProvider.ExecuteUpdateQuery(sql , par);
        }

        public int update_infoKH(string MAKH , string Ten , string Diachi , int SDT , string Email)
        {
            string sql = "Update KhachHang set TenKH = @TenKH , Diachi = @Diachi , SDT = @SDT , Email = @Email where @Makh = MaKH";
            SqlParameter[] par = new SqlParameter[5];
            par[0] = new SqlParameter("@Makh", MAKH);
            par[1] = new SqlParameter("@Diachi", Diachi);
            par[2] = new SqlParameter("@SDT", SDT);
            par[3] = new SqlParameter("@Email", Email);
            par[4] = new SqlParameter("@TenKH", Ten);
            return DataProvider.ExecuteUpdateQuery(sql, par);
        }
        public DataTable Laythongtinkhachhang_email(string email)
        {
            string sql = "Select * from Khachhang where @email = Email";
            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@email", email);
            return DataProvider.ExecuteSelectQuery(sql, par);
        }
        
    }
}
