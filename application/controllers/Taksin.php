<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Taksin extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_penduduk');
		$this->load->model('Tsp_Model');
	}

	public function index()
	{
		$data = [
			'title' => 'Target Vaksin',
			'penduduk' => $this->M_penduduk->get(),
		];
		$this->load->view('layout/header', $data);
		$this->load->view('layout/sidebar', $data);
		$this->load->view('layout/navbar', $data);
		$this->load->view('content/admin/target/index');
		$this->load->view('layout/footer');
	}

	public function getMarker(){
		echo json_encode($this->M_penduduk->get());
	}

	public function test()
	{
		$dataCheck = $this->input->post('vaksinCheck');

		$query = $this->db->select('*');
		$db = $query;
		if (in_array('vaksin1', $dataCheck)) {
			$db .= $query->where('sd1', '1');
		}

		if (in_array('vaksin2', $dataCheck)) {
			$db .= $query->where('sd2', '1');
		}

		if (in_array('vaksin3', $dataCheck)) {
			$db .= $query->where('sd3', '1');
		}

		$aa = $db->from('penduduk')->get();

		// $aa = $db->get();

		var_dump($aa);



		// foreach ($data as $row) {
		// 	echo $row;
		// }
		// var_dump(implode(', ', $data));
	}
}
