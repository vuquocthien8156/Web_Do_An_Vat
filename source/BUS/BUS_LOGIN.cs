using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Data;

namespace BUS
{
    public class BUS_LOGIN
    {
        DAO_LOGIN login = new DAO_LOGIN();
        public int Dangki_TK(string Username, string Password, int LoaiTK)
        {
            string mahoa = Until.GetMD5(Password);
            int kq = login.Dangki_TTTK(Username , mahoa, LoaiTK);

            return kq;
        }

        public int Dangki_TTKH(string Name, string Username, string Mail, string Address, int phone)
        {
            int kq = login.Dangki_TTKH(Get_MaKH() ,Name , Username ,Mail , Address , phone);

            return kq;
        }
        public int TTKH(string Name, string Mail, string Address, int phone)
        {
            int kq = login.TTKH(Get_MaKH(), Name, Mail, Address, phone);

            return kq;
        }

        public DataTable Login(string Username , string Password)
        {
            string mahoa = Until.GetMD5(Password);
            return login.Login(Username , mahoa);
        }
        public int kiemtratrung(string user)
        {
            return login.kiemtratrung(user);
        }
        public string Get_MaKH()
        {
            int Sl = login.Dem_KH();
            string Makh = null;
            if (Sl != 0)
            {
                Makh = "KH_" +  (Sl+1);
            }
            else
            {
                Makh = "KH_1";
            }
            return Makh;
        }

        public DataRow Get_infoKH_Tentk(string tentk)
        {
            return login.get_KH_tentk(tentk);
        }
        public int Dem_KH()
        {
            return login.Dem_KH();
        }
    }
}
