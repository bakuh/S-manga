<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
* @name CI Smarty
* @copyright Dwayne Charrington, 2011.
* @author Dwayne Charrington and other Github contributors
* @license (DWYWALAYAM) 
           Do What You Want As Long As You Attribute Me Licence
* @version 1.2
* @link http://ilikekillnerds.com
*/

class Index extends CI_Controller {

		/**
     * Construct
     * 初期化
     */
    public function __construct()
    {
        parent::__construct();
    }


		/**
     * Index
     *
     */
    public function index()
    {
				// ----------------------------------------------------
				// Initialize
				// ----------------------------------------------------
				
				
				// ----------------------------------------------------
				// Main Process
				// ----------------------------------------------------
				

				// ----------------------------------------------------
				// Output HTML
				// ----------------------------------------------------
        $this->parser->parse("index.tpl");
    }

}