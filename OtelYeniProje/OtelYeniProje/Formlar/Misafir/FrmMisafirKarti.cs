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

namespace OtelYeniProje.Formlar.Misafir
{
    public partial class FrmMisafirKarti : Form
    {
        public FrmMisafirKarti()
        {
            InitializeComponent();
        }
        Repository<TblMisafir> repo = new Repository<TblMisafir>();
        TblMisafir t = new TblMisafir();
        DbOtelYeniEntities db = new DbOtelYeniEntities();
        public int id;
        string resim1, resim2;



        private void FrmMisafirKarti_Load(object sender, EventArgs e)
        {

            try
            {
                //Güncellenecek kart bilgileri
                if (id != 0)
                {
                    var misafir = repo.Find(x => x.MisafirID == id);
                    TxtAdSoyad.Text = misafir.AdSoyad;
                    TxtTC.Text = misafir.TC;
                    TxtAdres.Text = misafir.Adres;
                    TxtTelefon.Text = misafir.Telefon;
                    TxtMail.Text = misafir.Mail;

                    TxtAciklama.Text = misafir.Aciklama;
                    lookUpEditSehir.EditValue = misafir.sehir;
                    lookUpEditIlce.EditValue = misafir.ilce;
                    lookUpEditUlke.EditValue = misafir.Ulke;
                    
                    pictureEditKimlikOn.Image = Image.FromFile(misafir.KimlikFoto1);
                    pictureEditKimlikArka.Image = Image.FromFile(misafir.KimlikFoto2);
                    resim1 = misafir.KimlikFoto1;
                    resim2 = misafir.KimlikFoto2;



                }
            }
            catch (Exception)
            {

                XtraMessageBox.Show("Bir hata oluştu lütfen sütunları kontrol ediniz.","Hata",MessageBoxButtons.OK,MessageBoxIcon.Stop);
            }


            //ülke listesi
            lookUpEditUlke.Properties.DataSource = (from x in db.TblUlke
                                                    select new
                                                    {
                                                        x.UlkeID,
                                                        x.UlkeAd
                                                    }).ToList();

            //Şehir listesi
            lookUpEditSehir.Properties.DataSource = (from x in db.iller
                                                     select new
                                                     {
                                                         x.id,
                                                         x.sehir
                                                     }).ToList();

        }

        private void lookUpEditSehir_EditValueChanged(object sender, EventArgs e)
        {
            int secilen;
            secilen = int.Parse(lookUpEditSehir.EditValue.ToString());
            lookUpEditIlce.Properties.DataSource = (from x in db.ilceler
                                                    select new
                                                    {
                                                        x.id,
                                                        x.ilce,
                                                        x.sehir
                                                    }
                                                  ).Where(y => y.sehir == secilen).ToList();
        }

        private void lookUpEditIlce_EditValueChanged(object sender, EventArgs e)
        {

        }
        

        private void pictureEditKimlikOn_EditValueChanged(object sender, EventArgs e)
        {
            resim1 = pictureEditKimlikOn.GetLoadedImageLocation().ToString();
        }

        private void pictureEditKimlikArka_EditValueChanged(object sender, EventArgs e)
        {
            resim2 = pictureEditKimlikArka.GetLoadedImageLocation().ToString();
        }

        private void BtnVazgec_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            var deger = repo.Find(x => x.MisafirID == id);
            deger.AdSoyad = TxtAdSoyad.Text;
            deger.TC = TxtTC.Text;
            deger.Adres = TxtAdres.Text;
            
            deger.Telefon = TxtTelefon.Text;
            deger.Ulke = int.Parse(lookUpEditUlke.EditValue.ToString());
            deger.sehir = int.Parse(lookUpEditSehir.EditValue.ToString());
            deger.ilce = int.Parse(lookUpEditIlce.EditValue.ToString());
            deger.Aciklama = TxtAciklama.Text;
            deger.Durum = 1;
            deger.KimlikFoto1 = resim1;
            deger.KimlikFoto2 = resim2;
            deger.Mail = TxtMail.Text;
            
            repo.TUpdate(deger);
            XtraMessageBox.Show("Misafir Kartı Bilgileri Başarıyla Güncellendi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);

        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            if (pictureEditKimlikArka.Image != null && pictureEditKimlikOn.Image != null)
            {

            
            t.AdSoyad = TxtAdSoyad.Text;
            t.TC = TxtTC.Text;
            t.Telefon = TxtTelefon.Text;
            t.Mail = TxtMail.Text;
            t.Adres = TxtAdres.Text;
            t.Aciklama = TxtAciklama.Text;
            t.Durum = 1;
            t.sehir =int.Parse( lookUpEditSehir.EditValue.ToString());
            t.ilce =int.Parse( lookUpEditIlce.EditValue.ToString());
            t.Ulke = int.Parse(lookUpEditUlke.EditValue.ToString());
            t.KimlikFoto1 = resim1;
            t.KimlikFoto2 = resim2;
            repo.TAdd(t );
            XtraMessageBox.Show("Misafir başarılı bir şekilde sisteme kaydedildi","Bilgi",MessageBoxButtons.OK,MessageBoxIcon.Information);
            }
            else
            {
                XtraMessageBox.Show("Lütfen bilgileri eksiksiz doldurun", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
        }
    }
}
