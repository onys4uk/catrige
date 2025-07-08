var path = window.location.pathname;
var page = path.split("/").pop();
let header = document.getElementsByClassName('btn');
for (let i=0; i<header.length; i++){
	header[i].classList.remove('active');
	if(header[i].getAttribute('href') == page){
	header[i].classList.add("active");
	}
}