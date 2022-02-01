using DevExpress.XtraEditors;
using OtelYeniProje.Entity;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OtelYeniProje.Formlar.Admin
{
    public partial class FrmGiriss : Form
    {
        public FrmGiriss()
        {
            InitializeComponent();
        }
        DbOtelYeniEntities db = new DbOtelYeniEntities();
        private void FrmGiriss_Load(object sender, EventArgs e)
        {
           
        }

        private void FrmGiriss_Click(object sender, EventArgs e)
        {

        }

        private void BtnGiris_Click(object sender, EventArgs e)
        {
            var kullanici = db.TblAdmin.Where(x => x.Kullanici == TxtKullanici.Text && x.Sifre == TxtSifre1.Text).FirstOrDefault();
            if (kullanici != null)
            {

                Form1 frm = new Form1();
                frm.kullanicirolu = kullanici.Rol;
                frm.Show();
                this.Hide();
            }
            else
            {
                XtraMessageBox.Show("Kullanıcı adı veya şifre yanlış,tekrar deneyiniz", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
        }

        private void FrmGiriss_Load_1(object sender, EventArgs e)
        {
            Thread.Sleep(5000);
        }
    }
}
