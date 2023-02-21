$(document).ready(function() {
      document.querySelector('.dropbtn_click-1').onclick = ()=>{
        dropdown2();
      }
      document.getElementsByClassName('region-1').onclick = ()=>{
        showMenu2(value);
      };
      dropdown2 = () => {

        var v = document.querySelector('.dropdown-content-1');
        var dropbtn = document.querySelector('.dropbtn-1')
        v.classList.toggle('show');
 
        dropbtn.style.borderColor = 'rgb(94, 94, 94)';
      }

      showMenu2=(value)=>{
        var dropbtn_icon = document.querySelector('.dropbtn_icon-1');
        var dropbtn_content = document.querySelector('.dropbtn_content-1');
        var dropbtn_click = document.querySelector('.dropbtn_click-1');
        var dropbtn = document.querySelector('.dropbtn-1');

        dropbtn_icon.innerText = '';
        dropbtn_content.innerText = value;
        dropbtn_content.style.color = '#252525';
        dropbtn.style.borderColor = '#3992a8';
      }
    });
    window.onclick= (e)=>{
      if(!e.target.matches('.dropbtn_click-1')){
        var dropdowns = document.getElementsByClassName("dropdown-content-1");

        var dropbtn_icon = document.querySelector('.dropbtn_icon-1');
        var dropbtn_content = document.querySelector('.dropbtn_content-1');
        var dropbtn_click = document.querySelector('.dropbtn_click-1');
        var dropbtn = document.querySelector('.dropbtn-1');

        var i;
        for (i = 0; i < dropdowns.length; i++) {
          var openDropdown = dropdowns[i];
          if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
          }
        }
      }
    }
  