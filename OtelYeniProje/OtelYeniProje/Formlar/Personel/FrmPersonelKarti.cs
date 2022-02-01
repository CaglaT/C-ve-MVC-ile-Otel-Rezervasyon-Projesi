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

namespace OtelYeniProje.Formlar.Personel
{
    public partial class FrmPersonelKarti : Form
    {
        public FrmPersonelKarti()
        {
            InitializeComponent();
        }
        DbOtelYeniEntities db = new DbOtelYeniEntities();
        public int id;
        Repository<TblPersonel> repo = new Repository<TblPersonel>();
        private void labelControl1_Click(object sender, EventArgs e)
        {

        }

        private void FrmPersonelKarti_Load(object sender, EventArgs e)
        {
            //this.Text = id.ToString();
            try
            {


                if (id != 0)
                {
                    var personel = repo.Find(x => x.PersonelID == id);
                    TxtAdSoyad.Text = personel.AdSoyad;
                    TxtTC.Text = personel.TC;
                    TxtAdres.Text = personel.Adres;
                    TxtTelefon.Text = personel.Telefon;
                    TxtMail.Text = personel.Mail;
                    dateEditGiris.Text = personel.IseGirisTarih.ToString();
                    dateEditCikis.Text = personel.IstenCikisTarih.ToString();
                    TxtAciklama.Text = personel.Aciklama;
                    TxtSifre.Text = personel.Sifre;
                    lookUpEditDepartman.EditValue = personel.Departman;
                    lookUpEditGorev.EditValue = personel.Gorev;
                    labelControl15.Text = personel.KimlikOn;
                    labelControl16.Text = personel.KimlikArka;
                    pictureEditKimlikOn.Image = Image.FromFile(personel.KimlikOn);
                    pictureEditKimlikArka.Image = Image.FromFile(personel.KimlikArka);
                    

                }
            }
            catch (Exception)
            {
                XtraMessageBox.Show("Bir hata oluştu lütfen sütunları kontrol ediniz.", "Hata", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
                lookUpEditDepartman.Properties.DataSource = (from x in db.TblDepartman
                                                             select new
                                                             {
                                                                 x.DepartmanID,
                                                                 x.DepartmanAd
                                                             }).ToList();
                lookUpEditGorev.Properties.DataSource = (from x in db.TblGorev
                                                         select new
                                                         {
                                                             x.GorevID,
                                                             x.GorevAd
                                                         }).ToList();

            }
            
        private void groupControl4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void groupControl2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void groupControl7_Paint(object sender, PaintEventArgs e)
        {

        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            
            TblPersonel t = new TblPersonel();
            t.AdSoyad = TxtAdSoyad.Text;
            t.TC = TxtTC.Text;
            t.Adres = TxtAdres.Text;
            t.Telefon = TxtTelefon.Text;
            t.IseGirisTarih = DateTime.Parse(dateEditGiris.Text);
            t.Departman = int.Parse(lookUpEditDepartman.EditValue.ToString());
            t.Gorev = int.Parse(lookUpEditGorev.EditValue.ToString());
            t.Aciklama = TxtAciklama.Text;
            t.Durum = 1;
            t.KimlikOn = pictureEditKimlikOn.GetLoadedImageLocation();
            t.KimlikArka = pictureEditKimlikArka.GetLoadedImageLocation();
            t.Mail = TxtMail.Text;
            t.Sifre = TxtSifre.Text;
            repo.TAdd(t);
            XtraMessageBox.Show("Personel başarılı bir şekilde sisteme kaydedildi");
           




        }

        private void NewMethod(TblPersonel t)
        {
            t.IseGirisTarih = DateTime.Parse(dateEditGiris.Text);
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            var deger = repo.Find(x => x.PersonelID == id);
            deger.AdSoyad = TxtAdSoyad.Text;
            deger.TC = TxtTC.Text;
            deger.Adres = TxtAdres.Text;
            deger.Departman = int.Parse(lookUpEditDepartman.EditValue.ToString());
            deger.Gorev = int.Parse(lookUpEditGorev.EditValue.ToString());
            deger.Telefon = TxtTelefon.Text;
            deger.IseGirisTarih = DateTime.Parse(dateEditGiris.Text);
            deger.Departman = int.Parse(lookUpEditDepartman.EditValue.ToString());
            deger.Gorev = int.Parse(lookUpEditGorev.EditValue.ToString());
            deger.Aciklama = TxtAciklama.Text;
            deger.Durum = 1;
            deger.KimlikOn = labelControl15.Text;
            deger.KimlikArka = labelControl16.Text;
            deger.Mail = TxtMail.Text;
            deger.Sifre = TxtSifre.Text;
            repo.TUpdate(deger);
            XtraMessageBox.Show("Personel Kartı Bilgileri Başarıyla Güncellendi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);

        }

        private void labelControl15_Click(object sender, EventArgs e)
        {

        }

        private void pictureEditKimlikOn_EditValueChanged(object sender, EventArgs e)
        {
            labelControl15.Text = pictureEditKimlikOn.GetLoadedImageLocation().ToString();
        }

        private void pictureEditKimlikArka_EditValueChanged(object sender, EventArgs e)
        {
            labelControl16.Text = pictureEditKimlikArka.GetLoadedImageLocation().ToString();
        }

        private void BtnVazgec_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
