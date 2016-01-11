var alumniByCity={
	'Miami':20,
	'New York':5,
	'San Francisco':10
};

var city = prompt('Choose a city (San Francisco, New York, Miami) to see the amount of alumni there.');
var alumniCount=alumniByCity[city];
alert(city+' has '+alumniCount + ' alumni!');