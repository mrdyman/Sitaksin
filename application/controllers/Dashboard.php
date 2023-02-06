<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
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
			'title' 		=> 'Dashboard',
			'dosis1'	=>	$this->M_penduduk->dosis1()->num_rows(),
			'dosis2'	=>	$this->M_penduduk->dosis2()->num_rows(),
			'dosis3'	=>	$this->M_penduduk->dosis3()->num_rows(),
			'pd'	=>	$this->M_penduduk->get()->num_rows(),
		];
		
		$this->load->view('layout/header', $data);
		$this->load->view('layout/sidebar', $data);
		$this->load->view('layout/navbar');
		$this->load->view('content/admin/dashboard/index', $data);
		$this->load->view('layout/footer');
	}
}
