var margin={top:30,bottom:30,left:30,right:30},width=450-margin.left-margin.right,height=450-margin.bottom-margin.top,svg=d3.select("#my_dataviz").append("svg").attr("height",height+margin.top+margin.bottom).attr("width",width+margin.left+margin.right).append("g").attr("transform","translate("+margin.left+","+margin.top+")");d3.json("/static/json/users.json",function(error,data){var x=d3.scaleBand().range([0,width]).domain(data.map(function(d){return d.name})).padding(0.2);svg.append("g").attr("transform","translate(0,"+height+")").call(d3.axisBottom(x)).selectAll("text").style("text-anchor","middle");var y=d3.scaleLinear().domain([0,200]).range([height,0]);svg.append("g").call(d3.axisLeft(y));svg.selectAll("mybar").data(data).enter().append("rect").attr("x",function(d){return x(d.name)}).attr("width",x.bandwidth()).attr("fill","#22b2a1").attr("height",function(d){return height-y(0)}).attr("y",function(d){return y(0)});svg.selectAll("rect").attr("y",function(d){return y(d.commits)}).attr("height",function(d){return height-y(d.commits)})})