using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class NCCDTO
    {
        string _maNCC;
        string _tenNCC;
        string _diachi;
        string _giohoatdong;
        bool _trangthai;
        bool _dvship;
        string _mail;
        string _url;

        public string MaNCC
        {
            get { return _maNCC; }
            set { _maNCC = value; }
        }

        public string TenNCC
        {
            get { return _tenNCC; }
            set { _tenNCC = value; }
        }

        public string Diachi
        {
            get { return _diachi; }
            set { _diachi = value; }
        }

        public string Giohoatdong
        {
            get { return _giohoatdong; }
            set { _giohoatdong = value; }
        }

        public bool Trangthai
        {
            get { return _trangthai; }
            set { _trangthai = value; }
        }

        public bool Dvship
        {
            get { return _dvship; }
            set { _dvship = value; }
        }

        public string Mail
        {
            get { return _mail; }
            set { _mail = value; }
        }


        public string Url
        {
            get { return _url; }
            set { _url = value; }
        }
    }
}
