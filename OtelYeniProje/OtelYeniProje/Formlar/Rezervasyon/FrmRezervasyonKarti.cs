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

namespace OtelYeniProje.Formlar.Rezervasyon
{
    public partial class FrmRezervasyonKarti : Form
    {
        public FrmRezervasyonKarti()
        {
            InitializeComponent();
        }
        DbOtelYeniEntities db = new DbOtelYeniEntities();
        Repository<TblRezervasyon> repo = new Repository<TblRezervasyon>();

        TblRezervasyon t = new TblRezervasyon();
        public int id;
        private void FrmRezervasyonKarti_Load(object sender, EventArgs e)
        {
            //Misafir listesi
            lookUpEditMisafir.Properties.DataSource = (from x in db.TblMisafir
                                                       select new
                                                       {
                                                           x.MisafirID,
                                                           x.AdSoyad
                                                       }).ToList();
            //Oda listesi
            lookUpEditOda.Properties.DataSource = (from x in db.TblOda
                                                   select new
                                                   {
                                                       x.OdaID,
                                                       x.Kapasite,
                                                       x.OdaNo,
                                                       x.TblDurum.DurumAd
                                                   }).Where(y => y.DurumAd == "Aktif").ToList();
            //Durum listesi
            lookUpEditDurum.Properties.DataSource = (from x in db.TblDurum
                                                     select new
                                                     {
                                                         x.DurumId,
                                                         x.DurumAd
                                                     }).ToList();
            //Misafir listesi 2
            lookUpEditKisi2.Properties.DataSource = (from x in db.TblMisafir
                                                     select new
                                                     {
                                                         x.MisafirID,
                                                         x.AdSoyad
                                                     }).ToList();
            //Misafir listesi 3
            lookUpEditKisi3.Properties.DataSource = (from x in db.TblMisafir
                                                     select new
                                                     {
                                                         x.MisafirID,
                                                         x.AdSoyad
                                                     }).ToList();
            //Misafir listesi 4
            lookUpEditKisi4.Properties.DataSource = (from x in db.TblMisafir
                                                     select new
                                                     {
                                                         x.MisafirID,
                                                         x.AdSoyad
                                                     }).ToList();
            if (id != 0)
            {
                var rezervasyon = repo.Find(x => x.RezervasyonID == id);
                lookUpEditMisafir.EditValue = rezervasyon.Misafir;
                dateEdit4G.Text = rezervasyon.GirisTarih.ToString();
                dateEdit3C.Text = rezervasyon.CikisTarih.ToString();
                numericUpDown2.Value = decimal.Parse(rezervasyon.Kisi.ToString());
                lookUpEditOda.EditValue = rezervasyon.Oda;
                TxtTelefon.Text = rezervasyon.Telefon;
                TxtToplam.Text = rezervasyon.Toplam.ToString();
                lookUpEditDurum.EditValue = rezervasyon.Durum;
                TxtAciklama.Text = rezervasyon.Aciklama;
                lookUpEditKisi2.EditValue = rezervasyon.Kisi1;
                lookUpEditKisi3.EditValue = rezervasyon.Kisi2;
                lookUpEditKisi4.EditValue = rezervasyon.Kisi3;
                TxtOdaNo.Text = rezervasyon.TblOda.OdaNo;
            }
        }

        private void BtnVazgec_Click(object sender, EventArgs e)
        {
            this.Close();

        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            TblRezervasyon t = new TblRezervasyon();
            if (numericUpDown2.Value == 1)
            {
                t.Misafir = int.Parse(lookUpEditMisafir.EditValue.ToString());
            }
            if (numericUpDown2.Value == 2)
            {
                t.Misafir = int.Parse(lookUpEditMisafir.EditValue.ToString());
                t.Kisi1 = int.Parse(lookUpEditKisi2.EditValue.ToString());
            }
            if (numericUpDown2.Value == 3)
            {
                t.Misafir = int.Parse(lookUpEditMisafir.EditValue.ToString());
                t.Kisi1 = int.Parse(lookUpEditKisi2.EditValue.ToString());
                t.Kisi2 = int.Parse(lookUpEditKisi3.EditValue.ToString());
            }
            if (numericUpDown2.Value == 4)
            {
                t.Misafir = int.Parse(lookUpEditMisafir.EditValue.ToString());
                t.Kisi1 = int.Parse(lookUpEditKisi2.EditValue.ToString());
                t.Kisi2 = int.Parse(lookUpEditKisi3.EditValue.ToString());
                t.Kisi3 = int.Parse(lookUpEditKisi4.EditValue.ToString());
            }

            //t.Misafir = int.Parse(lookUpEditMisafir.EditValue.ToString());
            //t.Kisi1 = int.Parse(lookUpEditKisi2.EditValue.ToString());
            // t.Kisi2 = int.Parse(lookUpEditKisi3.EditValue.ToString());
            //t.Kisi3 = int.Parse(lookUpEditKisi4.EditValue.ToString());
            t.Oda = int.Parse(lookUpEditOda.EditValue.ToString());
            t.Durum = int.Parse(lookUpEditDurum.EditValue.ToString());
            t.GirisTarih = DateTime.Parse(dateEdit4G.Text);
            t.CikisTarih = DateTime.Parse(dateEdit3C.Text);
            t.Kisi = numericUpDown2.Value.ToString();
            t.Telefon = TxtTelefon.Text;
            t.Toplam = decimal.Parse(TxtToplam.Text);
            //t.RezervasyonAdSoyad = TxtRezervasyonAdSoyad.Text;
            t.Aciklama = TxtAciklama.Text;
            repo.TAdd(t);
            XtraMessageBox.Show("Rezervasyon Başarıyla Kaydedildi");

        }

        private void lookUpEditMisafir_EditValueChanged(object sender, EventArgs e)
        {
            int secilen;
            secilen = int.Parse(lookUpEditMisafir.EditValue.ToString());
            var telefon = db.TblMisafir.Where(x => x.MisafirID == secilen).Select(y => y.Telefon).FirstOrDefault();
            TxtTelefon.Text = telefon.ToString();

        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {

            var rezervasyon = repo.Find(x => x.RezervasyonID == id);
            Repository<TblOda> repo2 = new Repository<TblOda>();
            //odadan çıkış yapıldığı zaman odanın durumu kirli olarak değişecek.
            if (lookUpEditDurum.Text == "Çıkış Yapıldı")
            {
                var odadurum = repo2.Find(x => x.OdaID ==rezervasyon.Oda);
                odadurum.Durum = 3;

                repo2.TUpdate(odadurum);
                rezervasyon.KasayaAktar = true;
                repo.TUpdate(rezervasyon);
                //kasaya aktarma işlemi
                Repository<TblKasaHareketi> repokasa = new Repository<TblKasaHareketi>();
                TblKasaHareketi tkasa = new TblKasaHareketi();
                tkasa.Misafir = lookUpEditMisafir.Text;
                tkasa.Tarih = DateTime.Parse(DateTime.Now.ToShortDateString());
                tkasa.Tutar = decimal.Parse(TxtToplam.Text);
                repokasa.TAdd(tkasa);


            }


            rezervasyon.GirisTarih = DateTime.Parse(dateEdit4G.Text);
            rezervasyon.CikisTarih = DateTime.Parse(dateEdit3C.Text);
            rezervasyon.Kisi = numericUpDown2.Value.ToString();



            rezervasyon.Telefon = TxtTelefon.Text;
            rezervasyon.Oda = int.Parse(lookUpEditOda.EditValue.ToString());
            rezervasyon.Durum = int.Parse(lookUpEditDurum.EditValue.ToString());
            rezervasyon.Aciklama = TxtAciklama.Text;
            rezervasyon.Toplam = decimal.Parse(TxtToplam.Text);

            if (numericUpDown2.Value == 1)
            {
                rezervasyon.Misafir = int.Parse(lookUpEditMisafir.EditValue.ToString());
            }

            if (numericUpDown2.Value == 2)
            {
                rezervasyon.Misafir = int.Parse(lookUpEditMisafir.EditValue.ToString());
                rezervasyon.Kisi1 = int.Parse(lookUpEditKisi2.EditValue.ToString());
            }
            if (numericUpDown2.Value == 3)
            {
                rezervasyon.Misafir = int.Parse(lookUpEditMisafir.EditValue.ToString());
                rezervasyon.Kisi1 = int.Parse(lookUpEditKisi2.EditValue.ToString());
                rezervasyon.Kisi2 = int.Parse(lookUpEditKisi3.EditValue.ToString());
            }
            if (numericUpDown2.Value == 4)
            {
                rezervasyon.Misafir = int.Parse(lookUpEditMisafir.EditValue.ToString());
                rezervasyon.Kisi1 = int.Parse(lookUpEditKisi2.EditValue.ToString());
                rezervasyon.Kisi2 = int.Parse(lookUpEditKisi3.EditValue.ToString());
                rezervasyon.Kisi3 = int.Parse(lookUpEditKisi4.EditValue.ToString());
            }
            repo.TUpdate(rezervasyon);
            XtraMessageBox.Show("Rezervasyon Bilgileri Başarıyla Güncellendi", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Warning);


        }
    }
}
