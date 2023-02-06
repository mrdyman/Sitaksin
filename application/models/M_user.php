<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_user extends CI_Model
{
	public function get()
	{

		$sql = "SELECT * FROM `user`";

		$data = $this->db->query($sql);

		return $data->result();
	}

	public function insert($data)
	{
		$this->db->insert('user', $data);
	}

	public function update($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('user', $data);
	}

	// public function delete($data)
	// {
	// 	$this->db->where('id', $data['id']);
	// 	$this->db->delete('user', $data);
	// }

	public function nonaktif($id)
	{
		$sql = "UPDATE `user` SET `active` = '0' WHERE `id` = '" . $id . "';";

		$this->db->query($sql);

		return $this->db->affected_rows();
	}

	public function aktif($id)
	{
		$sql = "UPDATE `user` SET `active` = '1' WHERE `id` = '" . $id . "';";

		$this->db->query($sql);

		return $this->db->affected_rows();
	}
}
