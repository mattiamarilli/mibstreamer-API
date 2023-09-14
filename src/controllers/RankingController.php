<?php

class RankingController {
    //POST //ranking
    static function getRanking($req, $res, $service, $app){
        $parameters = $req->body();
        $paramaters = json_decode($parameters, true);
        $stm = $app->db->prepare('SELECT ROW_NUMBER() OVER(ORDER BY score DESC) AS row, score, nickname FROM scores WHERE id_painting = :id_painting ');
        $stm->bindValue(":id_painting", $paramaters['id_painting']);
        $stm->execute();
        $dbres = $stm->fetchAll(PDO::FETCH_ASSOC);

        $data = array_map(function($entry){
            return [
                'row' => $entry['row'],
                'nickname' => $entry['nickname'],
                'score' => +$entry['score']
            ];
        }, $dbres);
        $res->json($data);
    }

    //POST //newscore
    static function setNewScore($req, $res, $service, $app){
        $parameters = $req->body();
		$paramaters = json_decode($parameters, true);
		$stm = $app->db->prepare('INSERT INTO scores (id_painting, nickname, score) VALUES (:id_painting, :nickname, :score)');
		$stm->bindValue(":nickname", $paramaters['nickname']);
		$stm->bindValue(":score", $paramaters['score']);
        $stm->bindValue(":id_painting", $paramaters['id_painting']);
	    
        if($stm->execute()){
				$res->json(["message" => "OK", "code" => 200 ]);
		}
		else{
			$res->json(["message" => "Error: score not inserted", "code" => 500 ]);
		}
    }

    //POST //checknickname
    static function checkNickName($req, $res, $service, $app){
        $parameters = $req->body();
		$paramaters = json_decode($parameters, true);
		$stm = $app->db->prepare('SELECT * FROM scores WHERE nickname = :nickname');
		$stm->bindValue(":nickname", $paramaters['nickname']);
        $stm->execute();
	    
        if($stm->rowCount() == 0){
            $res->json(["message" => "OK", "code" => 200 ]);
		}
		else{
			$res->json(["message" => "Error: nickname already exist", "code" => 500 ]);
		}
    }



}

?>