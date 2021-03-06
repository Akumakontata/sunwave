<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
	<title>mxGraph Workflow Example</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style type="text/css" media="screen">
		div.base {
			position: absolute;
			overflow: hidden;
			white-space: nowrap;
			font-family: Arial;
			font-size: 8pt;
		}
		div.base#graph {
			border-style: solid;
			border-color: #F2F2F2;
			border-width: 1px;
			background: url('mxeditors/images/grid.gif');
		}
	</style>
	<script type="text/javascript">
		mxBasePath = 'mxgraph';//å®ä¹mxgraphæ ¹ç®å½
	</script>
	<script type="text/javascript" src="mxeditors/mxgraph/js/mxClient.js"></script>
	<script type="text/javascript" src="mxeditors/js/mxApplication.js"></script>
	<script type="text/javascript">
		mxConstants.DEFAULT_HOTSPOT = 1;
		
		// Enables guides
		mxGraphHandler.prototype.guidesEnabled = true;
		
	    // Alt disables guides
	    mxGuide.prototype.isEnabledForEvent = function(evt)
	    {
	    	return !mxEvent.isAltDown(evt);
	    };
		
		// Enables snapping waypoints to terminals
		mxEdgeHandler.prototype.snapToTerminals = true;
		
		window.onbeforeunload = function() { return mxResources.get('changesLost'); };
	</script>
</head>
<body onload="new mxApplication('mxeditors/config/workfloweditor.xml');">
	<table id="splash" width="100%" height="100%"
		style="background:white;position:absolute;top:0px;left:0px;z-index:4;">
		<tr>
			<td align="center" valign="middle">
				<img src="mxeditors/images/loading.gif">
			</td>
		</tr>
	</table>
	<div id="graph" class="base">
		<!-- Graph Here -->
	</div>
	<div id="status" class="base" align="right">
		<!-- Status Here -->
	</div>
</body>
</html>
