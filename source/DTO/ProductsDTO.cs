using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class ProductsDTO
    {
        private string _masp;
        private string _tensp;
        private string _mota;
        private long _gia;
        private int _trangthai;
        private int _solandat;
        private string _url;
        private string _ncc;
        private int _loaisp;


        public string Tensp
        {
            get { return _tensp; }
            set { _tensp = value; }
        }

        public string Mota
        {
            get { return _mota; }
            set { _mota = value; }
        }

        public long Gia
        {
            get { return _gia; }
            set { _gia = value; }
        }

        public int Trangthai
        {
            get { return _trangthai; }
            set { _trangthai = value; }
        }

        public int Solandat
        {
            get { return _solandat; }
            set { _solandat = value; }
        }

        public string Url
        {
            get { return _url; }
            set { _url = value; }
        }

        public string Ncc
        {
            get { return _ncc; }
            set { _ncc = value; }
        }


        public int Loaisp
        {
            get { return _loaisp; }
            set { _loaisp = value; }
        }

        public string Masp
        {
            get { return _masp; }
            set { _masp = value; }
        }
       
        

    }
}
