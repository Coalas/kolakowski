<?php
class Page extends SiteTree {

	public static $db = array(
	);

	public static $has_one = array(
	);

}
class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		Requirements::themedCSS('reset'); 
		Requirements::themedCSS('form'); 
		Requirements::themedCSS('general');
		Requirements::themedCSS('css3');
		//Requirements::themedCSS('grid'); 
		Requirements::themedCSS('style');
		Requirements::javascript("themes/apsilesia/js/modernizr-1.7.min.js");
		Requirements::javascript("http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js");
		Requirements::javascript("http://cloud.github.com/downloads/malsup/cycle/jquery.cycle.all.2.74.js");
		Requirements::customScript('$(document).ready(function() {
		jQuery(".slideshow").cycle({
		fx: "fade" 
					});
		});');
	}
}