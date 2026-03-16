<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>A Safe Place For You</title>

<style>

body{
font-family: "Segoe UI", sans-serif;
margin:0;
background: linear-gradient(135deg,#ffe6f0,#f3e8ff);
color:#333;
text-align:center;
overflow-x:hidden;
}

section{
padding:80px 20px;
min-height:100vh;
}

h1{
font-size:40px;
}

button{
padding:12px 25px;
border:none;
border-radius:25px;
background:#ff6fa5;
color:white;
font-size:16px;
cursor:pointer;
transition:.3s;
}

button:hover{
transform:scale(1.05);
}

.hidden{
display:none;
}

#comfortMessage{
margin-top:20px;
font-size:18px;
color:#444;
}

.heart{
position:absolute;
font-size:28px;
cursor:pointer;
transition:transform .3s;
}

.heart:hover{
transform:scale(1.4);
}

.popup{
position:fixed;
top:50%;
left:50%;
transform:translate(-50%,-50%);
background:white;
padding:30px;
border-radius:15px;
box-shadow:0 10px 30px rgba(0,0,0,0.2);
width:300px;
display:none;
}

.close{
margin-top:10px;
background:#ff6fa5;
}

#finalPage{
background:linear-gradient(180deg,#1d1d2c,#3d3d6b);
color:white;
}

.star{
position:absolute;
width:3px;
height:3px;
background:white;
border-radius:50%;
animation:twinkle 2s infinite alternate;
}

@keyframes twinkle{
from{opacity:0.2}
to{opacity:1}
}

.breath{
width:120px;
height:120px;
border-radius:50%;
background:#ffd6e7;
margin:30px auto;
animation:breathe 6s infinite;
}

@keyframes breathe{
0%{transform:scale(.8)}
50%{transform:scale(1.2)}
100%{transform:scale(.8)}
}

</style>
</head>

<body>

<!-- Background Music -->
<audio autoplay loop>
<source src="https://cdn.pixabay.com/audio/2022/03/15/audio_d0c6ff1f0a.mp3">
</audio>

<!-- HOME -->
<section>

<h1>A Safe Place For You</h1>

<p>If today feels heavy, stay here for a while.</p>

<button onclick="showComfort()">Click if you're feeling stressed</button>

<p id="comfortMessage" class="hidden">
If you're reading this, I wish I could hug you right now.  
You are doing better than you think ❤️
</p>

</section>


<!-- SECRET LOVE LETTERS -->
<section>

<h1>Secret Love Letters</h1>
<p>Click the hearts you find 💗</p>

<div class="heart" style="top:40%;left:20%" onclick="showNote(0)">❤️</div>
<div class="heart" style="top:70%;left:60%" onclick="showNote(1)">💖</div>
<div class="heart" style="top:55%;left:80%" onclick="showNote(2)">💗</div>
<div class="heart" style="top:30%;left:50%" onclick="showNote(3)">💞</div>
<div class="heart" style="top:75%;left:35%" onclick="showNote(4)">💕</div>

</section>

<!-- POPUP -->
<div id="popup" class="popup">
<p id="noteText"></p>
<button class="close" onclick="closePopup()">Close</button>
</div>


<!-- STRESS RELIEF -->
<section>

<h1>Take One Minute</h1>

<p>Breathe slowly with the circle</p>

<div class="breath"></div>

<p>Inhale… Hold… Exhale</p>

</section>


<!-- FINAL PAGE -->
<section id="finalPage">

<h1>No Matter What</h1>

<p>

Placements may stress you.  
Exams may exhaust you.

<br><br>

But I see the effort you put in every single day.

<br><br>

Whether things go perfectly  
or completely differently than expected…

<br><br>

I will still be proud of you.

<br><br>

Not because of a job.  
Not because of success.

<br><br>

But because of the person you are.

</p>

<h2 style="margin-top:40px">

❤️ No matter what happens, you will never face life alone.

</h2>

<p>Because I am always on your side.</p>

</section>


<script>

function showComfort(){
document.getElementById("comfortMessage").classList.remove("hidden")
}

const notes = [

"You look cutest when you're concentrating seriously.",

"Even when you're stressed, you are still the most admirable person I know.",

"I wish I could hug you every time you feel tired.",

"You don’t need to prove anything to me. I already believe in you.",

"I know placements feel heavy right now. But I see how hard you try every single day. And that makes me incredibly proud of you."

]

function showNote(i){
document.getElementById("popup").style.display="block"
document.getElementById("noteText").innerText=notes[i]
}

function closePopup(){
document.getElementById("popup").style.display="none"
}

function createStars(){

for(let i=0;i<80;i++){

let star=document.createElement("div")
star.className="star"

star.style.top=Math.random()*100+"%"
star.style.left=Math.random()*100+"%"

document.getElementById("finalPage").appendChild(star)

}

}

createStars()

</script>

</body>
</html>
