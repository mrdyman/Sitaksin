<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Management_User extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_user');
		cek_login();
		check_admin();
	}

	public function index()
	{
		$data = [
			'title' => 'Management User',
			'user' => $this->M_user->get()
		];
		$this->load->view('layout/header', $data);
		$this->load->view('layout/sidebar', $data);
		$this->load->view('layout/navbar');
		$this->load->view('content/admin/management_user/index', $data);
		$this->load->view('layout/footer');
	}

	public function add()
	{
		$data 	= [
			'nama' => $this->input->post('nama'),
			'username' => $this->input->post('username'),
			'password' => $this->input->post('pass'),
			'role' => $this->input->post('role'),
			'active' => '1',
		];
		$this->M_user->insert($data);
		$this->session->set_flashdata('swetalert', '`Good job!`, `Data Berhasil Di Tambahkan !`, `success`');
		redirect('Management_User');
	}

	public function update()
	{
		$id = $this->input->post('id');
		$data = array(
			'username' => $this->input->post('username'),
			'password' => $this->input->post('password')
		);
		$this->M_user->update($data, $id);
		$this->session->set_flashdata('swetalert', '`Good job!`, `Data Berhasil Di Update!`, `success`');
		redirect('Management_User');
	}

	// public function delete($iduser = NULL)
	// {
	// 	$data = array('iduser' => $iduser);
	// 	$this->M_user->delete($data);
	// 	$this->session->set_flashdata('swetalert', '`Good job!`, `Data Berhasil Di Hapus!`, `success`');
	// 	redirect('Management_User');
	// }

	public function nonaktif($id)
	{
		$result = $this->M_user->nonaktif($id);
		if ($result > 0) {
			$this->session->set_flashdata('swetalert', '`Berhasil`, `Akun Berhasil di Non Aktifkan`, `success`');
			redirect('Management_User');
		} else {
			$this->session->set_flashdata('swetalert', '`Upsss!`, `Akun Gagal di Non Aktifkan`, `error`');
			redirect('Management_User');
		}
	}

	public function aktif($id)
	{
		$result = $this->M_user->aktif($id);
		if ($result > 0) {
			$this->session->set_flashdata('swetalert', '`Berhasil!`, `Akun Berhasil di Aktifkan`, `success`');
			redirect('Management_User');
		} else {
			$this->session->set_flashdata('swetalert', '`Upsss!`, `Akun Gagal di Aktifkan`, `error`');
			redirect('Management_User');
		}
	}
}
