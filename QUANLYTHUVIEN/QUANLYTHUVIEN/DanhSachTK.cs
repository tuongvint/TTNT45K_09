using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QUANLYTHUVIEN
{
    class DanhSachTK
    {
        private static DanhSachTK instance;

        public static DanhSachTK Instance
        {
            get
            {
                if (instance == null)
                    instance = new DanhSachTK();
                return DanhSachTK.instance;
            }
            set { DanhSachTK.instance = value; }
        }

        List<TaiKhoan> listTaiKhoan;

        public List<TaiKhoan> ListTaiKhoan
        {
            get { return listTaiKhoan; }
            set { listTaiKhoan = value; }
        }

        DanhSachTK()
        {
            listTaiKhoan = new List<TaiKhoan>();
            listTaiKhoan.Add(new TaiKhoan("tuongvi", "111"));
            listTaiKhoan.Add(new TaiKhoan("kimthoa", "222"));
            listTaiKhoan.Add(new TaiKhoan("quynhtram", "333"));
        }
    }
}
