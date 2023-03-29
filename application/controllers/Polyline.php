<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Polyline extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_Polyline');
	}

	public function Store()
	{
        $koordinat = $this->input->post('koordinat');

        $koordinat = json_encode($koordinat);

        $remove1 = str_replace('",', '],', $koordinat);
        $remove2 = str_replace(',"', '[', $remove1);
        $remove3 = str_replace('"', '', $remove2);
        $remove4 = str_replace('][', '],[', $remove3);
        $parsedCoordinate = $remove4;

        $data = [
            "titik_awal" => $this->input->post('tAwal'),
            "titik_tujuan" => $this->input->post('tTujuan'),
            "jalur" => $this->input->post('jalur'),
            "koordinat" => $parsedCoordinate,
            "jarak" => $this->input->post('jarak')
        ];
        if($this->M_Polyline->Store($data)){
            echo json_encode("OK");
        }
    }

    public function getPolyline(){
        echo json_encode($this->M_Polyline->getPolyline());
    }
}