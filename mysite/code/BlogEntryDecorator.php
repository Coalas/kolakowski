<?php
/**
 * Defines the HomePage page type
 */
 
class BlogEntryDecorator extends DataObjectDecorator {

public function extraStatics(){
return array(
'db' => array("PhotoCaption" => "HTMLText"),
'has_one' => array("TitleImage" => "Image")
);
}

public function updateCMSFields(FieldSet &$fields) {
$fields->addFieldToTab("Root.Content.Main", new ImageField("TitleImage", "Title image"), 'Content');
$fields->addFieldToTab("Root.Content.Main", new TextField("PhotoCaption", "Photo Caption"), 'Content');
}
}
?>
