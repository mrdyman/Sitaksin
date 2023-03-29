<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tsp_Model extends CI_Model
{
	public function getPolyline()
	{
        return $this->db->get('polyline')->result_array();
	}

    public function getJarak($source, $destination)
	{
		// echo $source . $destination . '<br>';
		// echo '<br>'. json_encode($this->db->get_where('polyline', ['titik_awal' => $source, 'titik_tujuan' => $destination])->result_array());
		// die;
        return $this->db->get_where('polyline', ['titik_awal' => $source, 'titik_tujuan' => $destination])->result_array()[0]['jarak'];
	}
}
