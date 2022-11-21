<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Meals1.Pages.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/bootstrap.css" rel="stylesheet" />
    <script src="../CSS/jquery-3.6.0.min.js"></script>
    <script src="../CSS/popper.js"></script>
    <script src="../CSS/bootstrap.min.js"></script>
    <meta charset="utf-8"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"/>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
            .center {
      display: block;
      margin-left: auto;
      margin-right: auto;
      width: 100px;
}
            .i {
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 70%;
        transition: transform 15s ease-in-out;
}
            .i:hover {
        transform: rotate(180deg);
}
            .menu-area ul{
                
                list-style:none;
            }
            .menu-area{
                display:inline-block;
                text-align:center;
                position:absolute;
                margin-top:20px;
                margin-left:40%;
                margin-right:45%
            }
            .menu-area li:hover{
                background:#029bd5;
                
            }
            .menu-area > ul{
                list-style:none;
                padding:0;
                margin:0;
                display:inline-block;
                background:#313131;
                color:#fff;
            }
            .menu-area > ul >li{
                position:relative;
                cursor:pointer;
                font-family:poppins;
                font-size:14px;
                letter-spacing:1px;
                /*float:left;*/
                width:300px;
                height:50px;
                padding:10px;
                
            }
            .dropdown{
                position:absolute;
                top:100%;
                left:0;
                width:100%;
                padding:0;
                
            }
            .dropdown li{
                
                background:#313131;
                display:none;
            }
            .dropdown li:hover{
                
                background:#029bd5;
            }
            .menu-area li:hover > .dropdown li{
                
                display:block;
            }
            .menu-area li:hover > .dropdown{
                
                perspective:1000px;
            }
            .menu-area li:hover > .dropdown li{
                
                transform-origin: top center;
                opacity:0;
            }
            .menu-area li:hover > .dropdown li:nth-child(1){
                
                animation:animate 300ms ease-in-out forwards;
                animation-delay:-150ms;
            }
            .menu-area li:hover > .dropdown li:nth-child(2){
                
                animation:animate 300ms ease-in-out forwards;
                animation-delay:0ms;
            }
            .menu-area li:hover > .dropdown li:nth-child(3){
                animation:animate 300ms ease-in-out forwards;
                animation-delay:150ms;
            }
            .menu-area li:hover > .dropdown li:nth-child(4){
                animation:animate 300ms ease-in-out forwards;
                animation-delay:300ms;
            }
            @keyframes animate{
                0%{
                    opacity:0;
                    transform:rotateX(-90deg);
                }
                50%{
                    transform:rotateX(20deg);
                }
                100%{
                    opacity:1;
                    transform:rotateX(0deg);
                }
            }

            footer{
                position:relative;
                width:100%;
                background-color:#3586ff;
                min-height:100px;
                padding:20px 50px;
                display:flex;
                justify-content:center;
                align-items:center;
                flex-direction:column;
                margin-top:40px
            }
            footer .social_icon,
            footer .menu
            {
                position:relative;
                display:flex;
                justify-content:center;
                align-items:center;
                margin:10px 0
            }
            footer .social_icon li,
            footer .menu li
            {
                list-style:none;
            }
            footer .social_icon li a
            {
                font-size:2em;
                color:#fff;
                margin:0 10px;
                display:inline-block;
                transition:0.5s;
            }
            footer .social_icon li a:hover{
                transform:translateY(-10px);
            }
            footer .menu li a
            {
                font-size:1.2em;
                color:#fff;
                margin:0 10px;
                display:inline-block;
                transition:0.5s;
                text-decoration:none;
                opacity:0.75;
            }
            footer .menu li a:hover
            {
                opacity:1;
            }
            footer .wave
            {
                position:absolute;
                top:-100px;
                left:0;
                width:100%;
                height:100px;
                background:url(../Images/wave.png);
                background-size:1000px 100px;
            }
            footer .wave#wave1{
                z-index: 1000;
                opacity: 1;
                bottom: 0;
                animation: animateWave 4s linear infinite;
            }
            footer .wave#wave2{
                z-index: 999;
                opacity: 0.5;
                bottom: 10px;
                animation: animateWave_02 4s linear infinite;
            }
            footer .wave#wave3{
                z-index:1000;
                opacity:0.2;
                bottom:15px;
                animation:animateWave 3s linear infinite;
            }
            footer .wave#wave4{
                z-index:999;
                opacity:0.7;
                bottom:20px;
                animation:animateWave_02 3s linear infinite;
            }
            @keyframes animateWave
            {
                0%
                {
                    background-position-x:1000px;
                }
                100%
                {
                    background-position-x:0px
                }

            }
            @keyframes animateWave_02
            {
                0%
                {
                    background-position-x:0px;
                }
                100%
                {
                    background-position-x:1000px
                }

            }
    </style>
</head>

<body>
    <form id="form1" runat="server">
<%--        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <h2 style="font-size:xx-large;font-weight:900;text-align:center">LOGO</h2>
                </div>
            </div>
        </div>--%>
               <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
            <img src="../Images/lily-banse--YHSwy6uqvk-unsplash.jpg"/>
        </div>

        <div class="item">
            <img src="../Images/spencer-davis-5UeN8VrCxvs-unsplash.jpg"/>
        </div>

        <div class="item">
            <img src="../Images/wasa-crispbread-kcZgDtkuB4g-unsplash.jpg"/>
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

    <div class="container-fluid" style="margin-top:50px">
        <div class="row">
            <div class="col-lg-6" style="text-align:center">
                <h2 style="font-size:xx-large;font-weight:900">It's not just food,<br />It's a lifestyle!</h2>
                <p>We dispel the myth that eating well is monotonous. With scrumptious, healthy cuisine, you may achieve your weight-loss, health, and fitness goals. We provide a variety of diet regimens that are tailored to your unique health and weight requirements. Every week, our menu changes, bringing you meals from different cuisines with a healthy touch. We make eating well enjoyable and simple!</p>
            </div>

            <div class="col-lg-3" style="text-align:right">
                <img src="../Images/pngwing.com.png" style="width:100%"/>
            </div>

            <div class="col-lg-3">
                <ul style="font-size:large;font-weight:900;margin-top:50px">
                    <li style="margin:1em;">Custom tailored diet plans.</li>
                    <li style="margin:1em;">Free from refined sugars & trans fats</li>
                    <li style="margin:1em;">Different menu every day.</li>
                    <li style="margin:1em;">Flexibility of plans</li>
                    <li style="margin:1em;">Ongoing nutritionist support.</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container-fluid" style="background-color:floralwhite">
        <div class="row" style="margin-top:60px;margin-bottom:60px">
            <div class="col-lg-12">
                <h2 style="font-family:cursive;text-align:center;color:mediumseagreen">Our Benifits</h2>
                <h2 style="font-size:xx-large;font-weight:900;text-align:center">So Why Choose Fitmeals?</h2>
                <p style="text-align:center">Fitmeals is not a diet system that promotes cleanses, pills, preserved foods or any kind of disordered eating habits. We’re all about wholesome & nourishing foods that make you feel the best version of yourself. .</p>
            </div>
        </div>

    <div class="row">
        <div class="col-lg-3">
            <img src="../Images/natural.png" class="center"/>
            <h4 style="margin-top:20px;text-align:center"><b>Freshs ingredients</b></h4>
            <p style="margin-bottom:30px;text-align:center">Procuring fresh and fundamental ingredients required for a wholesome meal.</p>
        </div>

        <div class="col-lg-3">
            <img src="../Images/star.png" class="center"/>
            <h4 style="margin-top:20px;text-align:center"><b>Finest quality</b></h4>
            <p style="margin-bottom:30px;text-align:center">All the meals are designed by our nutrition experts using only the best quality ingredients.</p>
        </div>

        <div class="col-lg-3">
            <img src="../Images/shipped.png" class="center"/>
            <h4 style="margin-top:20px;text-align:center"><b>On time delivery</b></h4>
            <p style="margin-bottom:30px;text-align:center">Helping you stay ahead of your diet plans.</p>
        </div>

        <div class="col-lg-3">
            <img src="../Images/gmo-free.png" class="center"/>
            <h4 style="margin-top:20px;text-align:center"><b>Preservative-free</b></h4>
            <p style="margin-bottom:30px;text-align:center">Your ultimate plan for eating clean without added preservatives.</p>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="i">
                <img src="../Images/kisspng-pasta-fettuccine-alfredo-food-cooking-salad-eggplant-5ad6e718553679.5279093715240333043491.png" class="i"/>
            </div>
        </div>
    </div>
    </div>

    <div class="container-fluid" style="background:#FAF9F6">
        <div class="row">
            <div class="col-lg-12">
                <p style="font-family:cursive;color:forestgreen;text-align:center;font-size:large;font-weight:900;">Hungry yet?</p>
                <p style="text-align:center;font-size:larger;font-weight:900;color:red">Choose your Meal Plan</p>
            </div>
        </div>
    

        <div class="row" style="padding:80px;">
                        <div class="col-sm-3">
                            <div style="box-shadow:0 0 30px rgba(0,0,0,0.5);overflow:hidden;border-radius:15px;">
                                <img src="../Images/assorted-fruits-on-bowl-1546896__ResizedImageWzg1MCw1NjZd.jpg" style="border-bottom-right-radius:15px;border-bottom-right-radius:15px;width:100%;"/>
                                <h4 style="text-align:center;font-family:Helvetica Neue">Weight Loss Meal Plan</h4>
                                <p style="font-family:Helvetica Neuel;">If your aim is to lose weight in a gradual, healthy manner then this diet would meet your requirements. The meals are well balanced and consist of complex carbohydrates, lean protein, healthy fats and generous portions of fruits and vegetables which add all the essential vitamins, minerals and fibre to your diet.</p>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div style="box-shadow:0 0 30px rgba(0,0,0,0.5);overflow:hidden;border-radius:15px;">
                                <img src="../Images/8e297f475f22661f8df5db60dcca.jpeg" style="border-bottom-right-radius:15px;border-bottom-right-radius:15px;width:100%;"/>
                                <h4 style="text-align:center;font-family:Helvetica Neue">Athletic Meal Plan</h4>
                                <p style="font-family:Helvetica Neuel;">A diet rich in protein is essential for promoting muscle growth and repair while simultaneously burning fat to ensure you stay in shape. This plan includes high protein meals for individuals who want to gain weight or build muscle. If you are a fitness enthusiast who’s looking for meals higher in calories and lean protein then we’ve got you covered.</p>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div style="box-shadow:0 0 30px rgba(0,0,0,0.5);overflow:hidden;border-radius:15px;">
                                <img src="../Images/healthy-vegetables-wooden-table.jpg" style="border-bottom-right-radius:15px;border-bottom-right-radius:15px;width:100%;"/>
                                <h4 style="text-align:center;font-family:Helvetica Neue">Maintenance Meal Plan</h4>
                                <p style="font-family:Helvetica Neuel;margin-bottom:50px">This plan is for individuals looking for meals that will help in weight maintenance. All the meals have moderately portioned macros and micros.</p>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div style="box-shadow:0 0 30px rgba(0,0,0,0.5);overflow:hidden;border-radius:15px;">
                                <img src="../Images/muscle-maintenance-nutrition-plan-e1465206218861.jpg" style="border-bottom-right-radius:15px;border-bottom-right-radius:15px;width:100%;"/>
                                <h4 style="text-align:center;font-family:Helvetica Neue">Keto Meal Plan</h4>
                                <p style="font-family:Helvetica Neuel;margin-bottom:30px">The keto diet is all about eating meals that are high in fat, consist moderate portions of protein and very low in carbs. The reduction of carbohydrates results in a metabolic process called ketosis where your body fat is then used to generate energy in the body.</p>
                            </div>
                        </div>
                    </div>
                </div>

    <footer>
       <div class="waves">
           <div class="wave" id="wave1"></div>
           <div class="wave" id="wave2"></div>
           <div class="wave" id="wave3"></div>
           <div class="wave" id="wave4"></div>
       </div>
        <ul class="social_icon">
            <li><a href="#"><ion-icon name="logo-facebook"></ion-icon></a></li>
            <li><a href="#"><ion-icon name="logo-instagram"></ion-icon></a></li>
            <li><a href="#"><ion-icon name="logo-twitter"></ion-icon></a></li>
        </ul>

        <ul class="menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Team</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </footer>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </form>
</body>
</html>
