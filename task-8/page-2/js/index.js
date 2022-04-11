"use strict";

const but = document.querySelectorAll(".button");
for(let i = 0 ; i<6; i++)
{

    but[i].addEventListener("click",function()
    {
        if(i == 0){
            const now = new Date();
            window.alert(now.getDate() + now.getDay()  + now.getFullYear) 
           
        }
        else if(i == 1){
            localStorage.setItem("Nikhil is Here", "NightKing");

        }
        else if(i == 2){
           
            var a = document.createElement('a'); 
            var link = document.createTextNode("This is link");
            a.appendChild(link); 
            a.title = "This is Link"; 
            a.href = "../page-3/chart.html"; 
            
            document.body.appendChild(a); 
        }
        else if (i == 3 ){
            window.open(); 

        }
        else if(i == 4){
            document.body.style.backgroundImage = "url('night.jpg')";

        }
        else if(i == 5){
            window.open();
        }

        


    });
}




