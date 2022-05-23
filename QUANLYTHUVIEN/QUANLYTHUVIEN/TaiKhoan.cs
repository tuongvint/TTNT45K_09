using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN
{
   public class TaiKhoan
    {
        private string TenTaiKhoan;

        public string TenTaiKhoan1
        {
            get { return TenTaiKhoan; }
            set { TenTaiKhoan = value; }
        }

        private string MatKhau;
        public string MatKhau1
        {
            get { return MatKhau; }
            set { MatKhau = value; }
        }
        public TaiKhoan(string tentaikhoan, string matkhau)
        {
            this.TenTaiKhoan1 = tentaikhoan;
            this.MatKhau1 = matkhau;
        }
    }
}
