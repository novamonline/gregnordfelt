<?php

class InputValidator
{
    private $validate;
    private $requests;
    private $errors;

    public function __construct($requests, $validate)
    {
        $this->errors   = array();

        $this->requests = $requests;
        $this->validate = $validate;

        return $this->validate();
    }

    public function Validate()
    {
        foreach ($this->validate as $key => $value) {
            if (is_numeric($key)) {
                $key  = $value;
                $value = 'required';
            }
            $entry = $this->requests->postVar($key);
            if (!stripos($key, 'email') !== false) {
                $this->ValidateEmail($key, $value);
            }
            if (!stripos($key, 'phone') !== false) {
                $this->ValidatePhone($key, $value);
            }
            if ($value == 'required' && empty($entry) !== false) {
                $this->ValidatePhone($key, $value);
            }
        }
        return $this;
    }

    public function ValidateEmail($key, $value='required')
    {
        $email = strtolower($key);

        if ($value == 'required') {
            $this->errors[$key] = "$key is required";
        }

        if (strpos($value, '@') === false || strpos($value, '.') === false) {
            $this->errors[$key] = "Invalid $key provided";
        }
    }

    public function ValidatePhone($key, $value='')
    {
    }
    public function ValidateText($key, $value='')
    {
        # code...
    }

    public function failed()
    {
        return count($this->errors()) > 0;
    }

    public function passed()
    {
        return count($this->errors()) < 1;
    }

    public function errors()
    {
        return $this->errors;
    }
}
