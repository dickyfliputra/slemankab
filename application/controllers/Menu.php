<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Menu extends CI_Controller
{
    public function index()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['title'] = 'Menu Management';

        $data['menu'] = $this->db->get('user_menu')->result_array();

        $this->form_validation->set_rules('menu', 'Menu', 'required');
        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('menu/index', $data);
            $this->load->view('templates/footer');
        } else {
            $this->db->insert('user_menu', ['menu' => $this->input->post('menu')]);
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Menu Baru Telah Ditambahkan</div>');
            redirect('menu');
        }
    }
    public function hapus($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('user_menu');
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">Menu Telah Dihapus</div>');
        redirect('menu');
    }
    public function ubah($id)
    {

        $this->db->where('id', $id);
        $this->db->update('user_menu', ['menu' => $this->input->post('menu')]);
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">Menu Telah Diubah</div>');
        redirect('menu');

        //redirect('prestasi');
    }

    public function submenu()
    {
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['title'] = 'Submenu Management';

        //$data['menu'] = $this->db->get('user_menu')->result_array();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('menu/submenu', $data);
        $this->load->view('templates/footer');
    }
}
