<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penduduk extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_penduduk');
		cek_login();
	}

	public function index()
	{
		$data = [
			'title' => 'Data Penduduk',
			'penduduk' => $this->M_penduduk->get()->result(),
		];

		$this->load->view('layout/header', $data);
		$this->load->view('layout/sidebar', $data);
		$this->load->view('layout/navbar', $data);
		$this->load->view('content/admin/penduduk/index', $data);
		$this->load->view('layout/footer');
	}

	public function add()
	{
		$this->form_validation->set_rules('nik', 'NIK', 'trim|is_unique[penduduk.nik]');
		if ($this->form_validation->run() != false) {
			$data 	= [
				'nik' => $this->input->post('nik'),
				'nama' => $this->input->post('nama'),
				'ttl' => $this->input->post('tmpt') . ', ' . $this->input->post('tgl'),
				'jk' => $this->input->post('jk'),
				'alamat' => $this->input->post('alamat'),
				'agama' => $this->input->post('agama'),
				'sd1' => $this->input->post('st1'),
				'sd2' => $this->input->post('st2'),
				'sd3' => $this->input->post('st3'),
				'latitude' => $this->input->post('lat'),
				'longitude' => $this->input->post('long')
			];
			$this->M_penduduk->insert($data);
			$this->session->set_flashdata('swetalert', '`Good job!`, `Data Berhasil Di Tambahkan !`, `success`');
			redirect('penduduk');
		} else {
			$this->session->set_flashdata('swetalert', '`Upsss!`, `NIK yang anda masukkan sudah ada !`, `error`');
			redirect('penduduk');
		}
	}

	public function update()
	{
		$id = $this->input->post('id');
		$cek = $this->M_penduduk->get_where($id);

		$nik = $this->input->post('nik');
		if ($nik == $cek->nik) {
			$data 	= [
				'id' => $this->input->post('id'),
				'nik' => $this->input->post('nik'),
				'nama' => $this->input->post('nama'),
				'ttl' => $this->input->post('tmpt') . ', ' . $this->input->post('tgl'),
				'jk' => $this->input->post('jk'),
				'alamat' => $this->input->post('alamat'),
				'agama' => $this->input->post('agama'),
				'sd1' => $this->input->post('st1'),
				'sd2' => $this->input->post('st2'),
				'sd3' => $this->input->post('st3')
			];
			$this->M_penduduk->update($data, $id);
			$this->session->set_flashdata('swetalert', '`Good job!`, `Data Berhasil Di Update !`, `success`');
			redirect('penduduk');
		} else {
			$this->form_validation->set_rules('nik', 'NIK', 'trim|is_unique[penduduk.nik]');
			if ($this->form_validation->run() != false) {
				$data 	= [
					'nik' => $this->input->post('nik'),
					'nama' => $this->input->post('nama'),
					'ttl' => $this->input->post('tmpt') . ', ' . $this->input->post('tgl'),
					'jk' => $this->input->post('jk'),
					'alamat' => $this->input->post('alamat'),
					'agama' => $this->input->post('agama'),
					'sd1' => $this->input->post('st1'),
					'sd2' => $this->input->post('st2'),
					'sd3' => $this->input->post('st3')
				];
				$this->M_penduduk->update($data, $id);
				$this->session->set_flashdata('swetalert', '`Good job!`, `Data Berhasil Di Update !`, `success`');
				redirect('penduduk');
			} else {
				$this->session->set_flashdata('swetalert', '`Upsss!`, `NIK yang anda masukkan sudah ada !`, `error`');
				redirect('penduduk');
			}
		}
	}

	public function delete()
	{
		$id = $this->input->post('id');
		$this->M_penduduk->delete($id);
		$this->session->set_flashdata('swetalert', '`Good job!`, `Data Berhasil Di Hapus !`, `success`');
		redirect('penduduk');
	}
}
