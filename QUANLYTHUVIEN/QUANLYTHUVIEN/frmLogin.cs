using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QUANLYTHUVIEN
{
    public partial class frmLogin : Form
    {
        List<TaiKhoan> listTaiKhoan = DanhSachTK.Instance.ListTaiKhoan;

        public frmLogin()
        {
            InitializeComponent();
        }

        private void bttDangNhap_Click(object sender, EventArgs e)
        {
            if (Kiemtra(txbDangNhap.Text, txbMatKhau.Text))
            {
                MessageBox.Show("Đăng nhập thành công", "Thông báo", MessageBoxButtons.OK);
                frmQuanLyThuVien f = new frmQuanLyThuVien();
                this.Hide();
                f.ShowDialog();

            }
            else
            {
                MessageBox.Show("Đăng nhập thất bại", "Thông báo", MessageBoxButtons.OK);
                txbDangNhap.Focus();
            }
        }

        private void bttThoat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void frmLogin_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Bạn muốn thoát chương trình", "Thông báo", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)
            {
                e.Cancel = true;
            }
        }

        bool Kiemtra(string tentaikhoan, string matkhau)
        {
            for (int i = 0; i < listTaiKhoan.Count; i++)
            {
                if (tentaikhoan == listTaiKhoan[i].TenTaiKhoan1 && matkhau == listTaiKhoan[i].MatKhau1)
                    return true;
            }
            return false;
        } 
    }
}
