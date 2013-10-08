<?php
/* Qlue Panel
*  Copyright (C) 2010 Qlue
*
*  This file is part of Qlue P.
*
*  Qlue Panel is free software: you can redistribute it and/or modify
*  it under the terms of the GNU General Public License as published by
*  the Free Software Foundation, either version 3 of the License, or
*  (at your option) any later version.
*
*  Qlue Panel is distributed in the hope that it will be useful,
*  but WITHOUT ANY WARRANTY; without even the implied warranty of
*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*  GNU General Public License for more details.
*
*  You should have received a copy of the GNU General Public License
*  along with Qlue Panel. If not, see <http://www.gnu.org/licenses/>.
*/
 
//stop direct access
defined("_JEXEC") or die("Restricted Access");
/**
 * Class to get and render the content within the Qlue Panel module.
 * 
 */
class QluePanel extends JObject{
   
   //set global variables
   public $_id = 0;
   private $_params = null;
   
   public static function getInstance($params) {
       static $instance;
       if(!isset($instance)) {
         $instance = new QluePanel();
       }
       // Update the id
       $instance->id++;
       // Update the params
       $instance->setParams($params);
       return $instance;
   }
   public function setParams($params) {
     $this->_params = $params;
   }
   
   /**
    * Get the content from the Category the use has specified. The information is then 
    * sorted and a tab is created and outputted to an array for use within the rest of
    * the module.
    * @parameter $params = parameters and other data supplied from the site
    * @return = an array of the Panel and the content held within them
    */
   function getContent() {
     //user detection for articles that show for registered users only
     $user = &JFactory::getUser();
     //get the access level the current user has (registered, administrator e.t.c)
     $access = $user->aid;
     $db = JFactory::getDBO();
     
     //get the parameters that the user has specified
     $numberPanel = (int)$this->_params->get("numberPanel");
     $catId  = $this->_params->get("categoryId", null);
     $articles = $this->_params->get("articleId");
     $order  = $this->_params->get("orderBy", "article"); 
     
     //prepare the sql order
     switch($order){
       case "article":
         $order = "ordering ASC";
         break;
       case "alpha":
         $order = "title ASC";
         break;
       case "modified":
         $order = "modified ASC";
         break;
       case "newDate":
         $order = "created ASC";
         break;
       case "oldDate":
         $order = "created DESC";
         break;
     }
      //build the sql query, Searches all articles which are in the specified category and is published. Will only bring back the articles the user is allowed to see. Example guests will not see registered content
      $query = "SELECT * FROM #__content WHERE ".
               "catid ='". (int)$catId ."' AND state ='1' ".
           "AND access <= ". (int)$access .
           " ORDER BY ". $order . " LIMIT " . $numberPanel;
     
      //set the query and return the entered amount of results
      $db->setQuery($query);
     
      //put the results into the variable $articles
      $articles = $db->loadObjectList();    
          
      //return the variable to prepare for display
      return $articles;
   }

   function renderContent( $content ){
     global $mainframe;
     //set the introduction text of the article ready to convert content
     $content->text = $content->introtext;
     // import all content plugins
     JPluginHelper::importPlugin('content');
     // get list of avaliable plugins
     $dispatcher =& JDispatcher::getInstance();
     //set the parameters ready for converting content
     $plgParams = new JParameter('');
     // process the content through all content plugins
     $results = $dispatcher->trigger( 'onPrepareContent', array (&$content, &$plgParams, 0) );
     return $content->text;
   }
   
  function readMore( $id, $catid, $sectionid, $title, $access, $params ){
    //get the user object
    $user     = JFactory::getUser();   
    //get the parameter to see if read more is set to yes or no
    $readMore = $params->get("readmore", 0) ? true : false;    
    //if read more is set to no stop the function
    if(!$readMore){
      return;
    }    
    //check to see if the user has access to the full article, if not redirect to login/ register page
    if( $access <= $user->aid ){
      $link = JRoute::_( ContentHelperRoute::getArticleRoute( (int)$id, (int)$catid, (int)$sectionid ) );
    } else {
      //link to the com_user login page
      $link = JRoute::_( 'index.php?option=com_user&view=login' );
    }    
    //generate the read more link
    $readMoreLink = '<a class="readon" title="'. $title .'" href="'. $link .'" >'. JText::_('READMORE') .'</a>';    
    //return the read more link
    return $readMoreLink;

  }
}
?>