<?php 
/**
* @package   ZOO Slider
* @file      mod_zooslider.css.php
* @version   2.4.11
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

if (extension_loaded('zlib') && !ini_get('zlib.output_compression')) @ob_start('ob_gzhandler');
header('Content-type: text/css; charset=UTF-8');
header('Expires: ' . gmdate('D, d M Y H:i:s', time() + 86400) . ' GMT');

define('DS', DIRECTORY_SEPARATOR);
define('PATH_ROOT', dirname(__FILE__) . DS);

/* ie browser */
$is_ie7 = strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'msie 7') !== false;
$is_ie6 = strpos(strtolower($_SERVER['HTTP_USER_AGENT']), 'msie 6') !== false;

/* general styling */
include(PATH_ROOT . 'tmpl/style.css');

/* default-h styling */
include(PATH_ROOT . 'tmpl/default-h/style.css');

include(PATH_ROOT . 'tmpl/default-h/black/style.css');

if ($is_ie6 && !$is_ie7) include(PATH_ROOT . 'tmpl/default-h/ie6hacks.css');

if ($is_ie6 && !$is_ie7) include(PATH_ROOT . 'tmpl/default-h/black/ie6hacks.css');

/* default-v styling */
include(PATH_ROOT . 'tmpl/default-v/style.css');

include(PATH_ROOT . 'tmpl/default-v/black/style.css');

if ($is_ie6 && !$is_ie7) include(PATH_ROOT . 'tmpl/default-v/ie6hacks.css');

/* photo-h styling */
include(PATH_ROOT . 'tmpl/photo-h/style.css');

include(PATH_ROOT . 'tmpl/photo-h/black/style.css');

if ($is_ie6 && !$is_ie7) include(PATH_ROOT . 'tmpl/photo-h/ie6hacks.css');

/* photo-v styling */
include(PATH_ROOT . 'tmpl/photo-v/style.css');

include(PATH_ROOT . 'tmpl/photo-v/black/style.css');

?>