<?php 
switch (apache_request_headers()['battlebots']) {
    case 'leaderboard':
        $response = json_encode($DB->Select("SELECT * FROM livedata WHERE type = ? LIMIT 1", ["leaderboard"])[0]);
        header("livedata: {$response}");
    break;
    default:
        exit(418);
    break;
}
?>