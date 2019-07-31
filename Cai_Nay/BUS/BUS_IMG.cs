using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Data;

namespace BUS
{
    public class BUS_IMG
    {
        DAO_IMG _img = new DAO_IMG();
        DAO_QLSP _QLSP = new DAO_QLSP();
        DAO_QL_NCC _QLNCC = new DAO_QL_NCC();
        public void insert_img(List<string> Path)
        {
            _img.insert_img( getmasp() ,Path);
        }

        public string getmasp()
        {
            string Masp = null;
            int sl = _QLSP.Count_SP();
            if (sl >= 1)
            {
                Masp = "SP" + '_' + sl;
            }
            return Masp;
        }


        public void insert_imgNCC(List<string> Path)
        {
            _img.insert_img(getncc(), Path);
        }

        public string getncc()
        {
            string MaNCC = null;
            int sl = _QLNCC.Get_CountNCC();
            if (sl >= 1)
            {
                MaNCC = "NCC" + '_' + sl;
            }
            return MaNCC;
        }
    }
}
