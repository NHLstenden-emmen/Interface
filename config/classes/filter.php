<?php 

class Filter {
    
    public $debug;

    function validateInput($input, $type)
    {

        $filter = false;
 
        switch ($type) {
            case 'email':
                $input = substr($input, 0, 255);
                $filter = FILTER_VALIDATE_EMAIL;
            break;
            case 'int':
                $filter = FILTER_VALIDATE_INT;
            break;
            case 'url':
                $filter = FILTER_VALIDATE_URL;
            break;
        }
 
        return filter_var($input, $filter);
    }

    function sanatizeInput($input, $type)
    {
        $flags = null;
 
        switch ($type) {
            case 'url':
                $filter = FILTER_SANITIZE_URL;
            break;
            case 'int':
                $filter = FILTER_SANITIZE_NUMBER_INT;
            break;
            case 'float':
                $filter = FILTER_SANITIZE_NUMBER_FLOAT;
                $flags = FILTER_FLAG_ALLOW_FRACTION | FILTER_FLAG_ALLOW_THOUSAND;
            break;
            case 'email':
                $input = substr($input, 0, 255);
                $filter = FILTER_SANITIZE_EMAIL;
            break;
            case 'string':
                $filter = FILTER_SANITIZE_STRING;
                $flags = FILTER_FLAG_NO_ENCODE_QUOTES;
            default:
                $filter = FILTER_SANITIZE_SPECIAL_CHARS;
            break;
 
        }
 
        return filter_var($input, $filter, $flags);
   }
    
}
?>