<?php

class PaintingsController {
    // GET /paintings
    static function getPaintings($req, $res, $service, $app){

        $stm = $app->db->prepare('SELECT * FROM paintings');
        $stm->execute();
        $dbres = $stm->fetchAll(PDO::FETCH_ASSOC);

        $data = array_map(function($entry){
            return [
                'id_painting' => +$entry['id_painting'],
                'name' => $entry['name'],
                'year' => $entry['year'],
                'location' => $entry['location'],
                'imgurl' => $entry['imgurl'],
                'infourl' => $entry['infourl'],
                'description' => $entry['description'],
            ];
        }, $dbres);
        $res->json($data);

    }

     // GET /threerandompaintings
     static function getThreeTandomPaintings($req, $res, $service, $app){

        $stm = $app->db->prepare('SELECT count(id_painting) AS num_paintings FROM paintings');
        $stm->execute();
        $entry = $stm->fetch(PDO::FETCH_ASSOC);

        $rand1 = rand(1, +$entry['num_paintings']);
        $rand2 = rand(1, +$entry['num_paintings']);
        $rand3 = rand(1, +$entry['num_paintings']);

        $parameters = $req->body();
		$parameters = json_decode($parameters, true);

        while($rand1 == $rand2 || $rand2 == $rand3 || $rand1 == $rand3 || $rand1 == $parameters['id_painting'] || $rand2 == $parameters['id_painting'] || $rand3 == $parameters['id_painting'])
        {
            $rand1 = rand(1, +$entry['num_paintings']);
            $rand2 = rand(1, +$entry['num_paintings']);
            $rand3 = rand(1, +$entry['num_paintings']);
        }


        $stm = $app->db->prepare('SELECT * FROM paintings WHERE id_painting = :rand1 OR id_painting = :rand2 OR id_painting = :rand3');
        $stm->bindValue(":rand1", $rand1);
        $stm->bindValue(":rand2", $rand2);
        $stm->bindValue(":rand3", $rand3);
        $stm->execute();
        $dbres = $stm->fetchAll(PDO::FETCH_ASSOC);

        $data = array_map(function($entry){
            return [
                'id_painting' => +$entry['id_painting'],
                'name' => $entry['name'],
                'year' => $entry['year'],
                'location' => $entry['location'],
                'imgurl' => $entry['imgurl'],
                'infourl' => $entry['infourl'],
                'description' => $entry['description'],
            ];
        }, $dbres);
        $res->json($data);

    }

    //POST /getPaintingsById
    static function getPaintingById($req, $res, $service, $app){

        $parameters = $req->body();
		$parameters = json_decode($parameters, true);
		$stm = $app->db->prepare('SELECT * FROM paintings INNER JOIN authors ON paintings.id_author = authors.id_author WHERE id_painting = :id_painting');
		$stm->bindValue(":id_painting", $parameters['id_painting']);
		$stm->execute();
        $entry = $stm->fetch(PDO::FETCH_ASSOC);
        
        $res->json([
            'id_painting' => +$entry['id_painting'],
            'name' => $entry['name'],
            'year' => $entry['year'],
            'location' => $entry['location'],
            'imgurl' => $entry['imgurl'],
            'infourl' => $entry['infourl'],
            'description' => $entry['description'],
            'id_author' => +$entry['id_author'],
            'name_author' => $entry['name_author'],
            'infourl_author' => $entry['infourl_author'],

        ]);

    }

    //POST //tips
    static function getTips($req, $res, $service, $app){

        $parameters = $req->body();
		$parameters = json_decode($parameters, true);
		$stm = $app->db->prepare('SELECT tips.id_tip, description FROM tips INNER JOIN tips_paintings ON tips.id_tip = tips_paintings.id_tip WHERE id_painting = :id_painting');
		$stm->bindValue(":id_painting", $parameters['id_painting']);
		$stm->execute();
        $dbres = $stm->fetchAll(PDO::FETCH_ASSOC);

        $data = array_map(function($entry){
            return [
                'id_tip' => +$entry['id_tip'],
                'description' => $entry['description'],
            ];
        }, $dbres);
        $res->json($data);

    }

    

    
}

?>