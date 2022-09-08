@include('navbar')
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>aranoz</title>

     <!-- Required meta tags -->
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <title>aranoz</title>
     <link rel="icon" href="{{url('public')}}/img/favicon.png">
     <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="{{url('public')}}/css/bootstrap.min.css">
     <!-- animate CSS -->
     <link rel="stylesheet" href="{{url('public')}}/css/animate.css">
     <!-- owl carousel CSS -->
     <link rel="stylesheet" href="{{url('public')}}/css/owl.carousel.min.css">
     <!-- font awesome CSS -->
     <link rel="stylesheet" href="{{url('public')}}/css/all.css">
     <!-- flaticon CSS -->
     <link rel="stylesheet" href="{{url('public')}}/css/flaticon.css">
     <link rel="stylesheet" href="{{url('public')}}/css/themify-icons.css">
     <!-- font awesome CSS -->
     <link rel="stylesheet" href="{{url('public')}}/css/magnific-popup.css">
     <!-- swiper CSS -->
     <link rel="stylesheet" href="{{url('public')}}/css/slick.css">
     <!-- style CSS -->
     <link rel="stylesheet" href="{{url('public')}}/css/style.css">

</head>
<body>
    <section class="login_part padding_top">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_text text-center">
                        <div class="login_part_text_iner">
                            <h2>Ingin bergabung bersama kami?</h2>
                            <p>Jaminan keaslian produk sampai 100%, tidak ada barang KW masuk ke sistem kami. 
                                Harga yang baik bagi yang ikut join</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3>Selamat Datang ! <br>
                                Silakan Bergabung sekarang</h3>

                              @include('template.utils.notif')
                              <form action="{{url('login')}}" method="post">
                                @csrf
                                <div class="col-md-12 form-group p_star">
                                    <input type="email" class="form-control" placeholder="Email" name="email">     
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="password" class="form-control" placeholder="Password" name="password">
                                </div>
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                                        <input type="checkbox" id="f-option" name="selector">
                                        <label for="f-option">Remember me</label>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-block">
                                        log in
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>
</html>