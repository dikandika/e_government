@extends('dashboard.homeBase')


@section('content')
<div class="site container">
    <div class="root responsivegrid">
<div class="aem-Grid aem-Grid--12 aem-Grid--default--12 ">
    
    <div class="headerbanner aem-GridColumn aem-GridColumn--default--12"><div class="header-container">

    <header class="homepage-header headerdss">
        <div class="header__top-standard desktop">
            <div class="containerdss_headeritems">
                <div class="header-wrapper">

                    <!-- 2nd row -->
                    <div class="logo"></div>

                    <!-- 3rd row -->
                    <nav class="nav navdss_container">

						@auth
                        <form action="{{ url('/logout') }}" method="POST"> @csrf <button type="submit" class="btn dropbtn">Log Out</button></form>
						@endauth
						@guest
						<a class="btn dropbtn" href="/login">Log In</a>
						@endguest
                        
						<!-- DESKTOP login button -->
						{{-- <button class="dropbtn">Log In&nbsp;<i class="fa fa-user"></i></button> --}}
                        {{-- <div class="dropdown phdss_login animatebottomline">
                            <button class="dropbtn">Log In&nbsp;<i class="fa fa-user"></i></button>
                            <div class="dropdown-content">
                                <a id="btnSingPassLogin" class="headerdss_icons">FOR INDIVIDUAL USERS (SINGPASS LOG IN)</a>
                                <a id="btnCorpPassLogin" class="headerdss_icons">FOR BUSINESS USERS (SINGPASS LOG IN)</a>
                            </div>
                        </div> --}}

						<!-- DESKTOP logout button -->
						{{-- <button id="btnLogout" class="dropbtn animatebottomline">Logout</button> --}}

                        {{-- <div class="phdss_logout" style="display: none;">
							<div id="iconsSingpass" class="iconsSp">
								<button id="btnUser" class="dropbtn animatebottomline"><i class="fa fa-user"></i></button>
								&nbsp;|&nbsp;							
								<button id="btnNotif" class="dropbtn animatebottomline"><i class="fa fa-bell"></i></button>
								&nbsp;|&nbsp; 
							</div>
                            <button id="btnLogout" class="dropbtn animatebottomline">Logout</button>
                        </div> --}}

                    </nav>

                </div>
            </div>
        </div>

        <div class="header-bottom-standard">
            <div class="containerdssone">
                <div class="header__bottom-bar">
                    <div class="header__bottom-bar-icons">
                        {{-- <div class="font-resizer">
                            <button id="_decreaseFont" data-size="normal" class="js-resizer is-active"><span class="visuallyhidden">Normal Font Size</span>A</button>
                            <button id="_resetFont" data-size="big" class="js-resizer"><span class="visuallyhidden">Big Font Size</span>A</button>
                            <button id="_increaseFont" data-size="bigger" class="js-resizer"><span class="visuallyhidden">Bigger Font Size</span>A</button>
							<a href="javascript:window.print()" aria-label="print"><i class="fa fa-print dssIconColor"></i></a>
                        </div> --}}
                    </div>
                    <ul class="emergency-numbers headerRemoveIndentation">
                        <li class="emergency-numbers__item">
                            <p class="noresize">EMERGENCIES</p>
                            <span class="number">999</span>
                        </li>
                        <li class="emergency-numbers__item">
                            <p class="noresize">EMERGENCY SMS</p>
                            <span class="number">71999</span>
                        </li>
                        <li class="emergency-numbers__item">
                            <p class="noresize">HOTLINE</p>
                            <span class="number">1800 255 0000</span>
                        </li>
                        <li class="emergency-numbers__item">
                            <p style="font-size: 16px;"></p>
                            <a id="linkiwitness" title="I-Witness" href="/">I-Witness</a>
                        </li>
                        <div class="emergency-numbers__background-container">
                            <div class="emergency-numbers__background"></div>
                        </div>
                        <div class="clear"></div>
                    </ul>
                </div>
            </div>
        </div>
    </header>
</div>

<!-- entire banner -->

    
<script type="text/javascript" src="{{ asset('js/clientlibs-phhomelandingbanner.min.js') }}"></script>



<div id="main_dss" class="page-container homepage" style="background-image: linear-gradient(to bottom, #ffffff, transparent 60%),url({{ asset('assets/img/banner.jpg') }});">
	<!-- TOP ROW -->
    <div class="banner"></div>
    <!-- BOTTOM ROW -->
    <div class="containerdss">
        <div class="banner__text-wrapper">
            <span><a href="/">HOME</a></span>
            <span>&nbsp;&gt;&nbsp;</span>
            <span><a href="/" class="nobreakdss">E-SERVICES</a></span>
        </div>
		
    </div>
    <div class="containerdss">
		<h1 class="banner__text-title">E-SERVICES</h1>
    </div>
</div>

</div>
<div class="paddedlayout responsivegrid aem-GridColumn aem-GridColumn--default--12">
<div style="padding:0px;">
<div class="aem-Grid aem-Grid--12 aem-Grid--default--12 customlayoutclass portletlayoutcontainer" style="padding: 0px 0px; background-color: #e6e6e6;  min-height: 0px;  margin:  ; height: ; position: ;   max-width: ;   align-items: ;   ">
    
    <div class="cmp cmp-text aem-GridColumn aem-GridColumn--default--12">

</div>
<div class="homenotification aem-GridColumn aem-GridColumn--default--12">
    
<script type="text/javascript" src="/etc/designs/policehubhome/clientlibs/clientlibs-phhomenotification.min.js"></script>




<div id="phhomehomenotimain" class="bg-secondary-20" style="display:none;">
    <div id="phhomehomenotiheader" class="page">
        <div class="pad-04">
            <div class="h5">Notifications</div>
        </div>

        <div id="phhomehomenoticontainer"></div>

    </div>
</div>


</div>
<div class="text parbase aem-GridColumn aem-GridColumn--default--12">
<p class="phhometextspacing" style="font-size: 16px;">&nbsp; &nbsp;&nbsp;</p>

</div>
<div class="sectiontab aem-GridColumn aem-GridColumn--default--12"><!--<meta data-sly-use.clientlib="/libs/granite/sightly/templates/clientlib.html" data-sly-call="" data-sly-unwrap></meta>-->


</div>
<div class="text parbase aem-GridColumn aem-GridColumn--default--12">
<p style="font-size: 16px;">&nbsp; &nbsp;&nbsp;</p>

</div>
<div class="text parbase aem-GridColumn aem-GridColumn--default--12" style="padding: 0px 100px">
    @if(Session::has('message'))
        <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
    @endif
</div>
<div class="paddedlayout responsivegrid aem-GridColumn aem-GridColumn--default--12">
<div style="padding:0px;">
<div class="aem-Grid aem-Grid--12 aem-Grid--default--12 aem-Grid--tablet--12 aem-Grid--phone--12 customlayoutclass portletlayoutcontainer" style="padding: 0px 15px; background-color: transparent;  min-height: 0px;  margin: 0px auto; height: auto; position: relative;   max-width: 1220px;   align-items: ;   ">
    
    <div class="portlet aem-GridColumn--offset--tablet--0 aem-GridColumn--default--none aem-GridColumn--phone--none aem-GridColumn--phone--12 aem-GridColumn--tablet--none aem-GridColumn aem-GridColumn--tablet--6 aem-GridColumn--offset--phone--0 aem-GridColumn--offset--default--0 aem-GridColumn--default--4">
        

<div class="main-head portletdiv  citizenservice  " style="">
	<a href="/skck" target="_self" style="text-decoration: none; cursor: pointer;">
		<div class="">
			<div class="pad-03">
				<div class="card">
				
					<div class="card-img bg-img bg-cover show-tablet-up block" style="background-image: url(../assets/img/policehub-eMedical.jpg); background-color: black;">
					</div>

					<div class="bg-white card-txt">
						<div class="hide-tablet-up block row bg-img bg-cover" style="background-image: linear-gradient(rgba(255,255,255,0.7), rgba(255,255,255,0.7)), url(../assets/img/policehub-eMedical.jpg);">
							<div class="svc-text-table">
								<div class="svc-text-cell">
									<div class="pad-svccard text-center-tablet-up ">
										<div class="h5 marg-bot-0 sm portletheader">SKCK</div>
									</div>
								</div>
							</div>
						</div>
						<div class="show-tablet-up block row bg-img bg-cover">
							<div class="svc-text-table">
								<div class="svc-text-cell">
									<div class="pad-svccard text-center-tablet-up ">
										<div class="h5 marg-bot-0 sm portletheader">SKCK</div>
										<div class="show-tablet-up block marg-top-02">
											<p class="marg-bot-0" style="font-size: 12px;">Surat Keterangan Catatan Kepolisian, sebelumnya dikenal sebagai Surat Keterangan Kelakuan Baik adalah surat keterangan yang diterbitkan oleh Polri yang berisikan catatan kejahatan seseorang</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</a>
	<div style="clear:both;"></div>
</div>


</div>
<div class="portlet aem-GridColumn--offset--tablet--0 aem-GridColumn--default--none aem-GridColumn--phone--none aem-GridColumn--phone--12 aem-GridColumn--tablet--none aem-GridColumn aem-GridColumn--tablet--6 aem-GridColumn--offset--phone--0 aem-GridColumn--offset--default--0 aem-GridColumn--default--4">


<div class="main-head portletdiv popularservice citizenservice  " style="">
	<a href="/izin-keramaian" target="_self" style="text-decoration: none; cursor: pointer;">
		<div class="">
			<div class="pad-03">
				<div class="card">
				
					<div class="card-img bg-img bg-cover show-tablet-up block" style="background-image: url(../assets/img/policehub-certifiedtrue.jpg); background-color: black;">
					</div>

					<div class="bg-white card-txt">
						<div class="hide-tablet-up block row bg-img bg-cover" style="background-image: linear-gradient(rgba(255,255,255,0.7), rgba(255,255,255,0.7)), url(../assets/img/policehub-certifiedtrue.jpg);">
							<div class="svc-text-table">
								<div class="svc-text-cell">
									<div class="pad-svccard text-center-tablet-up ">
										<div class="h5 marg-bot-0 sm portletheader">IZIN KERAMAIAN</div>
									</div>
								</div>
							</div>
						</div>
						<div class="show-tablet-up block row bg-img bg-cover">
							<div class="svc-text-table">
								<div class="svc-text-cell">
									<div class="pad-svccard text-center-tablet-up ">
										<div class="h5 marg-bot-0 sm portletheader">IZIN KERAMAIAN</div>
										<div class="show-tablet-up block marg-top-02">
											<p class="marg-bot-0" style="font-size: 12px;">Izin keramaian dimaksudkan untuk menjaga suasana yang kondusif bagi semua pihak. Kelancaran suatu acara keramaian pasti harus didukung dengan persiapan pengamanan yang pas.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</a>
	<div style="clear:both;"></div>
</div>


</div>
<div class="portlet aem-GridColumn--offset--tablet--0 aem-GridColumn--default--none aem-GridColumn--phone--none aem-GridColumn--phone--12 aem-GridColumn--tablet--none aem-GridColumn aem-GridColumn--tablet--6 aem-GridColumn--offset--phone--0 aem-GridColumn--offset--default--0 aem-GridColumn--default--4">


<div class="main-head portletdiv popularservice citizenservice  " style="">
	<a href="/pengawalan-jalan" target="_self" style="text-decoration: none; cursor: pointer;">
		<div class="">
			<div class="pad-03">
				<div class="card">
				
					<div class="card-img bg-img bg-cover show-tablet-up block" style="background-image: url(../assets/img/policehub-QDL.jpg); background-color: black;">
					</div>

					<div class="bg-white card-txt">
						<div class="hide-tablet-up block row bg-img bg-cover" style="background-image: linear-gradient(rgba(255,255,255,0.7), rgba(255,255,255,0.7)), url(../assets/img/policehub-QDL.jpg);">
							<div class="svc-text-table">
								<div class="svc-text-cell">
									<div class="pad-svccard text-center-tablet-up ">
										<div class="h5 marg-bot-0 sm portletheader">PENGAWALAN JALAN</div>
									</div>
								</div>
							</div>
						</div>
						<div class="show-tablet-up block row bg-img bg-cover">
							<div class="svc-text-table">
								<div class="svc-text-cell">
									<div class="pad-svccard text-center-tablet-up ">
										<div class="h5 marg-bot-0 sm portletheader">PENGAWALAN JALAN</div>
										<div class="show-tablet-up block marg-top-02">
											<p class="marg-bot-0" style="font-size: 12px;">Pengawalan jalan dimaksudkan untuk menjaga kelancaran jalan bagi suatu pihak yang memiliki konsen pribadi.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</a>
	<div style="clear:both;"></div>
</div>


</div>


    
</div>
</div></div>
<div class="text parbase aem-GridColumn aem-GridColumn--default--12">
<p style="font-size: 16px;">&nbsp; &nbsp;&nbsp;</p>

</div>

    
</div>
</div></div>
<div class="cmp htmlfooter aem-GridColumn aem-GridColumn--default--12">

<div class="footer-container">
    <footer class="footer">
		<!--
        <button href="#" class="back-to-top desktop-tablet kill-sticky" aria-label="Back to Top">
            <span class="back-to-top__inner">
                <span class="icon icon-arrow-up"></span>
                <span class="icon icon-arrow-down2"></span>
                <span class="text">BACK TO TOP</span>
            </span>
        </button>
        <button href="#" class="back-to-top mobile-only" aria-label="Back to Top">
            <span class="back-to-top__inner"><span class="icon icon-arrow-up"></span><span class="text">TOP</span></span>
        </button>
		-->
        <div class="containerdss">
            <div class="footer-wrap">
                <div class="col-md-12 footer-wrap__header">
                    <h2 class="h2dss h2font">E-Services</h2>
                </div>


                {{-- <div class="footer__columns">
                    <div class="col-md-2 col-xs-12">
                        <div class="footer-item footer-item--has-level2">
                            <div class="footer-item__header">
                                <a href="https://www.police.gov.sg/Who-We-Are" target="" title="Go to Who We Are page" class="header">Who We Are</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <div class="footer-item footer-item--has-level2">
                            <div class="footer-item__header">
                                <a href="https://www.police.gov.sg/Media-Room" target="" title="Go to Media Room page" class="header">Media Room</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <div class="footer-item footer-item--has-level2">
                            <div class="footer-item__header">
                                <a href="https://www.police.gov.sg/Community" target="" title="Go to Community page" class="header">Community</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <div class="footer-item footer-item--has-level2">
                            <div class="footer-item__header">
                                <a href="https://www.police.gov.sg/Join-SPF" target="" title="Go to Join SPF page" class="header">Join SPF</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <div class="footer-item footer-item--has-level2">
                            <div class="footer-item__header">
                                <a href="https://www.police.gov.sg/Advisories" target="" title="Go to Advisories page" class="header">Advisories</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <div class="footer-item footer-item--has-level2">
                            <div class="footer-item__header">
                                <a href="https://www.police.gov.sg/Events" target="" title="Go to Events page" class="header">Events</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <div class="footer-item footer-item--has-level2">
                            <div class="footer-item__header">
                                <a href="https://eservices.police.gov.sg/homepage" target="" title="Go to E-Services page" class="header">E-Services</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 col-xs-12">
                        <div class="footer-item footer-item--has-level2">
                            <div class="footer-item__header">
                                <a href="https://www.police.gov.sg/useful-links" class="header">Useful Links</a>
                            </div>
                        </div>
                    </div>
                </div> --}}

                {{-- <div class="footer__common">
                    <div class="footer-common__links col-md-12 col-xs-12">
                        <div class="footer-common__links-container">
                            <a href="https://www.sgsecure.sg" title="Go to SG Secure page" target=""><img id="sgsecure" src="/content/dam/spfpolicehub/sgsecure.png" alt="SGSecure Logo" class="secureLogo"></a>
                            <a href="https://www.police.gov.sg/Contact-Us" title="Go to /Contact-Us page" target="">Contact Us</a>
                            <a id="footerlinkEfeedback" href="https://eservices.police.gov.sg/content/policehubefeedback/efeedback.html" title="Go to https://eservices.police.gov.sg/content/policehubefeedback/efeedback.html page" target="">E-Feedback</a>
                            <a href="https://va.ecitizen.gov.sg/cfp/CustomerPages/SPF/explorefaq.aspx" title="Go to https://va.ecitizen.gov.sg/cfp/CustomerPages/SPF/explorefaq.aspx page" target="">FAQ</a>
                        </div>
                        <div class="footer-common__social" style="padding:20px 16px;">
                            <a href="https://www.facebook.com/singaporepoliceforce" title="Find us on Facebook" target="_blank" rel="noopener noreferrer"><span class="icon icon-facebook"></span></a>

                            <a href="https://instagram.com/singaporepoliceforce" title="Find us on Instagram" target="_blank" rel="noopener noreferrer"><span class="icon icon-instagram"></span></a>

                            <a href="https://twitter.com/singaporepolice" title="Find us on Twitter" target="_blank" rel="noopener noreferrer"><span class="icon icon-twitter"></span></a>

                            <a href="https://www.youtube.com/channel/UCVHslVZDC3bT0RdYF5a7vhw" title="Find us on Youtube" target="_blank" rel="noopener noreferrer"><span class="icon icon-youtube"></span></a>
                        </div>
                    </div>
                </div> --}}
                <div class="clear"></div>
                <div class="footer__legal">
                    {{-- <div class="footer__legal-links">
                        <a href="https://www.police.gov.sg/Site-Map" target="" title="Go to Site Map page">Site Map</a>
                        <a href="https://www.police.gov.sg/Privacy-Statement" target="" title="Go to Privacy Statement page">Privacy Statement</a>
                        <a href="https://www.police.gov.sg/Terms-of-Use" target="" title="Go to Terms of Use page">Terms of Use</a>
                        <a href="https://www.reach.gov.sg" target="_blank" rel="noopener noreferrer" title="Go to Share Your Views @ Reach page">Share Your Views @ Reach</a>
                        <a href="https://www.police.gov.sg/report-vulnerability" target="" title="Go to Report Vulnerability page">Report Vulnerability</a>
                    </div> --}}

                    <div class="footer__copyright-container">
                        {{-- <span class="copyright">© 2021</span> --}}
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </footer>
</div>

<script src="//va.ecitizen.gov.sg/cfp/Script/Jquery/jquery.min.js" type="text/javascript"></script>


	
	<script src="https://assets.wogaa.sg/scripts/wogaa.js"></script>


</div>

    
</div></div>

</div>


{{-- <div class="container">
    
    <div class="jumbotron">
        <h1 class="display-3">Hello, world!</h1>
        <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
        <hr class="my-4">
        <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
        <p class="lead"><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
      </div>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    You are logged in!
                </div>
            </div>
        </div>
    </div>
</div> --}}
@endsection
