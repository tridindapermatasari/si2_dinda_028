<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Hello extends CI_Controller {
    public function index()
    {
        echo 'Hello World!!!';
    }

    public function hello1()
    {
        echo 'hello';
    }

    public function hello2($nama)
    {
        echo 'hello '.$nama;
    }
}