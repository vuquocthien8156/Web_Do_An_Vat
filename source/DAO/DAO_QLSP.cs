using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
namespace DAO
{
    public class DAO_QLSP
    {
        public DataTable GetSP()
        {
            string sql = "SELECT Masp , Tensp , Mota , GiaSP , Trangthai_con_het , Solandat , Sanpham.URL as URL , TenNCC , Tenloaisp   FROM Sanpham , NhaCungCap , LoaiSanPham WHERE NCC = MaNCC and Loaisp = Maloaisp and Sanpham.Daxoa = 0";

            return DataProvider.ExecuteSelectQuery(sql, null);
        }

        public DataTable GetProduct()
        {
            string sql = "select Masp , Tensp , Mota , GiaSP , Trangthai_con_het , Solandat , Sanpham.URL as URL , Diachi , Loaisp , NCC from Sanpham , NhaCungCap where NCC = MaNCC and Sanpham.Daxoa = 0 ";

            return DataProvider.ExecuteSelectQuery(sql, null);
        }

        public DataTable GetspbyiD(string Masp)
        {
            string sql = "SELECT * FROM Sanpham WHERE @Masp = Masp and Daxoa = 0";

            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@Masp", Masp);

            return DataProvider.ExecuteSelectQuery(sql, par);
        }

        public int Count_SP()
        {
            string sql = "select * from Sanpham" ;
            return DataProvider.ExecuteSelectQuery(sql , null).Rows.Count;
        }

        public int DeleteSP(string Masp)
        {
            string sql = "Update Sanpham set Daxoa = 1 where Masp = @Masp";

            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@Masp" , Masp);

            return DataProvider.ExecuteUpdateQuery(sql , par);
        }

        public int Updating(string masp ,string tensp , string mota , int gia , int trangthai , int solandat , string url , string ncc , int loaisp)
        {
            string sql = "update Sanpham set Tensp = @tensp , Mota = @mota , GiaSP = @giasp , Trangthai_con_het = @trangthai , URL = @url , NCC = @ncc , Loaisp = @loaisp where Masp = @masp";

           

            SqlParameter[] par = new SqlParameter[8];
            par[0] = new SqlParameter("@tensp" , tensp);
            par[1] = new SqlParameter("@mota" , mota);
            par[2] = new SqlParameter("@giasp" , gia);
            par[3] = new SqlParameter("@trangthai" , trangthai);
            par[4] = new SqlParameter("@url" , url);
            par[5] = new SqlParameter("@ncc" , ncc);
            par[6] = new SqlParameter("@loaisp" , loaisp);
            par[7] = new SqlParameter("@masp" , masp);

            return DataProvider.ExecuteUpdateQuery(sql , par);
        }

        public int Insert_product(string Masp, string tensp, string mota, int gia, int trangthai, string url, string ncc, int loaisp)
        {
            string sql = "insert into Sanpham values(@masp ,@tensp ,@mota ,@giasp ,@trangthai ,0 ,@url ,@ncc ,@loaisp , 0 )";
            SqlParameter[] par = new SqlParameter[8];
            par[0] = new SqlParameter("@tensp", tensp);
            par[1] = new SqlParameter("@mota", mota);
            par[2] = new SqlParameter("@giasp", gia);
            par[3] = new SqlParameter("@trangthai", trangthai);
            par[4] = new SqlParameter("@url", url);
            par[5] = new SqlParameter("@ncc", ncc);
            par[6] = new SqlParameter("@loaisp", loaisp);
            par[7] = new SqlParameter("@masp", Masp);

            return DataProvider.ExecuteUpdateQuery(sql , par);
        }

        public DataTable GetProductByIDCatalogy(int loai)
        {
            string sql = "select Masp , Tensp , Mota , GiaSP , Trangthai_con_het , Solandat , Sanpham.URL as URL , Diachi , Loaisp , NCC from Sanpham , NhaCungCap where NCC = MaNCC and Sanpham.Daxoa = 0 and Loaisp = @Loai";

            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@Loai", loai);

            return DataProvider.ExecuteSelectQuery(sql, par);
        }


        public ProductsDTO getProductById(string masp)
        {
            ProductsDTO _productdto = new ProductsDTO();
            string sql = "select * from Sanpham where Daxoa = 0 and Masp = @masp";

            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@masp", masp);

            DataTable tb  =  DataProvider.ExecuteSelectQuery(sql, par);

            _productdto.Masp = tb.Rows[0]["Masp"].ToString();
            _productdto.Tensp = tb.Rows[0]["Tensp"].ToString();
            _productdto.Mota = tb.Rows[0]["Mota"].ToString();
            _productdto.Gia = Convert.ToInt32(tb.Rows[0]["GiaSP"].ToString());
            _productdto.Trangthai = Convert.ToInt32(tb.Rows[0]["Trangthai_con_het"]);
            _productdto.Solandat = Convert.ToInt32(tb.Rows[0]["Solandat"].ToString());
            _productdto.Url = tb.Rows[0]["URL"].ToString();
            _productdto.Ncc = tb.Rows[0]["NCC"].ToString();
            _productdto.Loaisp = Convert.ToInt32(tb.Rows[0]["Loaisp"].ToString());
            //_productdto = tb.DataTableToList<ProductsDTO>()[0];
            return _productdto;
        }

        public DataTable GetCatalogy()
        {
            string sql = "Select * from LoaiSanPham where Daxoa = 0";
            return DataProvider.ExecuteSelectQuery(sql, null);
        }

        public DataTable GetProductByNCC(string MaNCC)
        {
            string Sql = "select * from Sanpham where @MaNCC = NCC";
            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@MaNCC" , MaNCC);
            return DataProvider.ExecuteSelectQuery(Sql , par);
        }

        public DataTable GetProduct_BuyMax()
        {
            string sql = "    Select TOP 8 Masp , Tensp , Mota , GiaSP , Trangthai_con_het , Solandat , Sanpham.URL as URL , Diachi , Loaisp , NCC from SanPham , NhaCungCap where Sanpham.Daxoa = 0 and NCC = MaNCC Order By Solandat DESC";

            return DataProvider.ExecuteSelectQuery(sql , null);
        }

        public DataTable SearchProductsByName(string Name)
        {
            string sql = "select Masp , Tensp , Mota , GiaSP , Trangthai_con_het , Solandat , Sanpham.URL as URL , Diachi , Loaisp , NCC from Sanpham , NhaCungCap where NCC = MaNCC and Sanpham.Daxoa = 0 and Tensp like '%' + @Name + '%' ";
            SqlParameter[] par = new SqlParameter[1];
            par[0] = new SqlParameter("@Name" , Name);

            return DataProvider.ExecuteSelectQuery(sql , par);
        }
    }
}
