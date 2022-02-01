using DevExpress.XtraEditors;
using OtelYeniProje.Entity;
using OtelYeniProje.Repositories;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OtelYeniProje.Formlar.Admin
{
    public partial class FrmSifreislemleri : Form
    {
        public FrmSifreislemleri()
        {
            InitializeComponent();
        }
        DbOtelYeniEntities db = new DbOtelYeniEntities();
        public int id;

        public object Xtramessagebox { get; private set; }

        private void BtnVazgec_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        Repository<TblAdmin> repo = new Repository<TblAdmin>();
        private void FrmSifreislemleri_Load(object sender, EventArgs e)
        {
            if (id != 0)
            {
                var admin = repo.Find(x => x.ID == id);
                TxtKullanici.Text = admin.Kullanici;
                TxtMevcutSifre.Text = admin.Sifre;
                TxtRol.Text = admin.Rol;
            }
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            if (TxtYeniSifre.Text == TxtYeniSifreTekrar.Text)
            {
                TblAdmin t = new TblAdmin();
                t.Kullanici = TxtKullanici.Text;
                t.Sifre = TxtYeniSifre.Text;
                db.TblAdmin.Add(t);
                db.SaveChanges();
                XtraMessageBox.Show("Yeni kullanıcı başarılı bir şekilde oluşturuldu", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                XtraMessageBox.Show("Şifreler uyuşmuyor,Lütfen tekrar deneyiniz.", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }

        }

        private void groupControl4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            if (TxtYeniSifre.Text == TxtYeniSifreTekrar.Text)
            {
                var deger = repo.Find(x => x.ID == id);
                deger.Kullanici = TxtKullanici.Text;
                deger.Sifre = TxtYeniSifre.Text;
                deger.Rol = TxtRol.Text;
                repo.TUpdate(deger);
                XtraMessageBox.Show("Admin Şifre bilgileri başarıyla güncellendi", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                XtraMessageBox.Show("Lütfen şifrelerin eşleştiğinden emin olunuz", "Uyarı", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }

        }





        private void BtnListe_Click(object sender, EventArgs e)
        {
            FrmAdminListesi fr = new FrmAdminListesi();
            fr.Show();
            this.Hide();
        }
    }
}


