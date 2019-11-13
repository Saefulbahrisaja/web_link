<?php
    class Grapik_model extends CI_Model{
        function get_data(){
            $this->db->select('pendidikan,total_pendidikan');
            $result = $this->db->get('data_warga_pendidikan');
            return $result;
        }

        function get_agama(){
            $this->db->select('pendidikan,total_pendidikan');
            $result = $this->db->get('data_warga_pendidikan');
            return $result;
        }
    }
?>