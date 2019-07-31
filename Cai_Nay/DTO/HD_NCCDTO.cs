using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class HD_NCCDTO
    {
        string id;

        public string Id
        {
            get { return id; }
            set { id = value; }
        }
        List<CartDTO> product = new List<CartDTO>();

        public List<CartDTO> Product
        {
            get { return product; }
            set { product = value; }
        }
    }
}
