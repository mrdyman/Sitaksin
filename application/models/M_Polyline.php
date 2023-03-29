<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_Polyline extends CI_Model
{
	public function getPolyline($result = false)
	{
        $koor = [];

        if($result){
            $data = $this->db->get('result')->result_array();
        }else{
            $data = $this->db->get('polyline')->result_array();
        }

        foreach($data as $d){
            $koordinat = $d['koordinat'];
            $titik_awal = $d['titik_awal'];
            $titik_tujuan = $d['titik_tujuan'];
            $koor[$titik_awal][$titik_tujuan] = $koordinat;
        }

        ksort($koor);

        while (true) {
            $reset = false;
            foreach ($koor as $key1 => $value) {
                if (empty($value)) {
                    foreach ($koor as $key2 => $arr) {
                        foreach ($arr as $key3 => $value) {
                            if ($key3 == $key1) {
                                $koor[$key1][$key2] = $value;
                                unset($koor[$key2][$key1]);
                            }
                        }
                    }
                    $reset = true;
                }
            }
            if (!$reset) {
                break;
            }
        }
        foreach ($koor as $key1 => $arr) {
            foreach ($arr as $key2 => $value) {
                $explode = $this->explodearray(array('[', ',', ']'), $koor[$key1][$key2]);
                $hasilkoor[$key1][$key2] = $explode;
            }
        }
        return $hasilkoor;
    }

    function explodearray($delimiters, $array, $kv = '=>')
    {
        $a = true;
        $b = 0;
        $c = 0;
        if ($a = explode(chr(1), str_replace($delimiters, chr(1), $array))) {
            foreach ($a as $s) {
                if ($s) {
                    if ($pos = strpos($s, $kv)) {
                        $ka[trim(substr($s, 0, $pos))] = trim(substr($s, $pos + strlen($kv)));
                    } else {
                        if ($a == true) {
                            $ka['lat'][$b++] = trim($s);
                            $a = false;
                        } else {
                            $ka['lng'][$c++] = trim($s);
                            $a = true;
                        }
                    }
                }
            }
            return $ka;
        }
    }

	public function Store($data)
	{
        return $this->db->insert('polyline', $data);
    }
}