<?php 
  /* Qlue Panel
  *  Copyright (C) 2010 Qlue
  *
  *  This file is part of Qlue Panel.
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
  defined("_JEXEC") or die("Restricted Access");
?>
<div class="qPanel" id="qPanel">
<div id="qContent">
  <div class="content" >
  <?php
    $counter = 1; 
    switch($params->get("numberPanel")){
      case "1":
        $columnNumber = "column100";
        break;
      case "2":
        $columnNumber = "column50";
        break;
      case "3":
        $columnNumber = "column31";
        break;
      case "4":
        $columnNumber = "column22";
        break;        
    }
    foreach($articles as $art){
      echo "<div class='columns $columnNumber' id='column$counter'>".QluePanel::renderContent($art)."</div>";
      $counter++;
    }
  ?>
  </div>
</div>
  <div class="qPanel-button" id="qButton"><strong><?php echo $params->get("panelName"); ?></strong></div>
</div>

<script type="text/javascript">
window.addEvent("domready", function(){
  var qlue_panel = new Fx.Slide("qContent", {transition: Fx.Transitions.Sine.easeOut});
  qlue_panel.hide();
  var qlue_panel_button = new Fx.Style("qButton", "top", {transition: Fx.Transitions.Sine.easeOut});
  
  $("qButton").addEvent("click", function(){
    $$("#qContent div.content")[0].setStyle("display", "block");
    if($("qButton").getStyle("top") == "-1px"){ qlue_panel_button.start(-1, 260); }else { qlue_panel_button.start(260, -1); }
    qlue_panel.toggle();
  });
  
});
</script>