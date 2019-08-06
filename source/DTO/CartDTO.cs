using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class CartDTO
    {
        string _urlproduct;

        public string Urlproduct
        {
            get { return _urlproduct; }
            set { _urlproduct = value; }
        }
        int _soluong;

        public int Soluong
        {
            get { return _soluong; }
            set { _soluong = value; }
        }

        string _tensp;

        public string Tensp
        {
            get { return _tensp; }
            set { _tensp = value; }
        }

        long price;

        public long Price
        {
            get { return price; }
            set { price = value; }
        }

        string _masp;

        public string Masp
        {
            get { return _masp; }
            set { _masp = value; }
        }

        string _makh;

        public string Makh
        {
            get { return _makh; }
            set { _makh = value; }
        }

        long _thanhtien;

        public long Thanhtien
        {
            get { return _thanhtien; }
            set { _thanhtien = value; }
        }

        string _NCC;

        public string NCC
        {
            get { return _NCC; }
            set { _NCC = value; }
        }
    }
}
