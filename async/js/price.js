function getTax()
{
	if (noTax)
		return 0;
	var selectedTax = document.getElementById('id_tax');
	var taxId = selectedTax.options[selectedTax.selectedIndex].value;
	return taxesArray[taxId];
}

function getEcotaxTaxIncluded()
{
	var ecoTax = document.getElementById('ecotax').value;
	return parseFloat((isNaN(ecoTax) || ecoTax == '') ? 0 : ecoTax);
}

function getEcotaxTaxExcluded()
{
	return getEcotaxTaxIncluded() / (1 + ecotaxTaxRate);
}

function formatPrice(price)
{
	var fixedToSix = (Math.round(price * 1000000) / 1000000);
	return (Math.round(fixedToSix) == fixedToSix + 0.000001 ? fixedToSix + 0.000001 : fixedToSix);
}

function calcPriceTI()
{	
	var tax = getTax();
	var priceTE = parseFloat(document.getElementById('priceTE').value.replace(/,/g, '.'));
	priceTE = (isNaN(priceTE)) ? 0 : ps_round(priceTE);
	var newPrice = priceTE * ((tax / 100) + 1);
	document.getElementById('priceTI').value = (isNaN(newPrice) || newPrice < 0) ? '' : ps_round(newPrice, 2);
	document.getElementById('finalPrice').innerHTML = (isNaN(newPrice) || newPrice < 0) ? '' : ps_round(newPrice, 2).toFixed(2);
	document.getElementById('finalPriceWithoutTax').innerHTML = (isNaN(priceTE) || priceTE < 0) ? '' : (ps_round(priceTE, 2) + getEcotaxTaxExcluded()).toFixed(2);
	document.getElementById('priceTI').value = ps_round(parseFloat(document.getElementById('priceTI').value) + getEcotaxTaxIncluded());
	document.getElementById('finalPrice').innerHTML = ps_round(parseFloat(document.getElementById('priceTI').value));
	calcReduction();
}


function calcPriceTE()
{
	var tax = getTax();
	var priceTI = parseFloat(document.getElementById('priceTI').value.replace(/,/g, '.'));
	priceTI = (isNaN(priceTI)) ? 0 : ps_round(priceTI);
	var newPrice = ps_round(priceTI - getEcotaxTaxIncluded(), 2) / ((tax / 100) + 1);
	document.getElementById('priceTE').value =	(isNaN(newPrice) == true || newPrice < 0) ? '' :ps_round(newPrice.toFixed(6), 6);
	document.getElementById('finalPrice').innerHTML = (isNaN(newPrice) == true || newPrice < 0) ? '' : ps_round(priceTI.toFixed(2), 2);
	document.getElementById('finalPriceWithoutTax').innerHTML = (isNaN(newPrice) == true || newPrice < 0) ? '' : ps_round(newPrice.toFixed(2), 2) + getEcotaxTaxExcluded();
	calcReduction();
}

function formatEcoTax()
{
	document.getElementById('ecotax').value = document.getElementById('ecotax').value.replace(/,/g, '.');
	if (parseInt(document.getElementById('ecotax').value) > parseInt(document.getElementById('priceTE').value))
		document.getElementById('ecotax').value = document.getElementById('priceTE').value;
	if (isNaN(document.getElementById('ecotax').value))
		document.getElementById('ecotax').value = 0;
	document.getElementById('priceTE').innerHTML = parseInt(document.getElementById('priceTE').value) - parseInt(document.getElementById('ecotax').value);
	calcPriceTE();
}

function calcReduction()
{
	if (parseFloat(document.getElementById('reduction_price').value) > 0)
		reductionPrice();
	else if (parseFloat(document.getElementById('reduction_percent').value) > 0)
		reductionPercent();
}

function reductionPrice()
{
	var tax = getTax();
	var price = document.getElementById('priceTI');
	var priceWhithoutTaxes = document.getElementById('priceTE');
	var newprice = document.getElementById('finalPrice');
	var newpriceWithoutTax = document.getElementById('finalPriceWithoutTax');
	var curPrice = price.value;

	document.getElementById('reduction_percent').value = 0;
	if (isInReductionPeriod())
	{
		var rprice = document.getElementById('reduction_price');
		if (parseFloat(curPrice) <= parseFloat(rprice.value))
			rprice.value = curPrice;
		if (parseFloat(rprice.value) < 0 || isNaN(parseFloat(curPrice)))
			rprice.value = 0;
		curPrice = curPrice - rprice.value;
	}
	
	newprice.innerHTML = (ps_round(parseFloat(curPrice),2) + getEcotaxTaxIncluded()).toFixed(2);
	var rpriceWithoutTaxes = ps_round(rprice.value / ((tax / 100) + 1), 2);
	newpriceWithoutTax.innerHTML = ps_round(priceWhithoutTaxes.value - rpriceWithoutTaxes,2).toFixed(2);
}

function reductionPercent()
{
	var tax = getTax();
	var price    = document.getElementById('priceTI');
	var newprice = document.getElementById('finalPrice');
	var newpriceWithoutTax = document.getElementById('finalPriceWithoutTax');
	var curPrice = price.value;
	
	document.getElementById('reduction_price').value = 0;
	if (isInReductionPeriod())
	{
		var newprice = document.getElementById('finalPrice');
		var rpercent = document.getElementById('reduction_percent');

		if (parseFloat(rpercent.value) >= 100)
			rpercent.value = 100;
		if (parseFloat(rpercent.value) < 0)
			rpercent.value = 0;	
		curPrice = price.value * (1 - (rpercent.value / 100));
	}
	
	newprice.innerHTML = (ps_round(parseFloat(curPrice),2) + getEcotaxTaxIncluded()).toFixed(2);
	newpriceWithoutTax.innerHTML = ps_round(parseFloat(ps_round(curPrice, 2) / ((tax / 100) + 1)),2).toFixed(2);
}

function isInReductionPeriod()
{
	var start  = document.getElementById('reduction_from').value;
	var end    = document.getElementById('reduction_to').value;
	
	if (start == end && start != "" && start != "0000-00-00 00:00:00") return true;

	var sdate  = new Date(start.replace(/-/g,'/'));	
	var edate  = new Date(end.replace(/-/g,'/'));
	var today  = new Date();

	return (sdate <= today && edate >= today);
}

function decimalTruncate(source, decimals)
{
	if (typeof(decimals) == 'undefined')
		decimals = 6;
	source = source.toString();
	var pos = source.indexOf('.');
	return parseFloat(source.substr(0, pos + decimals + 1));
}
