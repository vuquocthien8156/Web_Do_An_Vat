using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DAO_LOGIN
    {

        public int Dangki_TTTK(string Username, string Password , int LoaiTK)
        {

            string sql = "Insert into Taikhoan values(@Username , @Password , 0 , @LoaiTK ,0)";

            SqlParameter[] par = new SqlParameter[3];
            par[0] = new SqlParameter("@Username", Username);
            par[1] = new SqlParameter("@Password", Password);
            par[2] = new SqlParameter("@LoaiTK", LoaiTK);

            return DataProvider.ExecuteInsertQuery(sql , par);
        }
        

        public int Dangki_TTKH(string Makh , string Name ,  string Username, string Mail ,string Address, int phone )
        { 
            string sql = "Insert into Khachhang values(@Makh ,@Username , @Name, @Address ,@Phone , @Mail , 0)";
            
            SqlParameter[] par = new SqlParameter[6];
            par[0] = new SqlParameter("@Makh" , Makh);
            par[1] = new SqlParameter("@Username", Username);
            par[2] = new SqlParameter("@Name", Name);
            par[3] = new SqlParameter("@Address", Address);
            par[4] = new SqlParameter("@Phone", phone);
            par[5] = new SqlParameter("@Mail", Mail);

            return DataProvider.ExecuteInsertQuery(sql , par);
        }

        public int TTKH(string Makh, string Name, string Mail, string Address, int phone)
        {
            string sql = "Insert into Khachhang values(@Makh , null , @Name, @Address ,@Phone , @Mail , 0)";

            SqlParameter[] par = new SqlParameter[5];
            par[0] = new SqlParameter("@Makh", Makh);
            par[1] = new SqlParameter("@Name", Name);
            par[2] = new SqlParameter("@Address", Address);
            par[3] = new SqlParameter("@Phone", phone);
            par[4] = new SqlParameter("@Mail", Mail);

            return DataProvider.ExecuteInsertQuery(sql, par);
        }

        public DataTable get_KH()
        {
            string sqlma = "select * from Khachhang where Daxoa = 0";
            return DataProvider.ExecuteSelectQuery(sqlma, null);
        }


        public int Dem_KH()
        {
            string sqlma = "select * from Khachhang";
            return DataProvider.ExecuteSelectQuery(sqlma, null).Rows.Count;
        }

        public DataRow get_KH_tentk(string tentk)
        {
            string sqlma = "select * from Khachhang where TenTK = @tentk and Daxoa = 0";
            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@tentk" , tentk);
            return (DataProvider.ExecuteSelectQuery(sqlma, par)).Rows[0];
        }

        public DataTable Login(string Username , string Password)
        {

            string sql  = "select * from Taikhoan where TenTK = @Username and Matkhau = @Password ";
            SqlParameter[] par = new SqlParameter[2];
            par[0] = new SqlParameter("@Username", Username);
            par[1] = new SqlParameter("@Password", Password);

            
            return DataProvider.ExecuteSelectQuery(sql, par);
        }

        public int kiemtratrung(string username)
        {
            string sql = "select * from Taikhoan where TenTK = @username";
            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@username" , username);

            return (DataProvider.ExecuteSelectQuery(sql , par)).Rows.Count;
        }

        
    }
}
