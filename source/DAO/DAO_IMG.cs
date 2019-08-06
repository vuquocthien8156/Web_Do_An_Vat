using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAO
{
    public class DAO_IMG
    {
        public void insert_img(string idsp , List<string> Path)
        {
            string Sql = "insert into HinhAnh values(@ID , @Path , 0)";
            for (int i = 0; i < Path.Count; i++ )
            {
                SqlParameter[] par = new SqlParameter[2];
                par[0] = new SqlParameter("@ID" , idsp);
                par[1] = new SqlParameter("@Path", Path[i]);
                DataProvider.ExecuteInsertQuery(Sql , par);
            }
        }
    }
}
