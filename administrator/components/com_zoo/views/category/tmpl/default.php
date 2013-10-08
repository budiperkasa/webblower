<?php 
/**
* @package   ZOO Component
* @file      default.php
* @version   2.4.11 July 2011
* @author    YOOtheme http://www.yootheme.com
* @copyright Copyright (C) 2007 - 2011 YOOtheme GmbH
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*/

// no direct access
defined('_JEXEC') or die('Restricted access'); 

// disable category sorting if there are more than a thousand categories
if (!$enable_category_sorting = count($this->categories) <= 1000) {
	$this->app->error->raiseNotice(0, 'Category Sorting disabled (more than 1000 categories)');
}

// add js
$this->app->document->addScript('assets:js/category.js');
if ($enable_category_sorting) {
	$this->app->document->addScript('libraries:jquery/plugins/nestedsortable/jquery.ui.nestedSortable.js');
}

?>

<form id="categories-default" action="<?php echo $this->app->link(); ?>" method="post" name="adminForm" accept-charset="utf-8">

<?php echo $this->partial('menu'); ?>

<div class="box-bottom">

	<?php if (count($this->categories) > 1) : ?>

		<div id="categories-list">
		
			<table>
				<thead>
					<tr>
						<th class="checkbox">
							<input type="checkbox" class="check-all" />
						</th>
						<th class="name">
							<?php echo JText::_('Name'); ?>
							<span class="small">
								<span class="collapse-all"><?php echo JText::_('Collapse All'); ?></span> / <span class="expand-all"><?php echo JText::_('Expand All'); ?></span>
							</span>
						</th>
						<th class="items">
							<?php echo JText::_('Items'); ?>
						</th>
						<th class="published">
							<?php echo JText::_('Published'); ?>
						</th>
					</tr>
				</thead>
			</table>
		
			<ul id="categories">
				<?php
					$renderer = $this->app->object->create('CategoryRenderer');
					foreach ($this->categories[0]->getChildren() as $category) {
						echo $renderer->render($category);
					}
				?>
			</ul>
		
		</div>
	
	<?php else: 
	
			$title   = JText::_('NO_CATEGORIES_YET').'!';
			$message = JText::_('CATEGORY_MANAGER_DESCRIPTION');
			echo $this->partial('message', compact('title', 'message'));
		
	endif; ?>

</div>

<input type="hidden" name="option" value="<?php echo $this->option; ?>" />
<input type="hidden" name="controller" value="<?php echo $this->controller; ?>" />
<input type="hidden" name="task" value="" />
<input type="hidden" name="boxchecked" value="0" />
<?php echo $this->app->html->_('form.token'); ?>

</form>

<script type="text/javascript">
	jQuery(function($) {
		<?php if ($enable_category_sorting) : ?>
				$('#categories-default').SortCategories();
		<?php endif; ?>
		$('#categories-default').BrowseCategories();
	});
</script>

<?php echo ZOO_COPYRIGHT; ?>

<?php

class CategoryRenderer {

	protected $_i = 0;
	protected $_texts;

	public $app;

	public function  __construct() {
		$this->_texts = array();
		$this->_texts['edit_category']	= JText::_('Edit Category');
		$this->_texts['published']		= JText::_('Published');
		$this->_texts['unpublished']	= JText::_('Unpublished');
		$this->_texts['publish_item']	= JText::_('Publish item');
		$this->_texts['unpublish_item'] = JText::_('Unpublish Item');
	}

	public function render($category) {

		$link       = $this->app->link(array('controller' => 'category','task' => 'edit', 'cid[]' => $category->id));
		$link_items = $this->app->link(array('controller' => 'item','filter_category_id' => $category->id, 'filter_type' => '', 'filter_author_id' => '', 'search' => ''));

		$img 	= $category->published ? 'tick.png' : 'publish_x.png';
		$task 	= $category->published ? 'unpublish' : 'publish';
		$alt 	= $category->published ? $this->_texts['published'] : $this->_texts['unpublished'];
		$action = $category->published ? $this->_texts['unpublish_item'] : $this->_texts['publish_item'];

		$this->_i++;

?>
		<li id="category-<?php echo $category->id; ?>">
			<div>
				<table>
					<tbody>
						<tr>
							<td class="handle"></td>
							<td class="checkbox">
								<input type="checkbox" name="cid[]" value="<?php echo $category->id; ?>" />
							</td>
							<td class="icon"></td>
							<td class="name">
								<span class="editlinktip hasTip" title="<?php echo $this->_texts['edit_category'] . '::' . $category->name; ?>">
									<a href="<?php echo $link  ?>"><?php echo $category->name; ?></a>
								</span>
							</td>
							<td class="items">
								<a href="<?php echo $link_items; ?>"><?php echo $category->itemCount(); ?></a>
							</td>
							<td class="published">
								<a href="#" rel="task-<?php echo $task; ?>" title="<?php echo $action; ?>">
									<img src="<?php echo $this->app->path->url('assets:images/'.$img); ?>" border="0" alt="<?php echo $alt; ?>" />
								</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<?php if ($children = $category->getChildren()) : ?>
				<ul>
					<?php
						foreach ($children as $child) {
							echo $this->render($child);
						}
					?>
				</ul>
			<?php endif; ?>
		</li>
<?php
	}

}

?>
