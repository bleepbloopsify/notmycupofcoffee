<!DOCTYPE html>
<html lang="en-US">
	<head>
		<link rel="stylesheet" type="text/css" href="bootstrap.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<title>Safety In Numbers</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="UTF-8">
	</head>
	<body>
		<div id="wrap">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class ="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="SafetyInNumbers.html"> Safety In Numbers </a>
				</div>
				<div id="navbar" class="navbar-collapse collapse navbar-right">
					<ul class = "nav navbar-nav">
						<li><a href="SafetyInNumbers.html">Home</a></li>
						<li><a href="Map.html">Map</a></li>
						<li><a href="Statistics.html">Statistics</a></li>
						<li><a href="About.html">About</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="row">
			<div class = "col-sm-11 col-xs-12" style="padding: 30px; height: 110px;"> 
				<h3 style="color: #4A4A4A; padding: 30px;">Precinct Data</h3>
			</div> 
		</div>
		<div class="row">
			<div class = "col-sm-11 col-xs-12" style="padding-left: 10vw;"> 
				<h3 style="color: #4A4A4A;">
                    Population <%= request.getParameter("addressInput")%></%>
                </h3>
			</div> 
		</div>
		<div class="row">
			<div class="col-sm-10 col-sm-offset-1">
				<div class="panel-group" id="LocationData">
                    <div class="panel panel-default" id="panelMurder">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseMurder" 
           href="#collapseMurder" class="collapsed"> 
                                    Murders
                                </a>
                            </h4>

                        </div>
                        <div id="collapseMurder" class="panel-collapse collapse no-transition">
                            <div class="list-groups">
                            	<div class="list-group-item">Murder and Non-Negligible Manslaughter</div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="panelDangerousWeapons">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseDangerousWeapons" 
           href="#collapseDangerousWeapons" class="collapsed">
                                    Dangerous Weapons
                                </a>
                            </h4>

                        </div>
                        <div id="collapseDangerousWeapons" class="panel-collapse collapse no-transition">
                              <div class="list-groups">
                            	<div class="list-group-item">Felony Dangerous Weapons</div>
                              </div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="panelSexCrimes">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseSexCrimes" 
           href="#collapseSexCrimes" class="collapsed">
                                    Sex Crimes
                                </a>
                            </h4>

                        </div>
                        <div id="collapseSexCrimes" class="panel-collapse collapse no-transition">
                            <div class="list-groups">
                            	<div class="list-group-item">Rape</div>
                            	<div class="list-group-item">Felony Sex Crimes
                            	</div>
                            	<div class="list-group-item">Misdemeanor Sex Crimes
                                </div>
                             </div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="panelAssault">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseAssault" 
           href="#collapseAssault" class="collapsed">
                                    Assault
                                </a>
                            </h4>

                        </div>
                        <div id="collapseAssault" class="panel-collapse collapse no-transition">
                            <div class="list-groups">
                            	<div class="list-group-item">Felony Assault
                            	</div>
                            	<div class="list-group-item">Assault Third Degree
                            	</div>
                            	<div class="list-group-item">Offenses Against The Person
                            	</div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="panelTheft">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseTheft" 
           href="#collapseTheft" class="collapsed">
                                    Theft
                                </a>
                            </h4>
                        </div>
                        <div id="collapseTheft" class="panel-collapse collapse no-transition">
                        	<div class="list-groups">
                        		<div class="list-group-item"> Robbery
                        		</div>
                        		<div class="list-group-item"> Burglary
                        		</div>
                        		<div class="list-group-item"> Grand Larceny
                        		</div>
                        		<div class="list-group-item"> 
                        			Grand Larceny of Motor Vehicles
                        		</div>
                        		<div class="list-group-item"> Petty Larceny
                        		</div>
                        	</div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="panelMotor">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseMotor" 
           href="#collapseMotor" class="collapsed">
                                    Vehicles
                                </a>
                            </h4>
                        </div>
                        <div id="collapseMotor" class="panel-collapse collapse no-transition">
                            <div class="list-groups">
                            	<div class="list-group-item">
                            		Grand Larceny of Motor Vehicles
                            	</div>
                            	<div class="list-group-item">
                            		Unauthorized Use of a Vehicle
                            	</div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="panelDrugs">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseDrugs" 
           href="#collapseDrugs" class="collapsed">
                                    Drugs
                                </a>
                            </h4>

                        </div>
                        <div id="collapseDrugs" class="panel-collapse collapse no-transition">
                             <div class="list-groups">
                            	<div class="list-group-item">
                            		Felony Dangerous Drugs
                            	</div>
                            	<div class="list-group-item">
                            		Misdemeanor Dangerous Drugs
                            	</div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="panelCrimMis">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseCrimMis" 
           href="#collapseCrimMis" class="collapsed">
                                    Criminal Mischief
                                </a>
                            </h4>

                        </div>
                        <div id="collapseCrimMis" class="panel-collapse collapse no-transition">
                        	 <div class="list-groups">
                            	<div class="list-group-item">Felony Criminal Mischief</div>
                            	<div class="list-group-item">
                            		Misdemeanor Criminal Mischief 
                            	</div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="panelHarrassment">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseHarrassment" 
           href="#collapseDrugs" class="collapsed">
                                    Harrassment
                                </a>
                            </h4>

                        </div>
                        <div id="collapseHarrassment" class="panel-collapse collapse no-transition">
                             <div class="list-groups">
                            	<div class="list-group-item">
                            		Aggravated Harassment
                            	</div>
                            	<div class="list-group-item">
                            		Harassment
                            	</div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default" id="panelMisc">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-target="#collapseMisc" 
           href="#collapseMisc" class="collapsed">
                                    Miscellaneous
                                </a>
                            </h4>

                        </div>
                        <div id="collapseMisc" class="panel-collapse collapse no-transition">
                        	 <div class="list-groups">
                            	<div class="list-group-item">Arson</div>
                            	<div class="list-group-item">
                            		Intoxicated and Impaired
                            	</div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
		<div id="push"></div>
        </div>
		<div id="footer">
			<div class="container">
				<p class="text-muted"></p>
			</div>
		</div>
	</body>
</html>