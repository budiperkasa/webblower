<?php
//no direct access
defined('_JEXEC') or die('Direct Access to this location is not allowed.');
 
// include the helper file
require_once(dirname(__FILE__).DS.'helper.php');

$qPanel = QluePanel::getInstance($params);

$articles = $qPanel->getContent();

$document = &JFactory::getDocument();
$document->addStyleSheet(JURI::base(true).'/modules/mod_qPanel/assets/css/style.css');

// include the template for display
require(JModuleHelper::getLayoutPath('mod_qPanel'));


?>
