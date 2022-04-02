function validate()
{
    var name=document.getElementById('name').nodeValue;
    var pass=document.getElementById('pass').nodeValue;
    if (name=="admin"&& pass=="admin")
    {
        window.location.href="C:\Users\SADAIN\Documents\GitHub\white-hats\cybot\analytics\analytics.html";
    
    }
    else{
        alert("Login failed")
    }
}

    