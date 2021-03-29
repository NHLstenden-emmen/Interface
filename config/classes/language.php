<?php 
class Language {
    
    public $lang = [];
    public $chosenLanguage;

    function __construct()
    {
        global $TPL, $core;

        switch (@$_COOKIE['lang']) {
            case 'en':
                $this->chosenLanguage = 'en';
                require("language/lang.en.php");
            break;
            case 'nl':
            default:
                $this->chosenLanguage = 'nl';
                require("language/lang.nl.php");
            break;
        }

        $core->SetCookie('lang', $this->chosenLanguage);

        foreach($this->lang as $key => $value)  $TPL->Set($key, $value);
    }

    function changeLanguage()
    {
        global $core;
        
        switch ($_COOKIE['lang']) 
        {
            case 'nl':
                $core->SetCookie('lang', 'en');
            break;
            case 'en':
                $core->SetCookie('lang', 'nl');
            break;
        }
    }

}
?>