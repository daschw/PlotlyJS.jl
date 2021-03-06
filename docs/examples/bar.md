```julia
function bar1()
    data = bar(;x=["giraffes", "orangutans", "monkeys"],
               	y=[20, 14, 23])
    plot(data)
end
bar1()
```


<div id="8b385ec1-896c-4861-9a20-d66efeb99626" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('8b385ec1-896c-4861-9a20-d66efeb99626', [{"y":[20,14,23],"type":"bar","x":["giraffes","orangutans","monkeys"]}],
               {"margin":{"l":50,"b":60,"r":50,"t":60}}, {showLink: false});

 </script>



```julia
function bar2()
    trace1 = bar(;x=["giraffes", "orangutans", "monkeys"],
                  y=[20, 14, 23],
                  name="SF Zoo")
    trace2 = bar(;x=["giraffes", "orangutans", "monkeys"],
                  y=[12, 18, 29],
                  name="LA Zoo")
    data = [trace1, trace2]
    layout = Layout(;barmode="group")
    plot(data, layout)
end
bar2()
```


<div id="2e0896a6-b9a0-411f-98b3-17f1a80ebf78" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('2e0896a6-b9a0-411f-98b3-17f1a80ebf78', [{"y":[20,14,23],"type":"bar","name":"SF Zoo","x":["giraffes","orangutans","monkeys"]},{"y":[12,18,29],"type":"bar","name":"LA Zoo","x":["giraffes","orangutans","monkeys"]}],
               {"barmode":"group","margin":{"l":50,"b":60,"r":50,"t":60}}, {showLink: false});

 </script>



```julia
function bar3()
    trace1 = bar(;x=["giraffes", "orangutans", "monkeys"],
                  y=[20, 14, 23],
                  name="SF Zoo")
    trace2 = bar(x=["giraffes", "orangutans", "monkeys"],
                 y=[12, 18, 29],
                 name="LA Zoo")
    data = [trace1, trace2]
    layout = Layout(;barmode="stack")
    plot(data, layout)
end
bar3()
```


<div id="3521f7eb-7351-4a26-a655-93ba11d3a191" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('3521f7eb-7351-4a26-a655-93ba11d3a191', [{"y":[20,14,23],"type":"bar","name":"SF Zoo","x":["giraffes","orangutans","monkeys"]},{"y":[12,18,29],"type":"bar","name":"LA Zoo","x":["giraffes","orangutans","monkeys"]}],
               {"barmode":"stack","margin":{"l":50,"b":60,"r":50,"t":60}}, {showLink: false});

 </script>



```julia
function bar4()
    data = bar(;x=["Product A", "Product B", "Product C"],
                y=[20, 14, 23],
                text=["$(i)% market share" for i in rand(15:30, 3)],
                marker=attr(color="rgb(158, 202, 225)", opacity=0.6),
                line=attr(color="rgb(8, 48, 107)", width=1.5))

    layout = Layout(;title="January 2013 Sales Report")

    plot(data, layout)
end
bar4()
```


<div id="4d70edd6-f4cb-4a91-97bd-d3e42a6d847e" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('4d70edd6-f4cb-4a91-97bd-d3e42a6d847e', [{"marker":{"color":"rgb(158, 202, 225)","opacity":0.6},"line":{"color":"rgb(8, 48, 107)","width":1.5},"y":[20,14,23],"type":"bar","text":["23% market share","19% market share","15% market share"],"x":["Product A","Product B","Product C"]}],
               {"margin":{"l":50,"b":60,"r":50,"t":60},"title":"January 2013 Sales Report"}, {showLink: false});

 </script>



```julia
function bar5()
    x_value = ["Product A", "Product B", "Product C"]
    y_value = [20, 14, 23]

    data = bar(;x=x_value,
                y=y_value,
                text=["$(i)% market share" for i in rand(15:30, 3)],
		        marker=attr(color="rgb(158, 202, 225)", opacity=0.6,
                            line=attr(color="rgb(8, 48, 107)", width=1.5)))

    annotations = []

    for i in 1:length(x_value)
        result = attr(x=x_value[i],
                      y=y_value[i],
                      text=y_value[i],
                      xanchor="center",
                      yanchor="bottom",
                      showarrow=false)
        push!(annotations, result)
    end

    layout = Layout(;title="January 2013 Sales Report",
                    annotations=annotations)
    plot(data, layout)
end
bar5()
```


<div id="53f21f11-3209-412a-bedf-85e2609547fa" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('53f21f11-3209-412a-bedf-85e2609547fa', [{"marker":{"color":"rgb(158, 202, 225)","line":{"color":"rgb(8, 48, 107)","width":1.5},"opacity":0.6},"y":[20,14,23],"type":"bar","text":["27% market share","28% market share","16% market share"],"x":["Product A","Product B","Product C"]}],
               {"annotations":[{"yanchor":"bottom","xanchor":"center","y":20,"showarrow":false,"text":20,"x":"Product A"},{"yanchor":"bottom","xanchor":"center","y":14,"showarrow":false,"text":14,"x":"Product B"},{"yanchor":"bottom","xanchor":"center","y":23,"showarrow":false,"text":23,"x":"Product C"}],"margin":{"l":50,"b":60,"r":50,"t":60},"title":"January 2013 Sales Report"}, {showLink: false});

 </script>



```julia
function bar6()
    trace1 = bar(;x=["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
                     "Sep", "Oct", "Nov", "Dec"],
                  y=[20, 14, 25, 16, 18, 22, 19, 15, 12, 16, 14, 17],
                  name="Primary Product",
                  marker_color="rgb(49, 130, 189)",
                  opacity=0.7)
    trace2 = bar(;x=["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug",
                     "Sep", "Oct", "Nov", "Dec"],
                  y=[19, 14, 22, 14, 16, 19, 15, 14, 10, 12, 12, 16],
                  name="Secondary Product",
		  marker=attr(color="rgb(204, 204, 204)", opacity=0.5))
    data = [trace1, trace2]
    layout = Layout(;title="2013 Sales Report",
                     xaxis_tickangle=-45,
                     barmode="group")
    plot(data, layout)
end
bar6()
```


<div id="3250eae7-627f-4a71-b7bc-f2480ed60c05" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('3250eae7-627f-4a71-b7bc-f2480ed60c05', [{"marker":{"color":"rgb(49, 130, 189)"},"y":[20,14,25,16,18,22,19,15,12,16,14,17],"type":"bar","name":"Primary Product","opacity":0.7,"x":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]},{"marker":{"color":"rgb(204, 204, 204)","opacity":0.5},"y":[19,14,22,14,16,19,15,14,10,12,12,16],"type":"bar","name":"Secondary Product","x":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]}],
               {"xaxis":{"tickangle":-45},"barmode":"group","margin":{"l":50,"b":60,"r":50,"t":60},"title":"2013 Sales Report"}, {showLink: false});

 </script>



```julia
function bar7()
    data = bar(;x=["Feature $(s)" for s in 'A':'E'],
                y=[20, 14, 23, 25, 22],
    		    marker_color=["rgba(204, 204, 204, 1)",
                              "rgba(222, 45, 38, 0.8)",
                              "rgba(204, 204, 204, 1)",
                              "rgba(204, 204, 204, 1)",
                              "rgba(204, 204, 204, 1)"])
    layout = Layout(;title="Least Used Feature")
    plot(data, layout)
end
bar7()
```


<div id="d197d367-3d27-4fb6-902f-4a40412bf719" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('d197d367-3d27-4fb6-902f-4a40412bf719', [{"marker":{"color":["rgba(204, 204, 204, 1)","rgba(222, 45, 38, 0.8)","rgba(204, 204, 204, 1)","rgba(204, 204, 204, 1)","rgba(204, 204, 204, 1)"]},"y":[20,14,23,25,22],"type":"bar","x":["Feature A","Feature B","Feature C","Feature D","Feature E"]}],
               {"margin":{"l":50,"b":60,"r":50,"t":60},"title":"Least Used Feature"}, {showLink: false});

 </script>



```julia
function bar8()
    data = bar(;x=["Liam", "Sophie", "Jacob", "Mia", "William", "Olivia"],
                y=[8.0, 8.0, 12.0, 12.0, 13.0, 20.0],
                text=["4.17 below the mean", "4.17 below the mean",
                      "0.17 below the mean", "0.17 below the mean",
                      "0.83 above the mean", "7.83 above the mean"],
                marker_color="rgb(142, 124, 195)")
    layout = Layout(;title="Number of Graphs Made this Week",
                     font_family="Raleway, sans-serif",
                     showlegend=false,
                     xaxis_tickangle=-45,
                     yaxis=attr(zeroline=false, gridwidth=2),
                     bargap=0.05)
    plot(data, layout)
end
bar8()
```


<div id="d5a53e0d-ca14-4ce8-8fb6-d21bb8b1cb52" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('d5a53e0d-ca14-4ce8-8fb6-d21bb8b1cb52', [{"marker":{"color":"rgb(142, 124, 195)"},"y":[8.0,8.0,12.0,12.0,13.0,20.0],"type":"bar","text":["4.17 below the mean","4.17 below the mean","0.17 below the mean","0.17 below the mean","0.83 above the mean","7.83 above the mean"],"x":["Liam","Sophie","Jacob","Mia","William","Olivia"]}],
               {"showlegend":false,"xaxis":{"tickangle":-45},"font":{"family":"Raleway, sans-serif"},"bargap":0.05,"margin":{"l":50,"b":60,"r":50,"t":60},"title":"Number of Graphs Made this Week","yaxis":{"zeroline":false,"gridwidth":2}}, {showLink: false});

 </script>



```julia
function bar9()
    trace1 = bar(;x=1995:2012,
                  y=[219, 146, 112, 127, 124, 180, 236, 207, 236, 263, 350,
                     430, 474, 526, 488, 537, 500, 439],
                  name="Rest of world",
                  marker_color="rgb(55, 83, 109)")
    trace2 = bar(;x=1995:2012,
                  y=[16, 13, 10, 11, 28, 37, 43, 55, 56, 88, 105, 156, 270,
                     299, 340, 403, 549, 499],
                  name="China",
                  marker_color="rgb(26, 118, 255)")

    data = [trace1, trace2]

    layout = Layout(;title="US Export of Plastic Scrap",
		             xaxis=attr(tickfont_size= 14,
                                tickfont_color="rgb(107, 107, 107)"),
		             yaxis=attr(title="USD (millions)",
                                titlefont=attr(size=16,
                                               color="rgb(107, 107, 107)"),
                                tickfont=attr(size=14,
                                              color="rgb(107, 107, 107)")),
                     legend=attr(x=0, y=1.0, bgcolor="rgba(255, 255, 255, 0)",
                                 bordercolor="rgba(255, 255, 255, 0)"),
                     barmode="group",
                     bargap=0.15,
                     bargroupgap=0.1)
    plot(data, layout)
end
bar9()
```


<div id="d69214c5-af7a-471f-a858-48a1006e9b06" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('d69214c5-af7a-471f-a858-48a1006e9b06', [{"marker":{"color":"rgb(55, 83, 109)"},"y":[219,146,112,127,124,180,236,207,236,263,350,430,474,526,488,537,500,439],"type":"bar","name":"Rest of world","x":[1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012]},{"marker":{"color":"rgb(26, 118, 255)"},"y":[16,13,10,11,28,37,43,55,56,88,105,156,270,299,340,403,549,499],"type":"bar","name":"China","x":[1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012]}],
               {"xaxis":{"tickfont":{"color":"rgb(107, 107, 107)","size":14}},"bargap":0.15,"legend":{"bordercolor":"rgba(255, 255, 255, 0)","y":1.0,"bgcolor":"rgba(255, 255, 255, 0)","x":0},"barmode":"group","margin":{"l":50,"b":60,"r":50,"t":60},"title":"US Export of Plastic Scrap","yaxis":{"titlefont":{"color":"rgb(107, 107, 107)","size":16},"tickfont":{"color":"rgb(107, 107, 107)","size":14},"title":"USD (millions)"},"bargroupgap":0.1}, {showLink: false});

 </script>



```julia
function bar10()
    x_data = ["Product Revenue", "Services Revenue", "Total Revenue",
              "Fixed Costs", "Variable Costs", "Total Costs", "Total"]
    y_data = [400, 660, 660, 590, 400, 400, 340]
    textList = ["\$430K", "\$260K", "\$690K", "\$-120K", "\$-200K", "\$-320K",
                "\$370K"]

    #Base
    trace1 = bar(;x=x_data,
                  y=[0, 430, 0, 570, 370, 370, 0],
                  marker_color="rgba(1, 1, 1, 0.0)")

    #Revenue
    trace2 = bar(;x=x_data,
                  y=[430, 260, 690, 0, 0, 0, 0],
                  marker_color="rgba(55, 128, 191, 0.7)",
		  line=attr(color="rgba(55, 128, 191, 1.0)", width=2))

    #Cost
    trace3 = bar(;x=x_data,
                  y=[0, 0, 0, 120, 200, 320, 0],
		  marker=attr(color="rgba(219, 64, 82, 0.7)",
		  line=attr(color="rgba(219, 64, 82, 1.0)", width=2)))

    #Profit
    trace4 = bar(;x=x_data,
                  y=[0, 0, 0, 0, 0, 0, 370],
		  marker=attr(color="rgba(50, 171, 96, 0.7)",
		  line=attr(color="rgba(50, 171, 96, 1.0)", width=2)))

    data = [trace1, trace2, trace3, trace4]

    annotations = []
    for i in 1:7
        result = attr(x=x_data[i],
                      y=y_data[i],
		              text=textList[i],
		              font=attr(;family="Arial", font_size=14,
                                 font_color="rgba(245, 246, 249, 1)"),
                                 showarrow=false)
        push!(annotations, result)
    end

    layout = Layout(;title="Annual Profit 2015",
                     barmode="stack",
                     paper_bgcolor="rgba(245, 246, 249, 1)",
                     plot_bgcolor="rgba(245, 246, 249, 1)",
                     width=600,
                     height=600,
                     showlegend=false,
                     xaxis_showtickabels=true,
                     annotations=annotations)

    plot(data, layout)
end
bar10()
```


<div id="c3d5d646-8088-4a41-8297-c267c2a726cf" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('c3d5d646-8088-4a41-8297-c267c2a726cf', [{"marker":{"color":"rgba(1, 1, 1, 0.0)"},"y":[0,430,0,570,370,370,0],"type":"bar","x":["Product Revenue","Services Revenue","Total Revenue","Fixed Costs","Variable Costs","Total Costs","Total"]},{"marker":{"color":"rgba(55, 128, 191, 0.7)"},"line":{"color":"rgba(55, 128, 191, 1.0)","width":2},"y":[430,260,690,0,0,0,0],"type":"bar","x":["Product Revenue","Services Revenue","Total Revenue","Fixed Costs","Variable Costs","Total Costs","Total"]},{"marker":{"color":"rgba(219, 64, 82, 0.7)","line":{"color":"rgba(219, 64, 82, 1.0)","width":2}},"y":[0,0,0,120,200,320,0],"type":"bar","x":["Product Revenue","Services Revenue","Total Revenue","Fixed Costs","Variable Costs","Total Costs","Total"]},{"marker":{"color":"rgba(50, 171, 96, 0.7)","line":{"color":"rgba(50, 171, 96, 1.0)","width":2}},"y":[0,0,0,0,0,0,370],"type":"bar","x":["Product Revenue","Services Revenue","Total Revenue","Fixed Costs","Variable Costs","Total Costs","Total"]}],
               {"showlegend":false,"xaxis":{"showtickabels":true},"paper_bgcolor":"rgba(245, 246, 249, 1)","annotations":[{"y":400,"font":{"family":"Arial","font":{"color":"rgba(245, 246, 249, 1)","size":14}},"showarrow":false,"text":"$430K","x":"Product Revenue"},{"y":660,"font":{"family":"Arial","font":{"color":"rgba(245, 246, 249, 1)","size":14}},"showarrow":false,"text":"$260K","x":"Services Revenue"},{"y":660,"font":{"family":"Arial","font":{"color":"rgba(245, 246, 249, 1)","size":14}},"showarrow":false,"text":"$690K","x":"Total Revenue"},{"y":590,"font":{"family":"Arial","font":{"color":"rgba(245, 246, 249, 1)","size":14}},"showarrow":false,"text":"$-120K","x":"Fixed Costs"},{"y":400,"font":{"family":"Arial","font":{"color":"rgba(245, 246, 249, 1)","size":14}},"showarrow":false,"text":"$-200K","x":"Variable Costs"},{"y":400,"font":{"family":"Arial","font":{"color":"rgba(245, 246, 249, 1)","size":14}},"showarrow":false,"text":"$-320K","x":"Total Costs"},{"y":340,"font":{"family":"Arial","font":{"color":"rgba(245, 246, 249, 1)","size":14}},"showarrow":false,"text":"$370K","x":"Total"}],"height":600,"margin":{"l":50,"b":60,"r":50,"t":60},"title":"Annual Profit 2015","plot_bgcolor":"rgba(245, 246, 249, 1)","barmode":"stack","width":600}, {showLink: false});

 </script>



```julia
function bar11()
    trace1 = bar(;x=[1, 2, 3, 4],
                  y=[1, 4, 9, 16],
                  name="Trace1")
    trace2 = bar(;x=[1, 2, 3, 4],
                  y=[6, -8, -4.5, 8],
                  name="Trace2")
    trace3 = bar(;x=[1, 2, 3, 4],
                  y=[-15, -3, 4.5, -8],
                  name="Trace3")
    trace4 = bar(;x=[1, 2, 3, 4],
                  y=[-1, 3, -3, -4],
                  name="Trace4")
    data = [trace1, trace2, trace3, trace4]
    layout = Layout(;xaxis_title="X axis",
                     yaxis_title="Y axis",
                     barmode="relative",
                     title="Relative Barmode")
    plot(data, layout)
end
bar11()
```


<div id="4471d218-1630-407b-869f-37d0c7eeddf6" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('4471d218-1630-407b-869f-37d0c7eeddf6', [{"y":[1,4,9,16],"type":"bar","name":"Trace1","x":[1,2,3,4]},{"y":[6.0,-8.0,-4.5,8.0],"type":"bar","name":"Trace2","x":[1,2,3,4]},{"y":[-15.0,-3.0,4.5,-8.0],"type":"bar","name":"Trace3","x":[1,2,3,4]},{"y":[-1,3,-3,-4],"type":"bar","name":"Trace4","x":[1,2,3,4]}],
               {"xaxis":{"title":"X axis"},"barmode":"relative","margin":{"l":50,"b":60,"r":50,"t":60},"yaxis":{"title":"Y axis"},"title":"Relative Barmode"}, {showLink: false});

 </script>



