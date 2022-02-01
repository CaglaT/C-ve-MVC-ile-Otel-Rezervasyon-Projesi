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

namespace OtelYeniProje.Formlar.Urun
{
    public partial class FrmUrunHareketTanimi : Form
    {
        public FrmUrunHareketTanimi()
        {
            InitializeComponent();
        }
        DbOtelYeniEntities db = new DbOtelYeniEntities();
        Repository<TblUrunHareket> repo = new Repository<TblUrunHareket>();
        TblUrunHareket t = new TblUrunHareket();
        public int id;

        private void FrmUrunHareketTanimi_Load(object sender, EventArgs e)
        {
            //id tanımı
            TxtID.Text = id.ToString();
            TxtID.Enabled = false;

            //ürün listesi
            lookUpEditUrun.Properties.DataSource = (from x in db.TblUrun
                                                        select new
                                                        {
                                                            x.UrunID,
                                                            x.UrunAd
                                                        }).ToList();
            //verilerin kart alanlarına doldurulması
            if (id != 0)
            {
                var urun = repo.Find(x => x.Hareketid == id);
                lookUpEditUrun.EditValue = urun.Urun;
                TxtMiktar.Text = urun.Miktar.ToString();
                TxtAciklama.Text = urun.Aciklama;
                comboBox1.Text = urun.HareketTuru;
                dateEdit1.Text = urun.Tarih.ToString();

            }

        }

        private void BtnVazgec_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnKaydet_Click(object sender, EventArgs e)
        {
            t.Urun = int.Parse(lookUpEditUrun.EditValue.ToString());
            t.Tarih = DateTime.Parse(dateEdit1.Text);
            t.HareketTuru = comboBox1.Text;
            t.Miktar = decimal.Parse(TxtMiktar.Text);
            t.Aciklama = TxtAciklama.Text;
           
            if (comboBox1.Text == "Giriş")
            {
                t.BirimFiyat = decimal.Parse(TxtBirimFiyat.Text);
                t.ToplamFiyat = decimal.Parse(TxtToplam.Text);
            }
            else
            {
                t.BirimFiyat = decimal.Parse(TxtBirimFiyat.Text);
                t.ToplamFiyat = decimal.Parse(TxtToplam.Text);
            }
            repo.TAdd(t);
            XtraMessageBox.Show("Ürün Hareketi Sisteme Kaydedildi");
        }

        private void btnGuncelle_Click(object sender, EventArgs e)
        {
            var urun = repo.Find(x => x.Hareketid == id);
            urun.Urun = int.Parse(lookUpEditUrun.EditValue.ToString());
            urun.Tarih = DateTime.Parse(dateEdit1.Text);
            urun.HareketTuru = comboBox1.Text;
            urun.Miktar = decimal.Parse(TxtMiktar.Text);
            urun.Aciklama = TxtAciklama.Text;
            repo.TUpdate(urun);
            XtraMessageBox.Show("Ürün Hareketi Başarılı Bir Şekilde Güncellendi");
        }

        private void lookUpEditUrun_EditValueChanged(object sender, EventArgs e)
        {
            int secilen;
            secilen = int.Parse(lookUpEditUrun.EditValue.ToString());
            var birimfiyat = db.TblUrun.Where(x => x.UrunID == secilen).Select(y => y.Fiyat).FirstOrDefault();
            TxtBirimFiyat.Text = birimfiyat.ToString();

        }

        private void groupControl4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void pictureEdit9_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void TxtMiktar_EditValueChanged(object sender, EventArgs e)
        {

        }

       

        private void numericUpDown1_ValueChanged(object sender, EventArgs e)
        {
            if (comboBox1.Text == "Giriş")
            {
                double miktar, birimfiyat, toplam;
                miktar = Convert.ToDouble(TxtMiktar.Value);
                birimfiyat = Convert.ToDouble(TxtBirimFiyat.Text);
                toplam = miktar
                    * birimfiyat;
                TxtToplam.Text = toplam.ToString();
            }
            else
            {
                double miktar, birimfiyat, toplam;
                miktar = Convert.ToDouble(TxtMiktar.Value);
                birimfiyat = Convert.ToDouble(TxtBirimFiyat.Text);
                toplam = miktar
                    * birimfiyat;
                TxtToplam.Text = toplam.ToString();
            }
        }
    }
} 