using CapaDiseño.Consulta;
using CapaLogica;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.Net.NetworkInformation;

namespace CapaDiseño.Mantenimientos
{
    public partial class Frm_MantTipoContratacion : Form
    {
        Logica logic = new Logica();

        string slocalIP;
        string smacAddresses;
        string suser;
        string scampo;
	string tipopermiso;
	 
        public void obtenerip()
        {
            IPHostEntry host;
            host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (IPAddress ip in host.AddressList)
            {
                if (ip.AddressFamily.ToString() == "InterNetwork")
                {
                    slocalIP = ip.ToString();
                }
            }
            foreach (NetworkInterface nic in NetworkInterface.GetAllNetworkInterfaces())
            {
                if (nic.OperationalStatus == OperationalStatus.Up)
                {
                    smacAddresses += nic.GetPhysicalAddress().ToString();
                    break;

                }
            }
        }
        public Frm_MantTipoContratacion(String susuario, String permiso)
        {
            InitializeComponent();
            obtenerip();
            suser = susuario;

            Cbo_Estado.Items.Add("Activo");
            Cbo_Estado.Items.Add("Inactivo");
            bloqueartxt();
	    scampo = logic.siguiente("mediodecomunicacion", "pkmediodecomunicacion");
            Txt_Codigo.Text = scampo;
	    /*------------------------*/
            Btn_guardar.Enabled = false;
            Btn_editar.Enabled = false;
            Btn_borrar.Enabled = false;
            /*------------------------*/
            tipopermiso = permiso;
        }
	public void bloqueartxt()
        {
            
            Txt_Codigo.Enabled = false;
            Cbo_Contrato.Enabled = false;
            Cbo_Estado.Enabled = false;
            Cbo_Mes.Enabled =  false;
            Cbo_Proyecto.Enabled = false;
            Cbo_Estado.Enabled = false;
        }
        public void desbloqueartxt()
        {           
            Txt_Codigo.Enabled = true;
            Cbo_Contrato.Enabled = true;
            Cbo_Estado.Enabled = true;
            Cbo_Mes.Enabled = true;
            Cbo_Proyecto.Enabled = true;

            Cbo_Estado.Enabled = true;
        }
        public void limpiar()
        {
            Txt_Codigo.Text = "";
            Cbo_Contrato.Text = "";
            Cbo_Estado.Text = "";
            Cbo_Mes.Text = "";
            Cbo_Proyecto.Text = "";

            Cbo_Estado.Text = "";
        }
	public void permisos()
        {
            if (tipopermiso == "1111")
            {
                //todos
                Btn_guardar.Enabled = true;
                Btn_editar.Enabled = true;
                Btn_borrar.Enabled = true;
                Btn_consultar.Enabled = true;
                desbloqueartxt();
            }
            if (tipopermiso == "1001")
            {
                //Guardar
                Btn_guardar.Enabled = true;
                Btn_editar.Enabled = false;
                Btn_borrar.Enabled = false;
                Btn_consultar.Enabled = true;
                desbloqueartxt();
            }
            if (tipopermiso == "0101")
            {
                //modificar
                Btn_guardar.Enabled = false;
                Btn_editar.Enabled = true;
                Btn_borrar.Enabled = false;
                Btn_consultar.Enabled = true;
                desbloqueartxt();
            }
            if (tipopermiso == "0011")
            {
                //eliminar
                Btn_guardar.Enabled = false;
                Btn_editar.Enabled = false;
                Btn_borrar.Enabled = true;
                Btn_consultar.Enabled = true;
                desbloqueartxt();
            }
            if (tipopermiso == "0001")
            {
                Btn_guardar.Enabled = false;
                Btn_editar.Enabled = false;
                Btn_borrar.Enabled = false;
                Btn_ingresar.Enabled = false;
                Btn_consultar.Enabled = true;
            }
        }
        private void Frm_MantTipoContratacion_Load(object sender, EventArgs e)
        {

        }

        private void GroupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Btn_cerrar_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void Btn_Ayuda_Click(object sender, EventArgs e)
        {
            string ruta = "";
            string indice = "";

            OdbcDataReader mostrarEmpleado = logic.consultaayuda("15");
            try
            {
                while (mostrarEmpleado.Read())
                {
                    ruta = mostrarEmpleado.GetString(1);
                    indice = mostrarEmpleado.GetString(2);
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

            Help.ShowHelp(this, ruta, indice);
        }

        private void Btn_minimizar_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Pic_Consultar_Click(object sender, EventArgs e)
        {
            Frm_TipoContratacion concep = new Frm_TipoContratacion();
            concep.ShowDialog();
        }

        private void Btn_ingresar_Click(object sender, EventArgs e)
        {
            permisos();
        }

        private void Btn_editar_Click(object sender, EventArgs e)
        {
            if (Cbo_Estado.Text == "Activo")
            {
                Cbo_Estado.Text = "1";
            }
            else
            {
                Cbo_Estado.Text = "0";
            }
            OdbcDataReader cita = logic.ModificarTC(Txt_Codigo.Text, Cbo_Contrato.Text, Cbo_Mes.Text, comboBox3.Text, Cbo_Estado.Text);
            MessageBox.Show("Datos modificados correctamente.");
            logic.bitacora("0", slocalIP, smacAddresses, suser, "RRHH", DateTime.Now.ToString("G"), "Modificar", this.GetType().Name);
	    limpiar();
        }

        private void Btn_guardar_Click(object sender, EventArgs e)
        {
            if (Cbo_Estado.Text == "Activo")
            {
                Cbo_Estado.Text = "1";
            }
            else
            {
                Cbo_Estado.Text = "0";
            }
            OdbcDataReader cita = logic.InsertarTC(Txt_Codigo.Text,Cbo_Contrato.Text, Cbo_Mes.Text, comboBox3.Text, Cbo_Estado.Text);
            MessageBox.Show("Datos insertar correctamente.");
            logic.bitacora("0", slocalIP, smacAddresses, suser, "RRHH", DateTime.Now.ToString("G"), "Guardar", this.GetType().Name);
	    limpiar();
        }

        private void Btn_borrar_Click(object sender, EventArgs e)
        {
            OdbcDataReader cita = logic.eliminarTC(Txt_Codigo.Text);
            MessageBox.Show("Eliminado Correctamente.");
            logic.bitacora("0", slocalIP, smacAddresses, suser, "RRHH", DateTime.Now.ToString("G"), "Eliminar", this.GetType().Name);
	    limpiar();
        }

        private void Btn_consultar_Click(object sender, EventArgs e)
        {
            Frm_TipoContratacion concep = new Frm_TipoContratacion();
            concep.ShowDialog();
            if (concep.DialogResult == DialogResult.OK)
            {
                Txt_Codigo.Text = concep.Dgv_consultaContratacion.Rows[concep.Dgv_consultaContratacion.CurrentRow.Index].
                      Cells[0].Value.ToString();
                Cbo_Contrato.Text = concep.Dgv_consultaContratacion.Rows[concep.Dgv_consultaContratacion.CurrentRow.Index].
                      Cells[1].Value.ToString();
                Cbo_Mes.Text = concep.Dgv_consultaContratacion.Rows[concep.Dgv_consultaContratacion.CurrentRow.Index].
                      Cells[2].Value.ToString();
                Cbo_Proyecto.Text = concep.Dgv_consultaContratacion.Rows[concep.Dgv_consultaContratacion.CurrentRow.Index].
                      Cells[3].Value.ToString();
                comboBox3.Text = concep.Dgv_consultaContratacion.Rows[concep.Dgv_consultaContratacion.CurrentRow.Index].
                      Cells[4].Value.ToString();

            }
        }
    }
}
