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

namespace OtelYeniProje.Formlar.WebSite
{
    public partial class FrmOnRezervasyonKarti : Form
    {
        public FrmOnRezervasyonKarti()
        {
            InitializeComponent();
        }
        DbOtelYeniEntities db = new DbOtelYeniEntities();
        public int id;
        Repository<TblOnRezervasyon> repo = new Repository<TblOnRezervasyon>();
        private void FrmOnRezervasyonKarti_Load(object sender, EventArgs e)
        {
            if (id != 0)
            {
                var rezervasyon = repo.Find(x => x.ID == id);
                dateEditTarih.Text = rezervasyon.Tarih.ToString();
                dateEdit4G.Text = rezervasyon.GirisTarih.ToString();
                dateEdit3C.Text = rezervasyon.CikisTarih.ToString();
                numericUpDown2.Value = decimal.Parse(rezervasyon.Kisi.ToString());
                TxtMail.Text = rezervasyon.Mail;
                TxtTelefon.Text = rezervasyon.Telefon;
                TxtAdSoyad.Text = rezervasyon.AdSoyad;
                TxtAciklama.Text = rezervasyon.Aciklama;
            }
                
        }

        

        private void BtnVazgec_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
