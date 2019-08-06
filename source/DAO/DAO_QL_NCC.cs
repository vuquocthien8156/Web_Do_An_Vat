using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using DTO;
namespace DAO
{
    public class DAO_QL_NCC
    {
        public DataTable Get_Producer()
        {
            string sql = "select * from NhaCungCap where Daxoa = 0";

            return DataProvider.ExecuteSelectQuery(sql , null);
        }

        public NCCDTO GetNCCbyiD(string MaNCC)
        {
            string sql = "SELECT * FROM NhaCungCap WHERE @MaNCC = MaNCC and Daxoa = 0";

            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@MaNCC", MaNCC);

            return DataProvider.ExecuteSelectQuery(sql, par).DataTableToList<NCCDTO>()[0];
        }

        public int Get_CountNCC()
        {
            string sql = "select * from NhaCungCap";
            return DataProvider.ExecuteSelectQuery(sql, null).Rows.Count;
        }

        public int Insert_Ncc(string MaNCC, string TenNCC, string Diachi, string Giohoatdong, int DichVuShip, string Mail, string URL)
        {
            string sql = "insert into NhaCungCap values(@MaNCC ,@TenNCC ,@Diachi , @Giohoatdong , 0 ,@DichVuShip,@Mail ,@URL , 0 )";
            SqlParameter[] par = new SqlParameter[7];
            par[0] = new SqlParameter("@MaNCC", MaNCC);
            par[1] = new SqlParameter("@TenNCC", TenNCC);
            par[2] = new SqlParameter("@Diachi", Diachi);
            par[3] = new SqlParameter("@Giohoatdong", Giohoatdong);
            par[4] = new SqlParameter("@DichVuShip", DichVuShip);
            par[5] = new SqlParameter("@Mail", Mail);
            par[6] = new SqlParameter("@URL", URL);

            return DataProvider.ExecuteUpdateQuery(sql, par);
        }
        public int DeleteNcc(string MaNCC)
        {
            string sql = "Update NhaCungCap set Daxoa = 1 where MaNCC = @MaNCC";

            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@MaNCC", MaNCC);

            return DataProvider.ExecuteUpdateQuery(sql, par);
        }

        public int Updating(string MaNCC, string TenNCC, string Diachi, string Giohoatdong, int Trangthai_mocua, int DichVuShip, string Mail, string URL)
        {
            string sql = "update NhaCungCap set TenNCC = @TenNCC , Diachi = @Diachi , Giohoatdong = @Giohoatdong , Trangthai_mocua = @Trangthai_mocua , DichVuShip = @DichVuShip , Mail = @Mail , URL = @URL where MaNCC = @MaNCC";


            SqlParameter[] par = new SqlParameter[8];
            par[0] = new SqlParameter("@MaNCC", MaNCC);
            par[1] = new SqlParameter("@TenNCC", TenNCC);
            par[2] = new SqlParameter("@Diachi", Diachi);
            par[3] = new SqlParameter("@Giohoatdong", Giohoatdong);
            par[4] = new SqlParameter("@Trangthai_mocua", Trangthai_mocua);
            par[5] = new SqlParameter("@DichVuShip", DichVuShip);
            par[6] = new SqlParameter("@Mail", Mail);
            par[7] = new SqlParameter("@URL", URL);

            return DataProvider.ExecuteUpdateQuery(sql, par);
        }

        public NCCDTO LatNCC_ID(string ID)
        {
            string sql = "select * from NhaCungCap where MaNCC = @Email";
            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@Email" , ID);
            return DataProvider.ExecuteSelectQuery(sql , par).DataTableToList<NCCDTO>()[0];
        }

    }
}
