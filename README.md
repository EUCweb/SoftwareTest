# SoftwareTest
Run a pester Softwaretest, check all installed Software and create a HTML report with extend.exe




<!DOCTYPE html>
<html>

	<head>
	<meta charset='utf-8' />
	<meta name='robots' content='noodp, noydir' />
	<meta name='viewport' content='width=device-width, initial-scale=1' />

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,600' rel='stylesheet' type='text/css' />
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
	<link href='https://cdn.rawgit.com/extent-framework/extent-github-cdn/8644a9c/v3html/css/extent.css' type='text/css' rel='stylesheet' />

	<title>Extent Framework</title>

	<style type='text/css'>
		/* json-tree */
		.jstBracket,.jstComma,.jstValue{white-space:pre-wrap}.jstValue{font-size:10px;font-weight:400;font-family:"Lucida Console",Monaco,monospace}.jstProperty{color:#666;word-wrap:break-word}.jstBool{color:#2525CC}.jstNum{color:#D036D0}.jstNull{color:gray}.jstStr{color:#2DB669}.jstFold:after{content:' -';cursor:pointer}.jstExpand{white-space:normal}.jstExpand:after{content:' +';cursor:pointer}.jstFolded{white-space:normal!important}.jstHiddenBlock{display:none}

	</style>

	<script type="text/javascript">
		/*! json-tree - v0.2.2 - 2017-09-25, MIT LICENSE */
		var JSONTree=function(){var n={"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#x27;","/":"&#x2F;"},t=0,r=0;this.create=function(n,t){return r+=1,N(u(n,0,!1),{class:"jstValue"})};var e=function(t){return t.replace(/[&<>'"]/g,function(t){return n[t]})},s=function(){return r+"_"+t++},u=function(n,t,r){if(null===n)return f(r?t:0);switch(typeof n){case"boolean":return l(n,r?t:0);case"number":return i(n,r?t:0);case"string":return o(n,r?t:0);default:return n instanceof Array?a(n,t,r):c(n,t,r)}},c=function(n,t,r){var e=s(),u=Object.keys(n).map(function(r){return j(r,n[r],t+1,!0)}).join(m()),c=[g("{",r?t:0,e),N(u,{id:e}),p("}",t)].join("\n");return N(c,{})},a=function(n,t,r){var e=s(),c=n.map(function(n){return u(n,t+1,!0)}).join(m());return[g("[",r?t:0,e),N(c,{id:e}),p("]",t)].join("\n")},o=function(n,t){var r=e(JSON.stringify(n));return N(v(r,t),{class:"jstStr"})},i=function(n,t){return N(v(n,t),{class:"jstNum"})},l=function(n,t){return N(v(n,t),{class:"jstBool"})},f=function(n){return N(v("null",n),{class:"jstNull"})},j=function(n,t,r){var s=v(e(JSON.stringify(n))+": ",r),c=N(u(t,r,!1),{});return N(s+c,{class:"jstProperty"})},m=function(){return N(",\n",{class:"jstComma"})},N=function(n,t){return d("span",t,n)},d=function(n,t,r){return"<"+n+Object.keys(t).map(function(n){return" "+n+'="'+t[n]+'"'}).join("")+">"+r+"</"+n+">"},g=function(n,t,r){return N(v(n,t),{class:"jstBracket"})+N("",{class:"jstFold",onclick:"JSONTree.toggle('"+r+"')"})};this.toggle=function(n){var t=document.getElementById(n),r=t.parentNode,e=t.previousElementSibling;""===t.className?(t.className="jstHiddenBlock",r.className="jstFolded",e.className="jstExpand"):(t.className="",r.className="",e.className="jstFold")};var p=function(n,t){return N(v(n,t),{})},v=function(n,t){return Array(2*t+1).join(" ")+n};return this}();
	</script>
</head>


	<body class='extent default hide-overflow  standard'>
		<div id='theme-selector' alt='Click to toggle theme. To enable by default, use theme configuration.' title='Click to toggle theme. To enable by default, use theme configuration.'>
			<span><i class='material-icons'>desktop_windows</i></span>
		</div>

		<nav>
	<div class="nav-wrapper">
		<a href="#!" class="brand-logo black"><img src="https://cdn.rawgit.com/extent-framework/extent-github-cdn/d74480e/commons/img/logo.png"></a>
		<ul id='slide-out' class='side-nav fixed hide-on-med-and-down'>
			<li class='waves-effect active'><a href='#!' view='test-view' onclick="configureView(0);chartsView('test');"><i class='material-icons'>dashboard</i></a></li>
            			<li class='waves-effect'><a href='#!' onclick="configureView(-1);chartsView('dashboard');" view='dashboard-view'><i class='material-icons'>track_changes</i></a></li>
		</ul>
		<span class='report-name'>Extent Framework</span>
		<span class='report-headline'></span>
		<ul id='nav-mobile' class='right hide-on-med-and-down nav-right'>
			<a href='#!'><span class='label blue darken-3 suite-start-time'>7/29/2019 2:12:34 PM</span></a>
		</ul>
	</div>
</nav>

		<!-- container -->
		<div class='container'>

<div id='test-view' class='view'>
	<section id='controls'>
		<div class='controls grey lighten-4'>
			<!-- test toggle -->
			<div class='chip transparent'>
				<a class='dropdown-button tests-toggle' data-activates='tests-toggle' data-constrainwidth='true' data-beloworigin='true' data-hover='true' href='#'>
				<i class='material-icons'>warning</i> Status
				</a>
				<ul id='tests-toggle' class='dropdown-content'>
					<li status='pass'><a href='#!'>Pass <i class='material-icons green-text'>check_circle</i></a></li>
															<li status='fail'><a href='#!'>Fail <i class='material-icons red-text'>cancel</i></a></li>
																				<li class='divider'></li>
					<li status='clear' clear='true'><a href='#!'>Clear Filters <i class='material-icons'>clear</i></a></li>
				</ul>
			</div>
			<!-- test toggle -->
			<!-- category toggle -->
			<!-- category toggle -->
			<!-- clear filters -->
			<div class='chip transparent hide'>
				<a class='' id='clear-filters' alt='Clear Filters' title='Clear Filters'>
				<i class='material-icons'>close</i> Clear
				</a>
			</div>
			<!-- clear filters -->
			<!-- enable dashboard -->
			<div id='toggle-test-view-charts' class='chip transparent'>

				<a class='pink-text' id='enable-dashboard' alt='Enable Dashboard' title='Enable Dashboard'>
				<i class='material-icons'>track_changes</i> Dashboard
				</a>
			</div>
			<!-- enable dashboard -->
			<!-- search -->
			<div class='chip transparent' alt='Search Tests' title='Search Tests'>
				<a href="#" class='search-div'>
				<i class='material-icons'>search</i> Search
				</a>
				<div class='input-field left hide'>
					<input id='search-tests' type='text' class='validate browser-default' placeholder='Search Tests...'>
				</div>
			</div>
			<!-- search -->
		</div>
	</section>



<div id='test-view-charts' class='subview-full'>
    <div id='charts-row' class='row nm-v nm-h'>
        <div class='col s12 m6 l6 np-h'>
            <div class='card-panel nm-v'>
                <div class='left panel-name'>Tests</div>
                <div class='chart-box' style="max-height:94px;">
                    <canvas id='parent-analysis' width='90' height='80'></canvas>
                </div>
                <div class='block text-small'>
                    <span class='tooltipped' data-position='top' data-tooltip='96.875%'><span class='strong'>62</span> tests passed</span>
                </div>
                <div class='block text-small'>
                    <span class='tooltipped' data-position='top' data-tooltip='3.125%'><span class='strong'>2</span> failed,</span>
					<span class='tooltipped' data-position='top' data-tooltip='0%'><span class='strong'>0</span> skipped, </span>
					<span class='tooltipped' data-position='top' data-tooltip='0%'><span class='strong'>0</span> others</span>
                </div>
            </div>
        </div>
        <div class='col s12 m6 l6 np-h'>
            <div class='card-panel nm-v'>
                <div class='left panel-name'>Steps</div>
                <div class='chart-box' style="max-height:94px;">
                    <canvas id='child-analysis' width='90' height='80'></canvas>
                </div>
                <div class='block text-small'>
                    <span class='tooltipped' data-position='top' data-tooltip='96.875%'><span class='strong'>62</span> steps passed</span>
                </div>
                <div class='block text-small'>
                    <span class='tooltipped' data-position='top' data-tooltip='3.125%'><span class='strong'>2</span> failed,</span>
					<span class='tooltipped' data-position='top' data-tooltip='0%'><span class='strong'>0</span> skipped,</span>
					<span class='tooltipped' data-position='top' data-tooltip='0%'><span class='strong'>0</span> others</span>
				</div>
            </div>
        </div>
		    </div>
    <div id="timeline-chart" class="row nm-v nm-h">
        <div class="col s12 m12 l12 np-h">
            <div class="card-panel">
                <div class='left panel-name'>Timeline (seconds)</div>
                <div class="chart-box" style="width:98%;max-height:145px;">
                    <canvas id="timeline" height="120"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>
	<div class='subview-left left'>
		<div class='view-summary'>
			<ul id='test-collection' class='test-collection'>
				<li class='test displayed active has-leaf pass' status='pass' test-id='1'>
					<div class='test-heading'>
						<span class='test-name'>Application Configuration files</span>
						<span class='test-time'>7/29/2019 2:12:34 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:34 PM</span>
							<span class='label end-time'>7/29/2019 2:12:34 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='2'>
								<div class='collapsible-header'>
									<div class='node-name'>Application Configuration files.Test C:\windows\temp\SoftwareTest\1907\ConfigFiles\VD\Base.txt</div>
									<span class='node-time'>7/29/2019 2:12:34 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:34</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='3'>
					<div class='test-heading'>
						<span class='test-name'>LAPS - 6.2.0.0</span>
						<span class='test-time'>7/29/2019 2:12:34 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:34 PM</span>
							<span class='label end-time'>7/29/2019 2:12:34 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='4'>
								<div class='collapsible-header'>
									<div class='node-name'>LAPS - 6.2.0.0.Test Path C:\Program Files\LAPS\CSE\AdmPwd.dll</div>
									<span class='node-time'>7/29/2019 2:12:34 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:34</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='5'>
					<div class='test-heading'>
						<span class='test-name'>Application Configuration files</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='6'>
								<div class='collapsible-header'>
									<div class='node-name'>Application Configuration files.Test C:\windows\temp\SoftwareTest\1907\ConfigFiles\VD\STD.txt</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='7'>
					<div class='test-heading'>
						<span class='test-name'>Silverlight - 5.1.50918.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='8'>
								<div class='collapsible-header'>
									<div class='node-name'>Silverlight - 5.1.50918.0.Test Path C:\Program Files (x86)\Microsoft Silverlight\sllauncher.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='9'>
					<div class='test-heading'>
						<span class='test-name'>Oracle Java - 8.0.1120.15</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='10'>
								<div class='collapsible-header'>
									<div class='node-name'>Oracle Java - 8.0.1120.15.Test Path C:\Program Files (x86)\Java\jre1.8.0_112\bin\java.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='11'>
					<div class='test-heading'>
						<span class='test-name'>Application Configuration files</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='12'>
								<div class='collapsible-header'>
									<div class='node-name'>Application Configuration files.Test C:\windows\temp\SoftwareTest\1907\ConfigFiles\VD\STD.txt</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='13'>
					<div class='test-heading'>
						<span class='test-name'>PrinterLogic PrinterInstaller - 18.2.1.195</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='14'>
								<div class='collapsible-header'>
									<div class='node-name'>PrinterLogic PrinterInstaller - 18.2.1.195.Test Path C:\Program Files (x86)\Printer Properties Pro\Printer Installer Client\PrinterInstallerClient.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='15'>
					<div class='test-heading'>
						<span class='test-name'>Dachser PKS Launcher - 4.1.4.1</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='16'>
								<div class='collapsible-header'>
									<div class='node-name'>Dachser PKS Launcher - 4.1.4.1.Test Path C:\Program Files\DACHSER\PKS-Launcher\PKS-Launcher.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='17'>
					<div class='test-heading'>
						<span class='test-name'>IBM ACS Launcher - 5.3.4.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='18'>
								<div class='collapsible-header'>
									<div class='node-name'>IBM ACS Launcher - 5.3.4.0.Test Path C:\Program Files (x86)\IBM\ACS-Launcher\IBM ACS-Launcher.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='19'>
					<div class='test-heading'>
						<span class='test-name'>VNC Viewer - 1.2.1.6</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='20'>
								<div class='collapsible-header'>
									<div class='node-name'>VNC Viewer - 1.2.1.6.Test Path C:\Program Files\uvnc bvba\UltraVNC\vncviewer.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='21'>
					<div class='test-heading'>
						<span class='test-name'>PKS WINClient - 7.0.9.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='22'>
								<div class='collapsible-header'>
									<div class='node-name'>PKS WINClient - 7.0.9.0.Test Path C:\Program Files (x86)\PKS_WINClient\winclient\eXcite.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='23'>
					<div class='test-heading'>
						<span class='test-name'>7-Zip - 19.00</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='24'>
								<div class='collapsible-header'>
									<div class='node-name'>7-Zip - 19.00.Test Path C:\Program Files\7-Zip\7z.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='25'>
					<div class='test-heading'>
						<span class='test-name'>Google Chrome - 75.0.3770.142</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='26'>
								<div class='collapsible-header'>
									<div class='node-name'>Google Chrome - 75.0.3770.142.Test Path C:\Program Files (x86)\Google\Chrome\Application\chrome.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='27'>
					<div class='test-heading'>
						<span class='test-name'>IBM iAccess Client - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='28'>
								<div class='collapsible-header'>
									<div class='node-name'>IBM iAccess Client - .Test Path C:\Program Files (x86)\IBM\iAccessClient\acsmain.jar</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='29'>
					<div class='test-heading'>
						<span class='test-name'>Fastviewer - 3.20.0034</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='30'>
								<div class='collapsible-header'>
									<div class='node-name'>Fastviewer - 3.20.0034.Test Path C:\Program Files (x86)\FastViewer\Fastviewer_Support_Participant.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='31'>
					<div class='test-heading'>
						<span class='test-name'>Application Configuration files</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='32'>
								<div class='collapsible-header'>
									<div class='node-name'>Application Configuration files.Test C:\windows\temp\SoftwareTest\1907\ConfigFiles\VD\DEV.txt</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='33'>
					<div class='test-heading'>
						<span class='test-name'>FOD-Installer - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='34'>
								<div class='collapsible-header'>
									<div class='node-name'>FOD-Installer - .Test Path C:\Program Files (x86)\DACHSER\FOD-Installer\FOD-Installer.ps1</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='35'>
					<div class='test-heading'>
						<span class='test-name'>Switch User Language - 2.6.1.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='36'>
								<div class='collapsible-header'>
									<div class='node-name'>Switch User Language - 2.6.1.0.Test Path C:\Program Files (x86)\DACHSER\SwitchUserLanguage\SwitchUserLanguage.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='37'>
					<div class='test-heading'>
						<span class='test-name'>SAP Secure Login - 3.0.2003.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='38'>
								<div class='collapsible-header'>
									<div class='node-name'>SAP Secure Login - 3.0.2003.0.Test Path C:\Program Files (x86)\SAP\FrontEnd\SecureLogin\bin\sbus.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf fail' status='fail' test-id='39'>
					<div class='test-heading'>
						<span class='test-name'>Cisco Jabber - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right fail'>Fail</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf fail' status='fail' test-id='40'>
								<div class='collapsible-header'>
									<div class='node-name'>Cisco Jabber - .Test Path C:\Program Files (x86)\Cisco Systems\Cisco Jabber\CiscoJabber.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right fail'>Fail</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='fail'>
													<td class='status fail' title='Fail' alt='Fail'>
														<i class='material-icons'>cancel</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
<textarea disabled class='code-block'>Expected: {True}
But was:  {False}at line: 60 in C:\windows\temp\SoftwareTest\1907\Run-PesterTest.ps1
60: 					Test-Path $($Application[1]) | Should be $true</textarea>																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf fail' status='fail' test-id='41'>
					<div class='test-heading'>
						<span class='test-name'>Sennheiser Softphone SDK - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right fail'>Fail</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf fail' status='fail' test-id='42'>
								<div class='collapsible-header'>
									<div class='node-name'>Sennheiser Softphone SDK - .Test Path C:\Program Files (x86)\Sennheiser\SoftphoneSDK\SecomSDK.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right fail'>Fail</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='fail'>
													<td class='status fail' title='Fail' alt='Fail'>
														<i class='material-icons'>cancel</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
<textarea disabled class='code-block'>Expected: {True}
But was:  {False}at line: 60 in C:\windows\temp\SoftwareTest\1907\Run-PesterTest.ps1
60: 					Test-Path $($Application[1]) | Should be $true</textarea>																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='43'>
					<div class='test-heading'>
						<span class='test-name'>Application Configuration files</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='44'>
								<div class='collapsible-header'>
									<div class='node-name'>Application Configuration files.Test C:\windows\temp\SoftwareTest\1907\ConfigFiles\VD\DEV.txt</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='45'>
					<div class='test-heading'>
						<span class='test-name'>FOD-Installer - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='46'>
								<div class='collapsible-header'>
									<div class='node-name'>FOD-Installer - .Test Path C:\Program Files (x86)\DACHSER\FOD-Installer\FOD-Installer.ps1</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='47'>
					<div class='test-heading'>
						<span class='test-name'>Switch User Language - 2.6.1.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='48'>
								<div class='collapsible-header'>
									<div class='node-name'>Switch User Language - 2.6.1.0.Test Path C:\Program Files (x86)\DACHSER\SwitchUserLanguage\SwitchUserLanguage.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='49'>
					<div class='test-heading'>
						<span class='test-name'>Putty - Release 0.65</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='50'>
								<div class='collapsible-header'>
									<div class='node-name'>Putty - Release 0.65.Test Path C:\Program Files (x86)\SimonTatham\PUTTY.EXE</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='51'>
					<div class='test-heading'>
						<span class='test-name'>IBM Client Access - 13.0.15.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='52'>
								<div class='collapsible-header'>
									<div class='node-name'>IBM Client Access - 13.0.15.0.Test Path C:\Program Files (x86)\IBM\Client Access\cwbuisxe.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='53'>
					<div class='test-heading'>
						<span class='test-name'>Hardcopy - 2017.11.29</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='54'>
								<div class='collapsible-header'>
									<div class='node-name'>Hardcopy - 2017.11.29.Test Path C:\Program Files (x86)\Hardcopy\hardcopy.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='55'>
					<div class='test-heading'>
						<span class='test-name'>Keypass - 2.42.1.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='56'>
								<div class='collapsible-header'>
									<div class='node-name'>Keypass - 2.42.1.0.Test Path C:\Program Files (x86)\KeePass Password Safe 2\KeePass.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='57'>
					<div class='test-heading'>
						<span class='test-name'>Notepad++ - 7.71</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='58'>
								<div class='collapsible-header'>
									<div class='node-name'>Notepad++ - 7.71.Test Path C:\Program Files\Notepad++\notepad++.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='59'>
					<div class='test-heading'>
						<span class='test-name'>Word - 16.0.4873.1000</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='60'>
								<div class='collapsible-header'>
									<div class='node-name'>Word - 16.0.4873.1000.Test Path C:\Program Files (x86)\Microsoft Office\Office16\WINWORD.EXE</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='61'>
					<div class='test-heading'>
						<span class='test-name'>Excel - 16.0.4873.1000</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='62'>
								<div class='collapsible-header'>
									<div class='node-name'>Excel - 16.0.4873.1000.Test Path C:\Program Files (x86)\Microsoft Office\Office16\Excel.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='63'>
					<div class='test-heading'>
						<span class='test-name'>PowerPoint - 16.0.4266.1001</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='64'>
								<div class='collapsible-header'>
									<div class='node-name'>PowerPoint - 16.0.4266.1001.Test Path C:\Program Files (x86)\Microsoft Office\Office16\POWERPNT.EXE</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='65'>
					<div class='test-heading'>
						<span class='test-name'>Eclipe - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='66'>
								<div class='collapsible-header'>
									<div class='node-name'>Eclipe - .Test Path C:\dachdev\eclipse\2018-09\eclipse\eclipse.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='67'>
					<div class='test-heading'>
						<span class='test-name'>Apache Maven - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='68'>
								<div class='collapsible-header'>
									<div class='node-name'>Apache Maven - .Test Path C:\dachdev\tools\maven\bin\mvn.cmd</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='69'>
					<div class='test-heading'>
						<span class='test-name'>Apache Tomcat 7.0 - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='70'>
								<div class='collapsible-header'>
									<div class='node-name'>Apache Tomcat 7.0 - .Test Path C:\dachdev\tools\tomcat\7.0\bin\startup.sh</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='71'>
					<div class='test-heading'>
						<span class='test-name'>Apache Tomcat 8.0 - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='72'>
								<div class='collapsible-header'>
									<div class='node-name'>Apache Tomcat 8.0 - .Test Path C:\dachdev\tools\tomcat\8.0\bin\startup.sh</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='73'>
					<div class='test-heading'>
						<span class='test-name'>Apache Tomcat 8.5 - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='74'>
								<div class='collapsible-header'>
									<div class='node-name'>Apache Tomcat 8.5 - .Test Path C:\dachdev\tools\tomcat\8.5\bin\startup.sh</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='75'>
					<div class='test-heading'>
						<span class='test-name'>Apache Tomcat 9.0 - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='76'>
								<div class='collapsible-header'>
									<div class='node-name'>Apache Tomcat 9.0 - .Test Path C:\dachdev\tools\tomcat\9.0\bin\startup.sh</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='77'>
					<div class='test-heading'>
						<span class='test-name'>JMeter - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='78'>
								<div class='collapsible-header'>
									<div class='node-name'>JMeter - .Test Path C:\dachdev\tools\jmeter\5.0\bin\ApacheJMeter.jar</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='79'>
					<div class='test-heading'>
						<span class='test-name'>Jave Decompiler - 1.4.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='80'>
								<div class='collapsible-header'>
									<div class='node-name'>Jave Decompiler - 1.4.0.Test Path C:\dachdev\tools\jd\jd-gui.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='81'>
					<div class='test-heading'>
						<span class='test-name'>KDiff3 - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='82'>
								<div class='collapsible-header'>
									<div class='node-name'>KDiff3 - .Test Path C:\Program Files\KDiff3\kdiff3.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='83'>
					<div class='test-heading'>
						<span class='test-name'>Git - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='84'>
								<div class='collapsible-header'>
									<div class='node-name'>Git - .Test Path C:\Program Files\Git\bin\git.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='85'>
					<div class='test-heading'>
						<span class='test-name'>Git Extension - 3.00.00.4433</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='86'>
								<div class='collapsible-header'>
									<div class='node-name'>Git Extension - 3.00.00.4433.Test Path C:\Program Files (x86)\GitExtensions\GitExtensions.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='87'>
					<div class='test-heading'>
						<span class='test-name'>Pencil - 3.0.4.14</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='88'>
								<div class='collapsible-header'>
									<div class='node-name'>Pencil - 3.0.4.14.Test Path C:\Program Files\Pencil\Pencil.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='89'>
					<div class='test-heading'>
						<span class='test-name'>SOAPUI - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='90'>
								<div class='collapsible-header'>
									<div class='node-name'>SOAPUI - .Test Path C:\Program Files (x86)\SmartBear\SoapUI-5.4.0\bin\SoapUI-5.4.0.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='91'>
					<div class='test-heading'>
						<span class='test-name'>Java JDK 1.7.80 - 7.0.800.15</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='92'>
								<div class='collapsible-header'>
									<div class='node-name'>Java JDK 1.7.80 - 7.0.800.15.Test Path C:\dachdev\tools\java\jdk_1.7_80\bin\javaw.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='93'>
					<div class='test-heading'>
						<span class='test-name'>Java JDK 1.7.80 x64 - 7.0.800.15</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='94'>
								<div class='collapsible-header'>
									<div class='node-name'>Java JDK 1.7.80 x64 - 7.0.800.15.Test Path C:\dachdev\tools\java\jdk_1.7_80_x64\bin\javaw.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='95'>
					<div class='test-heading'>
						<span class='test-name'>Java JDK 1.8.191 - 8.0.1910.12</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='96'>
								<div class='collapsible-header'>
									<div class='node-name'>Java JDK 1.8.191 - 8.0.1910.12.Test Path C:\dachdev\tools\java\jdk_1.8_191\bin\javaw.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='97'>
					<div class='test-heading'>
						<span class='test-name'>Java JDK 1.8.191 x64 - 8.0.1910.12</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='98'>
								<div class='collapsible-header'>
									<div class='node-name'>Java JDK 1.8.191 x64 - 8.0.1910.12.Test Path C:\dachdev\tools\java\jdk_1.8_191_x64\bin\javaw.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='99'>
					<div class='test-heading'>
						<span class='test-name'>Application Configuration files</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='100'>
								<div class='collapsible-header'>
									<div class='node-name'>Application Configuration files.Test C:\windows\temp\SoftwareTest\1907\ConfigFiles\VD\Security.txt</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='101'>
					<div class='test-heading'>
						<span class='test-name'>Symantec Endpoitn Protection - 14.2.3332.1000</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='102'>
								<div class='collapsible-header'>
									<div class='node-name'>Symantec Endpoitn Protection - 14.2.3332.1000.Test Path C:\Program Files (x86)\Symantec\Symantec Endpoint Protection\Smc.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='103'>
					<div class='test-heading'>
						<span class='test-name'>Application Configuration files</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='104'>
								<div class='collapsible-header'>
									<div class='node-name'>Application Configuration files.Test C:\windows\temp\SoftwareTest\1907\ConfigFiles\VD\Patch.txt</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='105'>
					<div class='test-heading'>
						<span class='test-name'>DSM PatchManagement - 9.2.20763.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='106'>
								<div class='collapsible-header'>
									<div class='node-name'>DSM PatchManagement - 9.2.20763.0.Test Path C:\Program Files (x86)\DSM Patch Management\CL5.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='107'>
					<div class='test-heading'>
						<span class='test-name'>Application Configuration files</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='108'>
								<div class='collapsible-header'>
									<div class='node-name'>Application Configuration files.Test C:\windows\temp\SoftwareTest\1907\ConfigFiles\VD\Final.txt</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='109'>
					<div class='test-heading'>
						<span class='test-name'>SnowAgent - 5.3.0+build-BUILD_DATE-rev-BUILD_REVISION</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='110'>
								<div class='collapsible-header'>
									<div class='node-name'>SnowAgent - 5.3.0+build-BUILD_DATE-rev-BUILD_REVISION.Test Path C:\Program Files\Snow Software\Inventory\Agent\snowagent.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='111'>
					<div class='test-heading'>
						<span class='test-name'>Application Configuration files</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='112'>
								<div class='collapsible-header'>
									<div class='node-name'>Application Configuration files.Test C:\windows\temp\SoftwareTest\1907\ConfigFiles\VD\DEV.txt</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='113'>
					<div class='test-heading'>
						<span class='test-name'>Nutanix POSH Cmdlets - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='114'>
								<div class='collapsible-header'>
									<div class='node-name'>Nutanix POSH Cmdlets - .Test Path C:\Program Files (x86)\Nutanix Inc\NutanixCmdlets\bin\Run.bat</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='115'>
					<div class='test-heading'>
						<span class='test-name'>eG VM Agent - 6.0.0.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='116'>
								<div class='collapsible-header'>
									<div class='node-name'>eG VM Agent - 6.0.0.0.Test Path C:\eGVmAgent\bin\AppLaunch.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='117'>
					<div class='test-heading'>
						<span class='test-name'>Citrix Optimizer - 2.1.0.21</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='118'>
								<div class='collapsible-header'>
									<div class='node-name'>Citrix Optimizer - 2.1.0.21.Test Path C:\Program Files (x86)\CitrixOptimizer\CitrixOptimizer.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='119'>
					<div class='test-heading'>
						<span class='test-name'>Citrix UPM LogParser - 1.5.0.0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='120'>
								<div class='collapsible-header'>
									<div class='node-name'>Citrix UPM LogParser - 1.5.0.0.Test Path C:\Windows\System32\DACHTools\CitrixUPMLogParser.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='121'>
					<div class='test-heading'>
						<span class='test-name'>Hcmd - 1, 1, 0, 0</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='122'>
								<div class='collapsible-header'>
									<div class='node-name'>Hcmd - 1, 1, 0, 0.Test Path C:\Windows\System32\DACHTools\hcmd.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='123'>
					<div class='test-heading'>
						<span class='test-name'>UPMConfigCheck - </span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='124'>
								<div class='collapsible-header'>
									<div class='node-name'>UPMConfigCheck - .Test Path C:\Windows\System32\DACHTools\UpmConfigCheck.ps1</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='125'>
					<div class='test-heading'>
						<span class='test-name'>Citrix VDA - 7.22.0.11</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='126'>
								<div class='collapsible-header'>
									<div class='node-name'>Citrix VDA - 7.22.0.11.Test Path C:\Program Files\Citrix\Virtual Desktop Agent\BrokerAgent.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
				<li class='test displayed active has-leaf pass' status='pass' test-id='127'>
					<div class='test-heading'>
						<span class='test-name'>Citrix BGInfo - 4.25</span>
						<span class='test-time'>7/29/2019 2:12:37 PM</span>
						<span class='test-status right pass'>Pass</span>
					</div>
					<div class='test-content hide'>
						<div class='test-time-info'>
							<span class='label start-time'>7/29/2019 2:12:37 PM</span>
							<span class='label end-time'>7/29/2019 2:12:37 PM</span>
							<span class='label time-taken grey lighten-1 white-text'>0h:0m:0s.000ms</span>
						</div>
						<ul class='collapsible node-list' data-collapsible='accordion'>

							<li class='node level-1 leaf pass' status='pass' test-id='128'>
								<div class='collapsible-header'>
									<div class='node-name'>Citrix BGInfo - 4.25.Test Path C:\BGINFO\Bginfo.exe</div>
									<span class='node-time'>7/29/2019 2:12:37 PM</span>
									&middot; <span class='node-duration'>0h:0m:0s.000ms</span>
									<span class='test-status right pass'>Pass</span>
								</div>
								<div class='collapsible-body'>
																		<div class='node-steps'>
										<table class='bordered table-results'>
											<thead>
												<tr>
													<th>Status</th>
													<th>Timestamp</th>
													<th>Details</th>
												</tr>
											</thead>
											<tbody>
												<tr class='log' status='pass'>
													<td class='status pass' title='Pass' alt='Pass'>
														<i class='material-icons'>check_circle</i>
													</td>
													<td class='timestamp'>14:12:37</td>
													<td class='step-details'>
Pass																											</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
																							</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!-- subview left -->
	<div class='subview-right left'>
		<div class='view-summary'>
			<div id='step-filters' class="right sr-filters">
				<a class="btn-floating waves-effect waves-light green" status="pass" alt="pass" title="pass"><i class="material-icons">check_circle</i></a>
				<a class="btn-floating waves-effect waves-light red" status="fail" alt="fail" title="fail"><i class="material-icons">cancel</i></a>
				<a class="btn-floating waves-effect waves-light red darken-4" status="fatal" alt="fatal" title="fatal"><i class="material-icons">cancel</i></a>
				<a class="btn-floating waves-effect waves-light pink text-lighten-1" status="error" alt="error" title="error"><i class="material-icons">error</i></a>
				<a class="btn-floating waves-effect waves-light orange" alt="warning" status="warning" title="warning"><i class="material-icons">warning</i></a>
				<a class="btn-floating waves-effect waves-light teal" status="skip" alt="skip" title="skip"><i class="material-icons">redo</i></a>
				<a class="btn-floating waves-effect waves-light grey" status="clear" alt="Clear filters" title="Clear filters"><i class="material-icons">clear</i></a>
			</div>
			<h5 class='test-name'></h5>
		</div>
	</div>
	<!-- subview right -->
</div>
<!-- test view -->


			<!-- category view -->

<!-- exception view -->



<div id='dashboard-view' class='view hide'>
	<div class='card-panel transparent np-v'>
		<h5>Dashboard</h5>

		<div class='row'>
			<div class='col s2'>
				<div class='card-panel r'>
          Tests
          <div class='panel-lead'>64</div>
				</div>
			</div>
			<div class='col s2'>
				<div class='card-panel r'>
          Steps
          <div class='panel-lead'>64</div>
				</div>
			</div>
			<div class='col s2'>
				<div class='card-panel r'>
					Start
					<div class='panel-lead'>7/29/2019 2:12:34 PM</div>
				</div>
			</div>
			<div class='col s2'>
				<div class='card-panel r'>
			 		End
			 		<div class='panel-lead'>7/29/2019 2:12:37 PM</div>
				</div>
			</div>
			<div class='col s2'>
				<div class='card-panel r'>
					Time Taken
					<div class='panel-lead'>00:00:02.8124993</div>
				</div>
			</div>
			<div class='col s4'>
				<div class='card-panel dashboard-environment'>
					<span class='right label cyan white-text'>Environment</span><p>&nbsp;</p>
					<table>
						<tr>
							<th>Name</th>
							<th>Value</th>
						</tr>
							<tr>
								<td>NUnit Version</td>
								<td>2.5.8.0</td>
							</tr>
							<tr>
								<td>OS Version</td>
								<td>10.0.17763</td>
							</tr>
							<tr>
								<td>Platform</td>
								<td>Microsoft Windows 10 Enterprise|C:\Windows|\Device\Harddisk0\Partition2</td>
							</tr>
							<tr>
								<td>CLR Version</td>
								<td>4.0.30319.42000</td>
							</tr>
							<tr>
								<td>Machine Name</td>
								<td>VWin10-1809-Master01</td>
							</tr>
							<tr>
								<td>User</td>
								<td>eucweb-admin</td>
							</tr>
							<tr>
								<td>User Domain</td>
								<td>euclab</td>
							</tr>
							<tr>
								<td>NUnit Version</td>
								<td>2.5.8.0</td>
							</tr>
							<tr>
								<td>OS Version</td>
								<td>10.0.17763</td>
							</tr>
							<tr>
								<td>Platform</td>
								<td>Microsoft Windows 10 Enterprise|C:\Windows|\Device\Harddisk0\Partition2</td>
							</tr>
							<tr>
								<td>CLR Version</td>
								<td>4.0.30319.42000</td>
							</tr>
							<tr>
								<td>Machine Name</td>
								<td>VWin10-1809-Master01</td>
							</tr>
							<tr>
								<td>User</td>
								<td>eucweb-admin</td>
							</tr>
							<tr>
								<td>User Domain</td>
								<td>euclab</td>
							</tr>
							<tr>
								<td>NUnit Version</td>
								<td>2.5.8.0</td>
							</tr>
							<tr>
								<td>OS Version</td>
								<td>10.0.17763</td>
							</tr>
							<tr>
								<td>Platform</td>
								<td>Microsoft Windows 10 Enterprise|C:\Windows|\Device\Harddisk0\Partition2</td>
							</tr>
							<tr>
								<td>CLR Version</td>
								<td>4.0.30319.42000</td>
							</tr>
							<tr>
								<td>Machine Name</td>
								<td>VWin10-1809-Master01</td>
							</tr>
							<tr>
								<td>User</td>
								<td>eucweb-admin</td>
							</tr>
							<tr>
								<td>User Domain</td>
								<td>euclab</td>
							</tr>
							<tr>
								<td>NUnit Version</td>
								<td>2.5.8.0</td>
							</tr>
							<tr>
								<td>OS Version</td>
								<td>10.0.17763</td>
							</tr>
							<tr>
								<td>Platform</td>
								<td>Microsoft Windows 10 Enterprise|C:\Windows|\Device\Harddisk0\Partition2</td>
							</tr>
							<tr>
								<td>CLR Version</td>
								<td>4.0.30319.42000</td>
							</tr>
							<tr>
								<td>Machine Name</td>
								<td>VWin10-1809-Master01</td>
							</tr>
							<tr>
								<td>User</td>
								<td>eucweb-admin</td>
							</tr>
							<tr>
								<td>User Domain</td>
								<td>euclab</td>
							</tr>
							<tr>
								<td>NUnit Version</td>
								<td>2.5.8.0</td>
							</tr>
							<tr>
								<td>OS Version</td>
								<td>10.0.17763</td>
							</tr>
							<tr>
								<td>Platform</td>
								<td>Microsoft Windows 10 Enterprise|C:\Windows|\Device\Harddisk0\Partition2</td>
							</tr>
							<tr>
								<td>CLR Version</td>
								<td>4.0.30319.42000</td>
							</tr>
							<tr>
								<td>Machine Name</td>
								<td>VWin10-1809-Master01</td>
							</tr>
							<tr>
								<td>User</td>
								<td>eucweb-admin</td>
							</tr>
							<tr>
								<td>User Domain</td>
								<td>euclab</td>
							</tr>
							<tr>
								<td>NUnit Version</td>
								<td>2.5.8.0</td>
							</tr>
							<tr>
								<td>OS Version</td>
								<td>10.0.17763</td>
							</tr>
							<tr>
								<td>Platform</td>
								<td>Microsoft Windows 10 Enterprise|C:\Windows|\Device\Harddisk0\Partition2</td>
							</tr>
							<tr>
								<td>CLR Version</td>
								<td>4.0.30319.42000</td>
							</tr>
							<tr>
								<td>Machine Name</td>
								<td>VWin10-1809-Master01</td>
							</tr>
							<tr>
								<td>User</td>
								<td>eucweb-admin</td>
							</tr>
							<tr>
								<td>User Domain</td>
								<td>euclab</td>
							</tr>
							<tr>
								<td>NUnit Version</td>
								<td>2.5.8.0</td>
							</tr>
							<tr>
								<td>OS Version</td>
								<td>10.0.17763</td>
							</tr>
							<tr>
								<td>Platform</td>
								<td>Microsoft Windows 10 Enterprise|C:\Windows|\Device\Harddisk0\Partition2</td>
							</tr>
							<tr>
								<td>CLR Version</td>
								<td>4.0.30319.42000</td>
							</tr>
							<tr>
								<td>Machine Name</td>
								<td>VWin10-1809-Master01</td>
							</tr>
							<tr>
								<td>User</td>
								<td>eucweb-admin</td>
							</tr>
							<tr>
								<td>User Domain</td>
								<td>euclab</td>
							</tr>
							<tr>
								<td>NUnit Version</td>
								<td>2.5.8.0</td>
							</tr>
							<tr>
								<td>OS Version</td>
								<td>10.0.17763</td>
							</tr>
							<tr>
								<td>Platform</td>
								<td>Microsoft Windows 10 Enterprise|C:\Windows|\Device\Harddisk0\Partition2</td>
							</tr>
							<tr>
								<td>CLR Version</td>
								<td>4.0.30319.42000</td>
							</tr>
							<tr>
								<td>Machine Name</td>
								<td>VWin10-1809-Master01</td>
							</tr>
							<tr>
								<td>User</td>
								<td>eucweb-admin</td>
							</tr>
							<tr>
								<td>User Domain</td>
								<td>euclab</td>
							</tr>
							<tr>
								<td>NUnit Version</td>
								<td>2.5.8.0</td>
							</tr>
							<tr>
								<td>OS Version</td>
								<td>10.0.17763</td>
							</tr>
							<tr>
								<td>Platform</td>
								<td>Microsoft Windows 10 Enterprise|C:\Windows|\Device\Harddisk0\Partition2</td>
							</tr>
							<tr>
								<td>CLR Version</td>
								<td>4.0.30319.42000</td>
							</tr>
							<tr>
								<td>Machine Name</td>
								<td>VWin10-1809-Master01</td>
							</tr>
							<tr>
								<td>User</td>
								<td>eucweb-admin</td>
							</tr>
							<tr>
								<td>User Domain</td>
								<td>euclab</td>
							</tr>
					</table>
				</div>
			</div>
					</div>
	</div>
</div>
<!-- dashboard view -->

			<!-- testrunner-logs view -->
		</div>
		<!-- container -->
		<script>
			var statusGroup = {
                parentCount: 64,
				passParent: 62,
				failParent: 2,
				fatalParent: 0,
				errorParent: 0,
				warningParent: 0,
				skipParent: 0,
				exceptionsParent: 2,
				childCount: 64,
				passChild: 62,
				failChild: 2,
				fatalChild: 0,
				errorChild: 0,
				warningChild: 0,
				skipChild: 0,
				infoChild: 0,
				debugChild: 0,
				exceptionsChild: 2,
				grandChildCount: 0,
				passGrandChild: 0,
				failGrandChild: 0,
				fatalGrandChild: 0,
				errorGrandChild: 0,
				warningGrandChild: 0,
				skipGrandChild: 0,
				infoGrandChild: 0,
				debugGrandChild: 0,
				exceptionsGrandChild: 0,
			};
		</script>
			<script>
				var timeline = { "Application Configuration files":0,"LAPS - 6.2.0.0":0,"Application Configuration files":0,"Silverlight - 5.1.50918.0":0,"Oracle Java - 8.0.1120.15":0,"Application Configuration files":0,"PrinterLogic PrinterInstaller - 18.2.1.195":0,"Dachser PKS Launcher - 4.1.4.1":0,"IBM ACS Launcher - 5.3.4.0":0,"VNC Viewer - 1.2.1.6":0,"PKS WINClient - 7.0.9.0":0,"7-Zip - 19.00":0,"Google Chrome - 75.0.3770.142":0,"IBM iAccess Client - ":0,"Fastviewer - 3.20.0034":0,"Application Configuration files":0,"FOD-Installer - ":0,"Switch User Language - 2.6.1.0":0,"SAP Secure Login - 3.0.2003.0":0,"Cisco Jabber - ":0,"Sennheiser Softphone SDK - ":0,"Application Configuration files":0,"FOD-Installer - ":0,"Switch User Language - 2.6.1.0":0,"Putty - Release 0.65":0,"IBM Client Access - 13.0.15.0":0,"Hardcopy - 2017.11.29":0,"Keypass - 2.42.1.0":0,"Notepad++ - 7.71":0,"Word - 16.0.4873.1000":0,"Excel - 16.0.4873.1000":0,"PowerPoint - 16.0.4266.1001":0,"Eclipe - ":0,"Apache Maven - ":0,"Apache Tomcat 7.0 - ":0,"Apache Tomcat 8.0 - ":0,"Apache Tomcat 8.5 - ":0,"Apache Tomcat 9.0 - ":0,"JMeter - ":0,"Jave Decompiler - 1.4.0":0,"KDiff3 - ":0,"Git - ":0,"Git Extension - 3.00.00.4433":0,"Pencil - 3.0.4.14":0,"SOAPUI - ":0,"Java JDK 1.7.80 - 7.0.800.15":0,"Java JDK 1.7.80 x64 - 7.0.800.15":0,"Java JDK 1.8.191 - 8.0.1910.12":0,"Java JDK 1.8.191 x64 - 8.0.1910.12":0,"Application Configuration files":0,"Symantec Endpoitn Protection - 14.2.3332.1000":0,"Application Configuration files":0,"DSM PatchManagement - 9.2.20763.0":0,"Application Configuration files":0,"SnowAgent - 5.3.0+build-BUILD_DATE-rev-BUILD_REVISION":0,"Application Configuration files":0,"Nutanix POSH Cmdlets - ":0,"eG VM Agent - 6.0.0.0":0,"Citrix Optimizer - 2.1.0.21":0,"Citrix UPM LogParser - 1.5.0.0":0,"Hcmd - 1, 1, 0, 0":0,"UPMConfigCheck - ":0,"Citrix VDA - 7.22.0.11":0,"Citrix BGInfo - 4.25":0 };
			</script>
		<script src='https://cdn.rawgit.com/extent-framework/extent-github-cdn/c23457b/v3html/js/extent.js' type='text/javascript'></script>
		<script type='text/javascript'>

		</script>
	</body>
</html>