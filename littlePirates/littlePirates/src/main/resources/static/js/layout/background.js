/**
 * background.js
 */
 var particles = document.getElementById("particles");
 var border = ["50%", "0%"];
 var colors = ["#FF6B6B", "#FFE66D", "#32CD32"];
 
 function getParticles() {
 	
 	var np = document.documentElement.clientWidth / 50;
 	
 	particles.innerHTML = "";
 	
 	for (var i = 0; i < np; i++) {
 		var w = document.documentElement.clientWidth;
 		var h = document.documentElement.clientHeight;
 		var rndw = Math.floor(Math.random() * w ) + 1;
 		var rndh = Math.floor(Math.random() * h ) + 1;
 		var widthpt = Math.floor(Math.random() * 8) + 50;
 		var anima = Math.floor(Math.random() * 12) + 8;
 		var div = document.createElement("div");
 		//var opty = Math.floor(Math.random() * 4) + 1;
 		//var bdr = Math.floor(Math.random() * 2);
 		//var color = Math.floor(Math.random() * 3);
 		
 		div.style.position = "absolute";
 		div.style.marginLeft = rndw + "px";
 		div.style.marginTop = rndh + "px";
 		div.style.width = widthpt + "px";
 		div.style.height = widthpt + "px";
 		div.style.animation = "move " + anima + "s ease-in infinite";
 		//div.style.opacity = opty;
 		//div.style.backgroundColor = colors[color];
 		//div.style.borderRadius = border[bdr];
 		
 		div.innerHTML = "<img src='/images/금괴.png' width='70px' height='70px'/>";
 		
 		particles.appendChild(div);
 	}
 }
 
 function main(event) {
 	getParticles();
 	//particles.addEventListener("mousemove", createParticle);
 }
 
 window.addEventListener("load", main);
 window.addEventListener("resize", main);
 
 /*
 window.addEventListener("mousemove", throttle(createParticle, 1000));
 
 function throttle(callback, limit) {
 	let waiting = false;
 	
 	return function () {
 		if (!waiting) {
 			callback.apply(this, arguments);
 			waiting = true;
 			
 			setTimeout(() => {
 				waiting = false;
 			}, limit);
 		}
 	};
 }
 
 window.onload = function () {
 	alert("성공");
 	var backgroundDiv = document.getElementById("article1");
 	
 	backgroundDiv.addEventListener("click", function() {
 		alert("실패");
 	});
 	backgroundDiv.addEventListener(
 		"mouseover",
 		throttle(createParticle, 1000)
 	);
 };
 
 function createParticle(event) {
 	var x = event.clientX;
 	var y = event.clientY;
 	var color = Math.floor(Math.random() * 3);
 	var div = document.createElement("div");
 	
 	div.style.position = "absolute";
 	div.style.marginLeft = x + "px";
 	div.style.marginTop = y + "px";
 	div.style.width = "0";
 	div.style.borderTop = "10px solid transparent";
 	div.style.borderRight = "10px solid transparent";
 	div.style.borderLeft = "10px solid transparent";
 	div.style.borderBottom = "20px solid " + colors[color];
 	div.style.animation = "move 5s ease-in infinite";
 	
 	div.innerHTML = "<img src='/image/treasureMap.png' width='30px' height='30px'/>";
 	
 	particles.appendChild(div);
 	
 	setTimeout(function () {
 		div.remove();
 	}, 5000);
 }
 */