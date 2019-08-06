using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Data;
using DTO;
namespace BUS
{
    public class BUS_QL_NCC
    {
        DAO_QL_NCC _QLNCC = new DAO_QL_NCC();
        public DataTable Get_producer()
        {
            return _QLNCC.Get_Producer();
        }

         public NCCDTO GeNCCbyiD(string MaNCC)
        {
            return _QLNCC.GetNCCbyiD(MaNCC);
        }

        public int DeleteNcc(string MaNCC)
        {
            return _QLNCC.DeleteNcc(MaNCC);
        }

        public int updating(string MaNCC, string TenNCC, string Diachi, string Giomocua,int Trangthai_mocua, int DichVuShip, string Mail, string URL)
        {
            return _QLNCC.Updating(MaNCC, TenNCC, Diachi, Giomocua, Trangthai_mocua, DichVuShip, Mail, URL);
        }

        public int Insert_Ncc(string TenNCC, string Diachi, string Giomocua, int DichVuShip, string Mail, string URL)
        {
            return _QLNCC.Insert_Ncc(getncc(), TenNCC, Diachi, Giomocua, DichVuShip, Mail, URL);
        }
        public string getncc()
        {
            string MaNCC = null;
            int sl = _QLNCC.Get_CountNCC();
            if (sl > 0)
            {
                MaNCC = "NCC" + '_' + (sl+1);
            }
            else
            {
                MaNCC = "NCC_1";
            }
             return MaNCC;
        }
        public NCCDTO LatNCC_ID(string ID)
        {
            return _QLNCC.LatNCC_ID(ID);
        }
    }
}
