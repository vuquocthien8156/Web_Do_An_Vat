using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Data;

namespace BUS
{
    public class BUS_DOIMK
    {
        DAO_DOIMK _DoiMK = new DAO_DOIMK();
        public string Mahoa(string pass)
        {
            return Until.GetMD5(pass);
        }

        public int DoiMK(string TenTK , string MK)
        {
            return _DoiMK.DoiMK(TenTK , Mahoa(MK));
        }
    }
}
