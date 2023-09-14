<?php

class IndexController {

    static function get($req, $res, $service, $app){
        $res->json(['message' => 'Welcome FaceArt API', 'version' => 'alpha-0.0']);
    }

}

?>