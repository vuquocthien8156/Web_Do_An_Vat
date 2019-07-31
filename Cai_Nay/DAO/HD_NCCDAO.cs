using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
namespace DAO
{
    public class HD_NCCDAO
    {
        //public int ThemHD_Ncc(string Mahd , string Makh , string Mancc , string Ghichu , DateTime Ngaylaphd , int Phiship , long Tongtien, List<CartDTO> carts)
        //{
        //        string sql = "insert into HoaDon values( @Mahd , @Makh , @MaNCC , @Ghichu , @Ngaylaphd , @Phiship , @Tongtien , 0 )";
        //        SqlParameter[] par = new SqlParameter[7];
        //        par[0] = new SqlParameter("@Mahd" , Mahd);
        //        par[1] = new SqlParameter("@Makh" , Makh);
        //        par[2] = new SqlParameter("@MaNCC" , Mancc);
        //        par[3] = new SqlParameter("@Ghichu" , Ghichu);
        //        par[4] = new SqlParameter("@Ngaylaphd" , Ngaylaphd);
        //        par[5] = new SqlParameter("@Phiship" , Phiship);
        //        par[6] = new SqlParameter("@Tongtien" , Tongtien);

        //        int kq = DataProvider.ExecuteInsertQuery(sql , par);

        //        if(kq == 1)
        //        {
        //            ThemCT_HDNCC(Mahd, carts);
        //            return 1;
        //        }
        //        return 0;            
        //}

        public int ThemHD_Ncc(string Mahd, string Makh, string Ghichu, DateTime Ngaylaphd, int Phiship, long Tongtien, List<CartDTO> carts)
        {
            string sql = "insert into HoaDon values( @Mahd , @Makh , @Ghichu , @Ngaylaphd , @Phiship , @Tongtien , 0 )";
            SqlParameter[] par = new SqlParameter[6];
            par[0] = new SqlParameter("@Mahd", Mahd);
            par[1] = new SqlParameter("@Makh", Makh);
            par[2] = new SqlParameter("@Ghichu", Ghichu);
            par[3] = new SqlParameter("@Ngaylaphd", Ngaylaphd);
            par[4] = new SqlParameter("@Phiship", Phiship);
            par[5] = new SqlParameter("@Tongtien", Tongtien);

            int kq = DataProvider.ExecuteInsertQuery(sql, par);

            if (kq == 1)
            {
                ThemCT_HDNCC(Mahd, carts);
                return 1;
            }
            return 0;
        }

        public void ThemCT_HDNCC(string MaHD , List<CartDTO> carts)
        {
            for(int i = 0 ; i < carts.Count ; i++)
            {
                string sql = "insert into ChiTietHoaDon values (@Mahd ,@Masp ,@Dongia ,@Soluong ,@Thanhtien ,0 )";
                SqlParameter[] par = new SqlParameter[5];
                par[0] = new SqlParameter("@Mahd" , MaHD);
                par[1] = new SqlParameter("@Masp" , carts[i].Masp);
                par[2] = new SqlParameter("@Dongia" , carts[i].Price);
                par[3] = new SqlParameter("@Soluong" , carts[i].Soluong);
                par[4] = new SqlParameter("@Thanhtien" , carts[i].Thanhtien);
                DataProvider.ExecuteInsertQuery(sql , par);
            } 
        }

        public int getSlHD()
        {
            string sql = "select * from HoaDon";
            return DataProvider.ExecuteSelectQuery(sql, null).Rows.Count;
        }
        public int SL_KH()
        {
            string sql = "select * from KhachHang";
            return DataProvider.ExecuteSelectQuery(sql , null).Rows.Count;
        }
    }
}
