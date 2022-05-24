<?php 
    class Post_bevent{
        private $conn;
        private $table="bevent";
        public $id;
        public $id_bin;
        public $status;
        public function __construct($db)
        {
            $this->conn = $db;
        }
        
        public function read(){
            $query = "SELECT id,id_bin,`status` FROM ".$this->table;
            $stmt = $this->conn->prepare($query);
            $stmt->execute();
            return $stmt;
        }
    }
