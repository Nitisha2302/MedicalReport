<?php

if (!function_exists('hello')) {
    function hello($name)
    {
        return "Hello, $name!";
    }
}

if(!function_exists('get_user_status')){
    function getUserStatus($userStatus)
    {
        if ($userStatus == 'Suspended')
        {
            return 'Suspended';
        }
        elseif ($userStatus == 'Inactive')
        {
            return 'Inactive';
        }
    }
}

// You can define more helper functions here...
