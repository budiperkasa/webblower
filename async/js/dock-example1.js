$(function () { 
	// Dock initialize
	$('#dock').Fisheye(
		{
			maxWidth: 20,
			items: 'a',
			itemsText: 'span',
			container: '.dock-container',
			itemWidth: 35,
			proximity: 70,
			alignment : 'left',
			valign: 'bottom',
			halign : 'center'
		}
	);
});