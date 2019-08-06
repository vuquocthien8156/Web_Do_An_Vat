using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class Dao_Nhanvien
    {
        public DataRow get_info_NV(string TK)
        {
            string sql = "select *  from Nhanvien where TenTK = @TenTK";
            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@TenTK" , TK);

            return DataProvider.ExecuteSelectQuery(sql , par).Rows[0];
        }
        public DataTable GetStaff()
        {
            string sql = "Select Manv , TenNV , Phai , Ngaysinh , Diachi , Ngayvaolam, TenLoainv , TenTK , Mail , Mathanhtoan from Nhanvien , LoaiNV where LoaiNV = MaloaiNV and Nhanvien.Daxoa = 0";
            return DataProvider.ExecuteSelectQuery(sql, null);
        }

        public void DeleteStaff(string Manv)
        {
            string sql = "Update Nhanvien set Daxoa = 1 where @Manv = Manv";
            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@Manv", Manv);
            DataProvider.ExecuteUpdateQuery(sql, par);
        }

        public void UpdateStaff(string Manv , string Ten ,int Phai , DateTime Ngaysinh, string Diachi , DateTime Ngayvaolam , int LoaiNV , string Mail , string Mathanhtoan)
        {
            string sql = "Update Nhanvien Set TenNV = @Ten , Phai = @Phai , Ngaysinh = @Ngaysinh , Diachi = @Diachi , Ngayvaolam = @Ngayvaolam , LoaiNV = @LoaiNV , Mail = @Mail , Mathanhtoan = @Mathanhtoan where Manv = @Manv ";

            SqlParameter[] par = new SqlParameter[9];
            par[0] = new SqlParameter("@Manv" , Manv);
            par[1] = new SqlParameter("@Ten" , Ten);
            par[2] = new SqlParameter("@Phai" , Phai);
            par[3] = new SqlParameter("@Ngaysinh" , Ngaysinh);
            par[4] = new SqlParameter("@Diachi" , Diachi);
            par[5] = new SqlParameter("@Ngayvaolam" , Ngayvaolam);
            par[6] = new SqlParameter("@LoaiNV" , LoaiNV);
            par[7] = new SqlParameter("@Mail" , Mail);
            par[8] = new SqlParameter("@Mathanhtoan", Mathanhtoan);

            DataProvider.ExecuteSelectQuery(sql , par);
        }
        public int Count_Admin()
        {
            string sql = "Select * from Nhanvien where LoaiNV = 1 and Daxoa=0";
            return DataProvider.ExecuteSelectQuery(sql, null).Rows.Count;
        }
        public int Insert_NhanVien(string MaNV, string TenNV, int Phai, DateTime NgaySinh, String DiaChi, DateTime NgayVaoLam, int LoaiNV, string TenTK, string Mail, string MaThanhToan)
        {
            string sql = "insert into NhanVien values(@Manv ,@TenNV ,@Phai ,@Ngaysinh ,@Diachi ,@Ngayvaolam ,@LoaiNV ,@TenTK ,@Mail, @Mathanhtoan , 0 )";
            SqlParameter[] par = new SqlParameter[10];
            par[0] = new SqlParameter("@Manv", MaNV);
            par[1] = new SqlParameter("@TenNV", TenNV);
            par[2] = new SqlParameter("@Phai", Phai);
            par[3] = new SqlParameter("@Ngaysinh", NgaySinh);
            par[4] = new SqlParameter("@Diachi", DiaChi);
            par[5] = new SqlParameter("@Ngayvaolam", NgayVaoLam);
            par[6] = new SqlParameter("@LoaiNV", LoaiNV);
            par[7] = new SqlParameter("@TenTK", TenTK);
            par[8] = new SqlParameter("@Mail", Mail);
            par[9] = new SqlParameter("@Mathanhtoan", MaThanhToan);

            return DataProvider.ExecuteUpdateQuery(sql, par);
        }
        public int Count_Nhanvien()
        {
            string sql = "select * from Nhanvien";
            return DataProvider.ExecuteSelectQuery(sql , null).Rows.Count;
        }
    }
}
