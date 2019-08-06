using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;
namespace BUS
{
    public class HD_NCCBUS
    {
        HD_NCCDAO _HDNCC = new HD_NCCDAO();
        public int ThemHD_Ncc(string Makh  , string Ghichu , DateTime Ngaylaphd , int Phiship , long Tongtien, List<CartDTO> carts)
        {
            return _HDNCC.ThemHD_Ncc(getMahd() , Makh , Ghichu , Ngaylaphd , Phiship , Tongtien , carts);
        }
        public string getMahd()
        {
            int kh = _HDNCC.getSlHD();
            if(kh > 0)
                return "HD_" + (kh + 1);
            return "HD_1";
        }
    }
}
