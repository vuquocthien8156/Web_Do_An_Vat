using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;
namespace BUS
{
    public class BUS_QLSP
    {
        DAO_QLSP _QLSP = new DAO_QLSP();
        public DataTable Getsp()
        {
            return _QLSP.GetSP();
        }
        public DataTable GetProduct()
        {
            return _QLSP.GetProduct();
        }

        public DataTable GetspByID(string Masp)
        {
            return _QLSP.GetspbyiD(Masp);
        }

        public int Deletesp(string Masp)
        {
            return _QLSP.DeleteSP(Masp);
        }

        public int updating(string masp, string tensp, string mota, int gia, int trangthai, int solandat, string url, string ncc, int loaisp)
        {
            return _QLSP.Updating(masp , tensp , mota , gia , trangthai , solandat , url , ncc , loaisp);
        }

        public int insert_product( string tensp, string mota, int gia, int trangthai, string url, string ncc, int loaisp)
        {
            return _QLSP.Insert_product( getmasp() , tensp , mota , gia , trangthai , url , ncc , loaisp);
        }
        public string getmasp()
        {
            string Masp = null;
            int sl = _QLSP.Count_SP();
            if (sl > 0)
            {
                Masp = "SP" + '_' + (sl+1);
            }
            else
            {
                Masp = "SP_1";
            }
            return Masp;
        }
        public DataTable getcatalogy()
        {
            return _QLSP.GetCatalogy();
        }

         public DataTable GetProductByIDCatalogy(int loai)
        {
            return _QLSP.GetProductByIDCatalogy(loai);
        }

        public ProductsDTO getProductById(string masp)
         {
             return _QLSP.getProductById(masp);
         }

        public DataTable GetProductByNCC(string Mancc)
        {
            return _QLSP.GetProductByNCC(Mancc);
        }

        
        public DataTable GetProduct_BuyMax()
        {
            return _QLSP.GetProduct_BuyMax();
        }
        public DataTable SearchProductByName(string name)
        {
            return _QLSP.SearchProductsByName(name);
        }
    }
}
