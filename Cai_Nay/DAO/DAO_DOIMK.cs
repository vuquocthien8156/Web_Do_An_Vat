using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DAO_DOIMK
    {
        public int DoiMK(string TenTK , string MK)
        {
            string sql = "update Taikhoan set Matkhau = @MK where TenTK = @TenTK";
            SqlParameter[] par = new SqlParameter[2];
            par[0] = new SqlParameter("@MK" , MK);
            par[1] = new SqlParameter("@TenTK", TenTK);

            return DataProvider.ExecuteUpdateQuery(sql , par);
        }


    }
}
