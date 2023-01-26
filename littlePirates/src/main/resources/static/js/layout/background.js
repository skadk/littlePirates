/**
 * background.js
 */
 
var particles = document.getElementById("particles");
var border = ["50%", "0%"];
var colors = ["#FF6B6B", "#FFE66D", "#32CD32"];

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
//    div.style.animation = "spin 5s linear infinite";
    
    div.innerHTML = "<img src='/image/treasureMap.png' width='30px' height='30px'/>";
    
    particles.appendChild(div);
    
    setTimeout(function () {
    	div.remove();
    }, 5000);
}

function getParticles() {

    var np = document.documentElement.clientWidth / 40;
    particles.innerHTML = "";
    
    for (var i = 0; i < np; i++) {
        var w = document.documentElement.clientWidth;
        var h = document.documentElement.clientHeight;
        var rndw = Math.floor(Math.random() * w ) + 1;
        var rndh = Math.floor(Math.random() * h ) + 1;
        var widthpt = Math.floor(Math.random() * 8) + 50;
        var opty = Math.floor(Math.random() * 4) + 1;
        var anima = Math.floor(Math.random() * 12) + 8;
        var bdr = Math.floor(Math.random() * 2);
        var color = Math.floor(Math.random() * 3);
        var div = document.createElement("div");
        
        div.style.position = "absolute";
        div.style.marginLeft = rndw + "px";
        div.style.marginTop = rndh + "px";
        div.style.width = widthpt + "px";
        div.style.height = widthpt + "px";
        div.style.opacity = opty;
        div.style.backgroundColor = colors[color];
        div.style.borderRadius = border[bdr];
        div.style.animation = "move " + anima + "s ease-in infinite";
        
        particles.appendChild(div);
    }
}

function main(event) {
	getParticles();
//    particles.addEventListener("mousemove", createParticle);
}

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

window.addEventListener("load", main);
window.addEventListener("resize", main);
window.addEventListener("mousemove", throttle(createParticle, 1000)
);

/*
window.onload = function () {
//	alert("성공");
	var backgroundDiv = document.getElementById("article1");
	
	backgroundDiv.addEventListener("click", function() {
		alert("실패");
	});
	backgroundDiv.addEventListener(
	  "mouseover",
	  throttle(createParticle, 1000)
	);	
};
*/