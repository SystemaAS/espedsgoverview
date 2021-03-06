<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include.jsp" %>

<!-- ======================= header ===========================-->
<jsp:include page="/WEB-INF/views/headerUoppdrag.jsp" />
<!-- =====================end header ==========================-->
	<%--
	<!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
    
      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});
      
      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table, 
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

	      // Create the data table.
	      var data = new google.visualization.arrayToDataTable(
	    		  [
	    	          ['Dager', 'UOppdrag'],
	    	          ['1',  1000 ],
	    	          ['2',  1170 ],
	    	          ['3',  660 ],
	    	          ['4',  1030]
			  ]		  
	      
	      );
	      
	      var options = {
	              title: 'Ufortollede Oppdrag',
	              hAxis: {title: 'Dager', titleTextStyle: {color: 'green'}}
	            };

	      <%-- data.addColumn('string', 'Topping');
	      data.addColumn('number', 'Slices');
	      data.addRows([
	        ['Måndag', 3],
	        ['Tisdag', 1],
	        ['Onsdag', 1],
	        ['Torsdag', 1],
	        ['Fredag', 2]
	      ]);
		  
	      // Set chart options
	      var options = {'title':'Test for Uoppdrag',
	                     'width':400,
	                     'height':300};
		  		
	      // Instantiate and draw our chart, passing in some options.
	      // var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
	      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
	
	      //events (could be a Hyperlink here ...)
	      function selectHandler() {
	          var selectedItem = chart.getSelection()[0];
	          if (selectedItem) {
	            var topping = data.getValue(selectedItem.row, 0);
	            alert('You have selected ' + topping);
	          }
	        }
	      google.visualization.events.addListener(chart, 'select', selectHandler);
	      
	      //draw the chart
	      chart.draw(data, options);
      
    	}
    </script>
 --%>


<table width="100%"  class="text14" cellspacing="0" border="0" cellpadding="0">
<tr>
	<td>
	<%-- tab container component --%>
	<table width="100%"  class="text14" cellspacing="0" border="0" cellpadding="0">
		<tr height="2"><td></td></tr>
		<tr height="25"> 
			<td width="20%" valign="bottom" class="tab" align="center">
				<font class="tabLink">&nbsp;Diagram</font>
				<img valign="bottom" src="resources/images/barChart.png" width="12" hight="12" border="0" alt="PKI certificate infrastructure">
				
			</td>
			<td width="80%" class="tabFantomSpace" align="center" nowrap><font class="tabDisabledLink">&nbsp;</font></td>	
			
		</tr>
		
		
	</table>
	</td>
</tr>
<tr>
	<td>
	<%-- tab component --%>
 		<table width="100%" class="tabThinBorderWhite" border="0" cellspacing="0" cellpadding="0">
 	        <tr height="40"><td></td></tr>
 	        <tr >
 	        		<td valign="top" >
 	        			<table align="center" border="0" >
 	        				<%--For google charts 
 	        				<tr>
 	        					<td >&nbsp;&nbsp;&nbsp;
 	        					<div id="chart_div" style="width:700px; height:400px"></div>
 	        					
 	        					</td>
 	        				</tr>
 	        				--%>
 	        			
 	        				<%--For chart4j --%>
 	        				<tr>
 	        					<td >&nbsp;&nbsp;&nbsp;
 	        						<img src="${pieUrl}" border="0" alt="Graph not loaded. Check logs..."> 
 	        					</td>
 	        				</tr>
 	        				<tr height="20"><td></td></tr>
						<tr>
 	        					<td >&nbsp;&nbsp;&nbsp;
 	        						<img src="${barUrl}" border="0" alt="Graph not loaded. Check logs..."> 
 	        					</td>
 	        				</tr>
 	        				<tr height="5"><td></td></tr>
 	        				 
						<%-- for JFreeChart 
 	        				<tr>
 	        					<td >&nbsp;&nbsp;&nbsp;
 	        						<img src="imgPieChart.do" border="0" alt="Graph not loaded. Check logs..."> 
 	        					</td>
 	        				</tr>
 	        				<tr height="20"><td></td></tr>
						--%>
						 
        				</table>        				
        			<td>		
				
 	        </tr>
 	        <tr height="40"><td></td></tr>
		</table>
	</td>
</tr>
</table>

<!-- ======================= footer ===========================-->
<jsp:include page="/WEB-INF/views/footer.jsp" />
<!-- =====================end footer ==========================-->

