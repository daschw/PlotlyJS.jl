```julia
function linescatter1()
    trace1 = scatter(;x=1:4, y=[10, 15, 13, 17], mode="markers")
    trace2 = scatter(;x=2:5, y=[16, 5, 11, 9], mode="lines")
    trace3 = scatter(;x=1:4, y=[12, 9, 15, 12], mode="lines+markers")
    plot([trace1, trace2, trace3])
end
linescatter1()
```


<div id="d0aca19e-8dc5-45d2-964e-4adf46cf753b" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('d0aca19e-8dc5-45d2-964e-4adf46cf753b', [{"mode":"markers","y":[10,15,13,17],"type":"scatter","x":[1,2,3,4]},{"mode":"lines","y":[16,5,11,9],"type":"scatter","x":[2,3,4,5]},{"mode":"lines+markers","y":[12,9,15,12],"type":"scatter","x":[1,2,3,4]}],
               {"margin":{"l":50,"b":60,"r":50,"t":60}}, {showLink: false});

 </script>



```julia
function linescatter2()
    trace1 = scatter(;x=1:5, y=[1, 6, 3, 6, 1],
                      mode="markers", name="Team A",
                      text=["A-1", "A-2", "A-3", "A-4", "A-5"],
                      marker_size=12)

    trace2 = scatter(;x=1:5+0.5, y=[4, 1, 7, 1, 4],
                      mode="markers", name= "Team B",
                      text=["B-a", "B-b", "B-c", "B-d", "B-e"])
    # setting marker.size this way is _equivalent_ to what we did for trace1
    trace2["marker"] = Dict(:size => 12)

    data = [trace1, trace2]
    layout = Layout(;title="Data Labels Hover", xaxis_range=[0.75, 5.25],
                     yaxis_range=[0, 8])
    plot(data, layout)
end
linescatter2()
```


<div id="a25763fe-5d31-4dd8-928f-8065c5d9ecb3" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('a25763fe-5d31-4dd8-928f-8065c5d9ecb3', [{"marker":{"size":12},"mode":"markers","y":[1,6,3,6,1],"type":"scatter","name":"Team A","text":["A-1","A-2","A-3","A-4","A-5"],"x":[1,2,3,4,5]},{"marker":{"size":12},"mode":"markers","y":[4,1,7,1,4],"type":"scatter","name":"Team B","text":["B-a","B-b","B-c","B-d","B-e"],"x":[1.0,2.0,3.0,4.0,5.0]}],
               {"xaxis":{"range":[0.75,5.25]},"margin":{"l":50,"b":60,"r":50,"t":60},"title":"Data Labels Hover","yaxis":{"range":[0,8]}}, {showLink: false});

 </script>



```julia
function linescatter3()
    trace1 = scatter(;x=1:5, y=[1, 6, 3, 6, 1],
                      mode="markers+text", name="Team A",
                      textposition="top center",
                      text=["A-1", "A-2", "A-3", "A-4", "A-5"],
                      marker_size=12, textfont_family="Raleway, sans-serif")

    trace2 = scatter(;x=1:5+0.5, y=[4, 1, 7, 1, 4],
                      mode="markers+text", name= "Team B",
                      textposition="bottom center",
                      text= ["B-a", "B-b", "B-c", "B-d", "B-e"],
                      marker_size=12, textfont_family="Times New Roman")

    data = [trace1, trace2]

    layout = Layout(;title="Data Labels on the Plot", xaxis_range=[0.75, 5.25],
                     yaxis_range=[0, 8], legend_y=0.5, legend_yref="paper",
                     legend=attr(family="Arial, sans-serif", size=20,
                                 color="grey"))
    plot(data, layout)
end
linescatter3()
```


<div id="b1eb6380-2b7f-4f3b-a9f5-a34f1f808e7c" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('b1eb6380-2b7f-4f3b-a9f5-a34f1f808e7c', [{"marker":{"size":12},"mode":"markers+text","textfont":{"family":"Raleway, sans-serif"},"textposition":"top center","y":[1,6,3,6,1],"type":"scatter","name":"Team A","text":["A-1","A-2","A-3","A-4","A-5"],"x":[1,2,3,4,5]},{"marker":{"size":12},"mode":"markers+text","textfont":{"family":"Times New Roman"},"textposition":"bottom center","y":[4,1,7,1,4],"type":"scatter","name":"Team B","text":["B-a","B-b","B-c","B-d","B-e"],"x":[1.0,2.0,3.0,4.0,5.0]}],
               {"xaxis":{"range":[0.75,5.25]},"legend":{"color":"grey","y":0.5,"family":"Arial, sans-serif","yref":"paper","size":20},"margin":{"l":50,"b":60,"r":50,"t":60},"title":"Data Labels on the Plot","yaxis":{"range":[0,8]}}, {showLink: false});

 </script>



```julia
function linescatter4()
    trace1 = scatter(;y=fill(5, 40), mode="markers", marker_size=40,
                      marker_color=0:39)
    layout = Layout(title="Scatter Plot with a Color Dimension")
    plot(trace1, layout)
end
linescatter4()
```


<div id="79e31188-ab30-49b0-938d-aedca3ce44c4" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('79e31188-ab30-49b0-938d-aedca3ce44c4', [{"mode":"markers","y":[5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5],"type":"scatter","marker":{"color":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39],"size":40}}],
               {"margin":{"l":50,"b":60,"r":50,"t":60},"title":"Scatter Plot with a Color Dimension"}, {showLink: false});

 </script>



```julia
function linescatter5()

    country = ["Switzerland (2011)", "Chile (2013)", "Japan (2014)",
               "United States (2012)", "Slovenia (2014)", "Canada (2011)",
               "Poland (2010)", "Estonia (2015)", "Luxembourg (2013)",
               "Portugal (2011)"]

    votingPop = [40, 45.7, 52, 53.6, 54.1, 54.2, 54.5, 54.7, 55.1, 56.6]
    regVoters = [49.1, 42, 52.7, 84.3, 51.7, 61.1, 55.3, 64.2, 91.1, 58.9]

    # notice use of `attr` function to make nested attributes
    trace1 = scatter(;x=votingPop, y=country, mode="markers",
                      name="Percent of estimated voting age population",
                      marker=attr(color="rgba(156, 165, 196, 0.95)",
                                  line_color="rgba(156, 165, 196, 1.0)",
                                  line_width=1, size=16, symbol="circle"))

    trace2 = scatter(;x=regVoters, y=country, mode="markers",
                      name="Percent of estimated registered voters")
    # also could have set the marker props above by using a dict
    trace2["marker"] = Dict(:color => "rgba(204, 204, 204, 0.95)",
                           :line => Dict(:color=> "rgba(217, 217, 217, 1.0)",
                                         :width=> 1),
                           :symbol => "circle",
                           :size => 16)

    data = [trace1, trace2]
    layout = Layout(Dict{Symbol,Any}(:paper_bgcolor => "rgb(254, 247, 234)",
                                     :plot_bgcolor => "rgb(254, 247, 234)");
                    title="Votes cast for ten lowest voting age population in OECD countries",
                    width=600, height=600, hovermode="closest",
                    margin=Dict(:l => 140, :r => 40, :b => 50, :t => 80),
                    xaxis=attr(showgrid=false, showline=true,
                               linecolor="rgb(102, 102, 102)",
                               titlefont_font_color="rgb(204, 204, 204)",
                               tickfont_font_color="rgb(102, 102, 102)",
                               autotick=false, dtick=10, ticks="outside",
                               tickcolor="rgb(102, 102, 102)"),
                    legend=attr(font_size=10, yanchor="middle",
                                xanchor="right"),
                    )
    plot(data, layout)
end
linescatter5()
```


<div id="c92a3701-790a-40c7-9c67-d8e4fe2ec158" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('c92a3701-790a-40c7-9c67-d8e4fe2ec158', [{"marker":{"color":"rgba(156, 165, 196, 0.95)","symbol":"circle","line":{"color":"rgba(156, 165, 196, 1.0)","width":1},"size":16},"mode":"markers","y":["Switzerland (2011)","Chile (2013)","Japan (2014)","United States (2012)","Slovenia (2014)","Canada (2011)","Poland (2010)","Estonia (2015)","Luxembourg (2013)","Portugal (2011)"],"type":"scatter","name":"Percent of estimated voting age population","x":[40.0,45.7,52.0,53.6,54.1,54.2,54.5,54.7,55.1,56.6]},{"marker":{"color":"rgba(204, 204, 204, 0.95)","symbol":"circle","line":{"color":"rgba(217, 217, 217, 1.0)","width":1},"size":16},"mode":"markers","y":["Switzerland (2011)","Chile (2013)","Japan (2014)","United States (2012)","Slovenia (2014)","Canada (2011)","Poland (2010)","Estonia (2015)","Luxembourg (2013)","Portugal (2011)"],"type":"scatter","name":"Percent of estimated registered voters","x":[49.1,42.0,52.7,84.3,51.7,61.1,55.3,64.2,91.1,58.9]}],
               {"xaxis":{"showgrid":false,"showline":true,"dtick":10,"titlefont":{"font":{"color":"rgb(204, 204, 204)"}},"tickfont":{"font":{"color":"rgb(102, 102, 102)"}},"ticks":"outside","tickcolor":"rgb(102, 102, 102)","autotick":false,"linecolor":"rgb(102, 102, 102)"},"paper_bgcolor":"rgb(254, 247, 234)","hovermode":"closest","legend":{"yanchor":"middle","xanchor":"right","font":{"size":10}},"height":600,"margin":{"l":50,"b":60,"r":50,"t":60},"plot_bgcolor":"rgb(254, 247, 234)","title":"Votes cast for ten lowest voting age population in OECD countries","width":600}, {showLink: false});

 </script>



```julia
function linescatter6()
    trace1 = scatter(;x=[52698, 43117], y=[53, 31],
                      mode="markers",
                      name="North America",
                      text=["United States", "Canada"],
                      marker=attr(color="rgb(164, 194, 244)", size=12,
                                  line=attr(color="white", width=0.5))
                      )

    trace2 = scatter(;x=[39317, 37236, 35650, 30066, 29570, 27159, 23557, 21046, 18007],
                      y=[33, 20, 13, 19, 27, 19, 49, 44, 38],
                      mode="markers", name="Europe",
                      marker_size=12, marker_color="rgb(255, 217, 102)",
                      text=["Germany", "Britain", "France", "Spain", "Italy",
                            "Czech Rep.", "Greece", "Poland", "Portugal"])

    trace3 = scatter(;x=[42952, 37037, 33106, 17478, 9813, 5253, 4692, 3899],
                      y=[23, 42, 54, 89, 14, 99, 93, 70],
                      mode="markers",
                      name="Asia/Pacific",
                      marker_size=12, marker_color="rgb(234, 153, 153)",
                      text=["Australia", "Japan", "South Korea", "Malaysia",
                            "China", "Indonesia", "Philippines", "India"])

    trace4 = scatter(;x=[19097, 18601, 15595, 13546, 12026, 7434, 5419],
                      y=[43, 47, 56, 80, 86, 93, 80],
                      mode="markers", name="Latin America",
                      marker_size=12, marker_color="rgb(142, 124, 195)",
                      text=["Chile", "Argentina", "Mexico", "Venezuela",
                            "Venezuela", "El Salvador", "Bolivia"])

    data = [trace1, trace2, trace3, trace4]

    layout = Layout(;title="Quarter 1 Growth",
                     xaxis=attr(title="GDP per Capital", showgrid=false, zeroline=false),
                     yaxis=attr(title="Percent", zeroline=false))

    plot(data, layout)
end
linescatter6()
```


<div id="c7320461-0ac6-4c76-93ab-e540307bf550" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('c7320461-0ac6-4c76-93ab-e540307bf550', [{"marker":{"color":"rgb(164, 194, 244)","line":{"color":"white","width":0.5},"size":12},"mode":"markers","y":[53,31],"type":"scatter","name":"North America","text":["United States","Canada"],"x":[52698,43117]},{"marker":{"color":"rgb(255, 217, 102)","size":12},"mode":"markers","y":[33,20,13,19,27,19,49,44,38],"type":"scatter","name":"Europe","text":["Germany","Britain","France","Spain","Italy","Czech Rep.","Greece","Poland","Portugal"],"x":[39317,37236,35650,30066,29570,27159,23557,21046,18007]},{"marker":{"color":"rgb(234, 153, 153)","size":12},"mode":"markers","y":[23,42,54,89,14,99,93,70],"type":"scatter","name":"Asia/Pacific","text":["Australia","Japan","South Korea","Malaysia","China","Indonesia","Philippines","India"],"x":[42952,37037,33106,17478,9813,5253,4692,3899]},{"marker":{"color":"rgb(142, 124, 195)","size":12},"mode":"markers","y":[43,47,56,80,86,93,80],"type":"scatter","name":"Latin America","text":["Chile","Argentina","Mexico","Venezuela","Venezuela","El Salvador","Bolivia"],"x":[19097,18601,15595,13546,12026,7434,5419]}],
               {"xaxis":{"showgrid":false,"zeroline":false,"title":"GDP per Capital"},"margin":{"l":50,"b":60,"r":50,"t":60},"title":"Quarter 1 Growth","yaxis":{"zeroline":false,"title":"Percent"}}, {showLink: false});

 </script>



```julia
function batman()
    # reference: https://github.com/alanedelman/18.337_2015/blob/master/Lecture01_0909/The%20Bat%20Curve.ipynb
    σ(x) = √(1-x.^2)
    el(x) = 3*σ(x/7)
    s(x) = 4.2 - 0.5*x - 2.0*σ(0.5*x-0.5)
    b(x) = σ(abs(2-x)-1) - x.^2/11 + 0.5x - 3
    c(x) = [1.7, 1.7, 2.6, 0.9]

    p(i, f; kwargs...) = scatter(;x=[-i; 0.0; i], y=[f(i); NaN; f(i)],
                                  marker_color="black", showlegend=false,
                                  kwargs...)
    traces = vcat(p(3:0.1:7, el; name="wings 1"),
                  p(4:0.1:7, t->-el(t); name="wings 2"),
                  p(1:0.1:3, s; name="Shoulders"),
                  p(0:0.1:4, b; name="Bottom"),
                  p([0, 0.5, 0.8, 1], c; name="head"))

    plot(traces, Layout(title="Batman"))
end
batman()
```


<div id="c8f8ce05-c30f-47f6-880d-3c6e3781c27d" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('c8f8ce05-c30f-47f6-880d-3c6e3781c27d', [{"marker":{"color":"black"},"showlegend":false,"y":[2.710523708715754,2.6897765630594064,2.6681798427897228,2.6457127429801117,2.622352892704861,2.598076211353316,2.572856746252052,2.5466664885849566,2.519475164005555,2.491249993600049,2.4619554199448697,2.431552791857877,2.4000000000000004,2.367251053652825,2.3332555866542055,2.2979582774493443,2.2612981642753573,2.223207831315932,2.183612434775485,2.142428528562855,2.099562636671296,2.054909501954889,2.008349916661711,1.9597480054583445,1.908947781541722,1.8557687223952257,1.7999999999999996,1.7413928274780042,1.679650109337036,1.6144121315860598,1.5452362609131385,1.4715672611476625,1.3926922979375933,1.3076696830622019,1.2152097324649567,1.1134612334371352,0.9995917534020515,0.8688486399734262,0.7119963311072637,0.5052782623950675,0.0,null,2.710523708715754,2.6897765630594064,2.6681798427897228,2.6457127429801117,2.622352892704861,2.598076211353316,2.572856746252052,2.5466664885849566,2.519475164005555,2.491249993600049,2.4619554199448697,2.431552791857877,2.4000000000000004,2.367251053652825,2.3332555866542055,2.2979582774493443,2.2612981642753573,2.223207831315932,2.183612434775485,2.142428528562855,2.099562636671296,2.054909501954889,2.008349916661711,1.9597480054583445,1.908947781541722,1.8557687223952257,1.7999999999999996,1.7413928274780042,1.679650109337036,1.6144121315860598,1.5452362609131385,1.4715672611476625,1.3926922979375933,1.3076696830622019,1.2152097324649567,1.1134612334371352,0.9995917534020515,0.8688486399734262,0.7119963311072637,0.5052782623950675,0.0],"type":"scatter","name":"wings 1","x":[-3.0,-3.1,-3.2,-3.3,-3.4,-3.5,-3.6,-3.7,-3.8,-3.9,-4.0,-4.1,-4.2,-4.3,-4.4,-4.5,-4.6,-4.7,-4.8,-4.9,-5.0,-5.1,-5.2,-5.3,-5.4,-5.5,-5.6,-5.7,-5.8,-5.9,-6.0,-6.1,-6.2,-6.3,-6.4,-6.5,-6.6,-6.7,-6.8,-6.9,-7.0,0.0,3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,5.0,5.1,5.2,5.3,5.4,5.5,5.6,5.7,5.8,5.9,6.0,6.1,6.2,6.3,6.4,6.5,6.6,6.7,6.8,6.9,7.0]},{"marker":{"color":"black"},"showlegend":false,"y":[-2.4619554199448697,-2.431552791857877,-2.4000000000000004,-2.367251053652825,-2.3332555866542055,-2.2979582774493443,-2.2612981642753573,-2.223207831315932,-2.183612434775485,-2.142428528562855,-2.099562636671296,-2.054909501954889,-2.008349916661711,-1.9597480054583445,-1.908947781541722,-1.8557687223952257,-1.7999999999999996,-1.7413928274780042,-1.679650109337036,-1.6144121315860598,-1.5452362609131385,-1.4715672611476625,-1.3926922979375933,-1.3076696830622019,-1.2152097324649567,-1.1134612334371352,-0.9995917534020515,-0.8688486399734262,-0.7119963311072637,-0.5052782623950675,-0.0,null,-2.4619554199448697,-2.431552791857877,-2.4000000000000004,-2.367251053652825,-2.3332555866542055,-2.2979582774493443,-2.2612981642753573,-2.223207831315932,-2.183612434775485,-2.142428528562855,-2.099562636671296,-2.054909501954889,-2.008349916661711,-1.9597480054583445,-1.908947781541722,-1.8557687223952257,-1.7999999999999996,-1.7413928274780042,-1.679650109337036,-1.6144121315860598,-1.5452362609131385,-1.4715672611476625,-1.3926922979375933,-1.3076696830622019,-1.2152097324649567,-1.1134612334371352,-0.9995917534020515,-0.8688486399734262,-0.7119963311072637,-0.5052782623950675,-0.0],"type":"scatter","name":"wings 2","x":[-4.0,-4.1,-4.2,-4.3,-4.4,-4.5,-4.6,-4.7,-4.8,-4.9,-5.0,-5.1,-5.2,-5.3,-5.4,-5.5,-5.6,-5.7,-5.8,-5.9,-6.0,-6.1,-6.2,-6.3,-6.4,-6.5,-6.6,-6.7,-6.8,-6.9,-7.0,0.0,4.0,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,5.0,5.1,5.2,5.3,5.4,5.5,5.6,5.7,5.8,5.9,6.0,6.1,6.2,6.3,6.4,6.5,6.6,6.7,6.8,6.9,7.0]},{"marker":{"color":"black"},"showlegend":false,"y":[1.7000000000000002,1.6525015644561825,1.6100251257867602,1.5726280066714813,1.5404082057734576,1.5135083268962917,1.492121597166109,1.4765006004804806,1.4669697220176643,1.463942890050825,1.467949192431123,1.4796706911509938,1.5,1.530131584642934,1.57171431429143,1.6271243444677048,1.7000000000000006,1.796434624714726,1.9282202112918658,2.12550020016016,2.7,null,1.7000000000000002,1.6525015644561825,1.6100251257867602,1.5726280066714813,1.5404082057734576,1.5135083268962917,1.492121597166109,1.4765006004804806,1.4669697220176643,1.463942890050825,1.467949192431123,1.4796706911509938,1.5,1.530131584642934,1.57171431429143,1.6271243444677048,1.7000000000000006,1.796434624714726,1.9282202112918658,2.12550020016016,2.7],"type":"scatter","name":"Shoulders","x":[-1.0,-1.1,-1.2,-1.3,-1.4,-1.5,-1.6,-1.7,-1.8,-1.9,-2.0,-2.1,-2.2,-2.3,-2.4,-2.5,-2.6,-2.7,-2.8,-2.9,-3.0,0.0,1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3.0]},{"marker":{"color":"black"},"showlegend":false,"y":[-3.0,-2.5150191965550235,-2.3036363636363637,-2.144038975327533,-2.0145454545454546,-1.906701868942834,-1.8162121337361046,-1.740606253128509,-1.678385921068547,-1.6286489265297437,-1.5909090909090908,-1.56501256289338,-1.5511131937958198,-1.549697162219418,-1.5616666791906502,-1.588520050761016,-1.6327272727272728,-1.6985844298729877,-1.7945454545454547,-1.942291923827751,-2.3636363636363638,-1.9150191965550236,-1.7400000000000002,-1.616766248054806,-1.5236363636363635,-1.4521564143973795,-1.3980303155542866,-1.358788071310327,-1.3329313756140015,-1.3195580174388346,-1.3181818181818183,-1.3286489265297439,-1.3511131937958198,-1.3860607985830544,-1.4343939519179227,-1.497610959851925,-1.5781818181818181,-1.6804026116911697,-1.812727272727273,-1.996837378373205,-2.4545454545454546,null,-3.0,-2.5150191965550235,-2.3036363636363637,-2.144038975327533,-2.0145454545454546,-1.906701868942834,-1.8162121337361046,-1.740606253128509,-1.678385921068547,-1.6286489265297437,-1.5909090909090908,-1.56501256289338,-1.5511131937958198,-1.549697162219418,-1.5616666791906502,-1.588520050761016,-1.6327272727272728,-1.6985844298729877,-1.7945454545454547,-1.942291923827751,-2.3636363636363638,-1.9150191965550236,-1.7400000000000002,-1.616766248054806,-1.5236363636363635,-1.4521564143973795,-1.3980303155542866,-1.358788071310327,-1.3329313756140015,-1.3195580174388346,-1.3181818181818183,-1.3286489265297439,-1.3511131937958198,-1.3860607985830544,-1.4343939519179227,-1.497610959851925,-1.5781818181818181,-1.6804026116911697,-1.812727272727273,-1.996837378373205,-2.4545454545454546],"type":"scatter","name":"Bottom","x":[0.0,-0.1,-0.2,-0.3,-0.4,-0.5,-0.6,-0.7,-0.8,-0.9,-1.0,-1.1,-1.2,-1.3,-1.4,-1.5,-1.6,-1.7,-1.8,-1.9,-2.0,-2.1,-2.2,-2.3,-2.4,-2.5,-2.6,-2.7,-2.8,-2.9,-3.0,-3.1,-3.2,-3.3,-3.4,-3.5,-3.6,-3.7,-3.8,-3.9,-4.0,0.0,0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2.0,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3.0,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.8,3.9,4.0]},{"marker":{"color":"black"},"showlegend":false,"y":[1.7,1.7,2.6,0.9,null,1.7,1.7,2.6,0.9],"type":"scatter","name":"head","x":[-0.0,-0.5,-0.8,-1.0,0.0,0.0,0.5,0.8,1.0]}],
               {"margin":{"l":50,"b":60,"r":50,"t":60},"title":"Batman"}, {showLink: false});

 </script>



```julia
function dumbell()
    # reference: https://plot.ly/r/dumbbell-plots/
    @eval using DataFrames

    # read Data into dataframe
    nm = tempname()
    url = "https://raw.githubusercontent.com/plotly/datasets/master/school_earnings.csv"
    download(url, nm)
    df = readtable(nm)
    rm(nm)

    # sort dataframe by male earnings
    df = sort(df, cols=[:Men], rev=false)

    men = scatter(;y=df[:School], x=df[:Men], mode="markers", name="Men",
                   marker=attr(color="blue", size=12))
    women = scatter(;y=df[:School], x=df[:Women], mode="markers", name="Women",
                     marker=attr(color="pink", size=12))

    lines = map(eachrow(df)) do r
        scatter(y=fill(r[:School], 2), x=[r[:Women], r[:Men]], mode="lines",
                name=r[:School], showlegend=false, line_color="gray")
    end

    data = Base.typed_vcat(GenericTrace, men, women, lines)
    layout = Layout(width=650, height=650, margin_l=100, yaxis_title="School",
                    xaxis_title="Annual Salary (thousands)",
                    title="Gender earnings disparity")

    plot(data, layout)
end
dumbell()
```


<div id="38e6f2ff-3679-43ac-9e35-b73436f6e3bb" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('38e6f2ff-3679-43ac-9e35-b73436f6e3bb', [{"marker":{"color":"blue","size":12},"mode":"markers","y":["UCLA","SoCal","Emory","Michigan","Berkeley","Brown","NYU","Notre Dame","Cornell","Tufts","Yale","Dartmouth","Chicago","Columbia","Duke","Georgetown","Princeton","U.Penn","Stanford","MIT","Harvard"],"type":"scatter","name":"Men","x":[78,81,82,84,88,92,94,100,107,112,114,114,118,119,124,131,137,141,151,152,165]},{"marker":{"color":"pink","size":12},"mode":"markers","y":["UCLA","SoCal","Emory","Michigan","Berkeley","Brown","NYU","Notre Dame","Cornell","Tufts","Yale","Dartmouth","Chicago","Columbia","Duke","Georgetown","Princeton","U.Penn","Stanford","MIT","Harvard"],"type":"scatter","name":"Women","x":[64,72,68,62,71,72,67,73,80,76,79,84,78,86,93,94,90,92,96,94,112]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["UCLA","UCLA"],"type":"scatter","name":"UCLA","x":[64,78]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["SoCal","SoCal"],"type":"scatter","name":"SoCal","x":[72,81]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Emory","Emory"],"type":"scatter","name":"Emory","x":[68,82]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Michigan","Michigan"],"type":"scatter","name":"Michigan","x":[62,84]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Berkeley","Berkeley"],"type":"scatter","name":"Berkeley","x":[71,88]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Brown","Brown"],"type":"scatter","name":"Brown","x":[72,92]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["NYU","NYU"],"type":"scatter","name":"NYU","x":[67,94]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Notre Dame","Notre Dame"],"type":"scatter","name":"Notre Dame","x":[73,100]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Cornell","Cornell"],"type":"scatter","name":"Cornell","x":[80,107]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Tufts","Tufts"],"type":"scatter","name":"Tufts","x":[76,112]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Yale","Yale"],"type":"scatter","name":"Yale","x":[79,114]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Dartmouth","Dartmouth"],"type":"scatter","name":"Dartmouth","x":[84,114]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Chicago","Chicago"],"type":"scatter","name":"Chicago","x":[78,118]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Columbia","Columbia"],"type":"scatter","name":"Columbia","x":[86,119]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Duke","Duke"],"type":"scatter","name":"Duke","x":[93,124]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Georgetown","Georgetown"],"type":"scatter","name":"Georgetown","x":[94,131]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Princeton","Princeton"],"type":"scatter","name":"Princeton","x":[90,137]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["U.Penn","U.Penn"],"type":"scatter","name":"U.Penn","x":[92,141]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Stanford","Stanford"],"type":"scatter","name":"Stanford","x":[96,151]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["MIT","MIT"],"type":"scatter","name":"MIT","x":[94,152]},{"showlegend":false,"mode":"lines","line":{"color":"gray"},"y":["Harvard","Harvard"],"type":"scatter","name":"Harvard","x":[112,165]}],
               {"xaxis":{"title":"Annual Salary (thousands)"},"height":650,"margin":{"l":50,"b":60,"r":50,"t":60},"yaxis":{"title":"School"},"title":"Gender earnings disparity","width":650}, {showLink: false});

 </script>



```julia
function errorbars1()
    trace1 = scatter(;x=vcat(1:10, 10:-1:1),
                     y=vcat(2:11, 9:-1:0),
                     fill="tozerox",
                     fillcolor="rgba(0, 100, 80, 0.2)",
                     line_color="transparent",
                     name="Fair",
                     showlegend=false)

    trace2 = scatter(;x=vcat(1:10, 10:-1:1),
                     y=[5.5, 3.0, 5.5, 8.0, 6.0, 3.0, 8.0, 5.0, 6.0, 5.5, 4.75,
                        5.0, 4.0, 7.0, 2.0, 4.0, 7.0, 4.4, 2.0, 4.5],
                     fill="tozerox",
                     fillcolor="rgba(0, 176, 246, 0.2)",
                     line_color="transparent",
                     name="Premium",
                     showlegend=false)

    trace3 = scatter(;x=vcat(1:10, 10:-1:1),
                     y=[11.0, 9.0, 7.0, 5.0, 3.0, 1.0, 3.0, 5.0, 3.0, 1.0,
                        -1.0, 1.0, 3.0, 1.0, -0.5, 1.0, 3.0, 5.0, 7.0, 9.],
                     fill="tozerox",
                     fillcolor="rgba(231, 107, 243, 0.2)",
                     line_color="transparent",
                     name="Fair",
                     showlegend=false)

    trace4 = scatter(;x=1:10, y=1:10,
                     line_color="rgb(00, 100, 80)",
                     mode="lines",
                     name="Fair")

    trace5 = scatter(;x=1:10,
                     y=[5.0, 2.5, 5.0, 7.5, 5.0, 2.5, 7.5, 4.5, 5.5, 5.],
                     line_color="rgb(0, 176, 246)",
                     mode="lines",
                     name="Premium")

    trace6 = scatter(;x=1:10, y=vcat(10:-2:0, [2, 4,2, 0]),
                     line_color="rgb(231, 107, 243)",
                     mode="lines",
                     name="Ideal")
    data = [trace1, trace2, trace3, trace4, trace5, trace6]
    layout = Layout(;paper_bgcolor="rgb(255, 255, 255)",
                    plot_bgcolor="rgb(229, 229, 229)",

                    xaxis=attr(gridcolor="rgb(255, 255, 255)",
                               range=[1, 10],
                               showgrid=true,
                               showline=false,
                               showticklabels=true,
                               tickcolor="rgb(127, 127, 127)",
                               ticks="outside",
                               zeroline=false),

                    yaxis=attr(gridcolor="rgb(255, 255, 255)",
                               showgrid=true,
                               showline=false,
                               showticklabels=true,
                               tickcolor="rgb(127, 127, 127)",
                               ticks="outside",
                               zeroline=false))

    plot(data, layout)
end
errorbars1()
```


<div id="7078e107-c172-4e8e-b574-d188d3708d00" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('7078e107-c172-4e8e-b574-d188d3708d00', [{"showlegend":false,"line":{"color":"transparent"},"fillcolor":"rgba(0, 100, 80, 0.2)","y":[2,3,4,5,6,7,8,9,10,11,9,8,7,6,5,4,3,2,1,0],"type":"scatter","name":"Fair","fill":"tozerox","x":[1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1]},{"showlegend":false,"line":{"color":"transparent"},"fillcolor":"rgba(0, 176, 246, 0.2)","y":[5.5,3.0,5.5,8.0,6.0,3.0,8.0,5.0,6.0,5.5,4.75,5.0,4.0,7.0,2.0,4.0,7.0,4.4,2.0,4.5],"type":"scatter","name":"Premium","fill":"tozerox","x":[1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1]},{"showlegend":false,"line":{"color":"transparent"},"fillcolor":"rgba(231, 107, 243, 0.2)","y":[11.0,9.0,7.0,5.0,3.0,1.0,3.0,5.0,3.0,1.0,-1.0,1.0,3.0,1.0,-0.5,1.0,3.0,5.0,7.0,9.0],"type":"scatter","name":"Fair","fill":"tozerox","x":[1,2,3,4,5,6,7,8,9,10,10,9,8,7,6,5,4,3,2,1]},{"mode":"lines","line":{"color":"rgb(00, 100, 80)"},"y":[1,2,3,4,5,6,7,8,9,10],"type":"scatter","name":"Fair","x":[1,2,3,4,5,6,7,8,9,10]},{"mode":"lines","line":{"color":"rgb(0, 176, 246)"},"y":[5.0,2.5,5.0,7.5,5.0,2.5,7.5,4.5,5.5,5.0],"type":"scatter","name":"Premium","x":[1,2,3,4,5,6,7,8,9,10]},{"mode":"lines","line":{"color":"rgb(231, 107, 243)"},"y":[10,8,6,4,2,0,2,4,2,0],"type":"scatter","name":"Ideal","x":[1,2,3,4,5,6,7,8,9,10]}],
               {"xaxis":{"showgrid":true,"showline":false,"gridcolor":"rgb(255, 255, 255)","showticklabels":true,"zeroline":false,"ticks":"outside","range":[1,10],"tickcolor":"rgb(127, 127, 127)"},"paper_bgcolor":"rgb(255, 255, 255)","margin":{"l":50,"b":60,"r":50,"t":60},"plot_bgcolor":"rgb(229, 229, 229)","yaxis":{"showgrid":true,"showline":false,"gridcolor":"rgb(255, 255, 255)","showticklabels":true,"zeroline":false,"ticks":"outside","tickcolor":"rgb(127, 127, 127)"}}, {showLink: false});

 </script>



```julia
function errorbars2()
    function random_dates(d1::DateTime, d2::DateTime, n::Int)
        map(Date, sort!(rand(d1:Dates.Hour(12):d2, n)))
    end

    function _random_number(num, mul)
        value = []
        j = 0
        rand = 0
        while j <= num+1
            rand = rand() * mul
            append!(value, [rand])
            j += 1
        end
        return value
    end

    dates = random_dates(DateTime(2001, 1, 1), DateTime(2005, 12, 31), 50)

    trace1 = scatter(;x=dates,
                     y=20.0 .* rand(50),
                     line_width=0,
                     marker_color="444",
                     mode="lines",
                     name="Lower Bound")

    trace2 = scatter(;x=dates,
                     y=21.0 .* rand(50),
                     fill="tonexty",
                     fillcolor="rgba(68, 68, 68, 0.3)",
                     line_color="rgb(31, 119, 180)",
                     mode="lines",
                     name="Measurement")

    trace3 = scatter(;x=dates,
                     y=22.0 .* rand(50),
                     fill="tonexty",
                     fillcolor="rgba(68, 68, 68, 0.3)",
                     line_width=0,
                     marker_color="444",
                     mode="lines",
                     name="Upper Bound")

    data = [trace1, trace2, trace3]
    t = "Continuous, variable value error bars<br> Notice the hover text!"
    layout = Layout(;title=t, yaxis_title="Wind speed (m/s)")
    plot(data, layout)
end
errorbars2()
```


<div id="2b6aaab5-473e-4c1d-a832-dfa0d494ab94" class="plotly-graph-div"></div>

<script>
    window.PLOTLYENV=window.PLOTLYENV || {};
    window.PLOTLYENV.BASE_URL="https://plot.ly";
    Plotly.newPlot('2b6aaab5-473e-4c1d-a832-dfa0d494ab94', [{"marker":{"color":"444"},"mode":"lines","line":{"width":0},"y":[7.788675573099755,14.878611216570361,14.01871907229124,14.22585607114485,7.1096119726280005,13.771228578109751,6.034285417781011,1.7095337879162464,4.924218843483876,1.8173117434945452,6.574812768273071,16.763614332911217,9.02376756538568,14.025225135556795,16.86942636663654,0.541492488947477,18.15486573057719,9.422214750646214,11.148279680514332,19.69789383090864,6.364835480160598,19.036359085053427,17.953075167991955,5.133579882894859,18.340931400077594,8.158437375001299,16.220210861365814,18.51111967531912,9.993509371178494,7.161104540354368,19.467944585899225,16.797112258838915,11.149463300794672,14.74522529923795,7.9359463437663225,16.878422049839763,4.261257691885145,4.491747930255254,13.699220604248161,8.431174292075706,12.09805045256774,8.818889123495355,8.667920409617613,13.03240823578999,16.89247183368215,15.86699021140451,5.203236198560894,8.92587906614561,2.4530604778456766,1.1185338667723155],"type":"scatter","name":"Lower Bound","x":["2001-01-17","2001-01-28","2001-03-09","2001-04-22","2001-05-27","2001-06-17","2001-09-16","2001-10-06","2001-10-19","2001-11-05","2001-12-07","2002-02-12","2002-08-24","2002-11-03","2002-12-27","2003-04-06","2003-04-20","2003-06-30","2003-07-27","2003-08-10","2003-08-14","2003-09-04","2003-09-12","2003-09-23","2003-09-29","2003-10-23","2004-01-02","2004-03-14","2004-03-14","2004-05-08","2004-08-11","2004-09-09","2004-10-17","2004-10-29","2004-11-05","2004-11-13","2004-11-26","2004-11-27","2004-12-15","2005-02-11","2005-03-15","2005-03-21","2005-06-16","2005-06-21","2005-07-03","2005-08-09","2005-08-19","2005-09-23","2005-10-05","2005-12-13"]},{"mode":"lines","line":{"color":"rgb(31, 119, 180)"},"fillcolor":"rgba(68, 68, 68, 0.3)","y":[11.843685240239315,19.449537679053588,17.369645905287367,16.00592581841321,17.026974754395727,20.886714826045004,10.072406257584085,12.392177722443414,1.3307190111952654,20.316960704745043,3.920959229878859,15.913547374608793,6.224916054929738,16.181076925250462,13.380979362386327,3.2549322941380883,5.749327841745386,13.893799752604757,16.432130085175046,19.553992202133358,12.893477909806212,3.1172498728747224,12.222323609546104,6.555894751735368,4.2470227372434035,1.5672981758949682,17.522608067582393,2.2603230351053014,17.555737301815856,1.8241999558299586,10.098725639747526,15.73931289971023,12.145534620622218,13.536504658320524,1.4268881353223997,1.7009009938386146,1.2270427552053422,4.62400124867753,14.172794954596114,19.839558497720635,6.311029728842785,13.410329803506023,4.5068812064952555,5.655904127427872,20.060188388191797,3.5423036518860034,6.635882310007996,18.078470376642468,1.439204285485001,9.8737449711588],"type":"scatter","name":"Measurement","fill":"tonexty","x":["2001-01-17","2001-01-28","2001-03-09","2001-04-22","2001-05-27","2001-06-17","2001-09-16","2001-10-06","2001-10-19","2001-11-05","2001-12-07","2002-02-12","2002-08-24","2002-11-03","2002-12-27","2003-04-06","2003-04-20","2003-06-30","2003-07-27","2003-08-10","2003-08-14","2003-09-04","2003-09-12","2003-09-23","2003-09-29","2003-10-23","2004-01-02","2004-03-14","2004-03-14","2004-05-08","2004-08-11","2004-09-09","2004-10-17","2004-10-29","2004-11-05","2004-11-13","2004-11-26","2004-11-27","2004-12-15","2005-02-11","2005-03-15","2005-03-21","2005-06-16","2005-06-21","2005-07-03","2005-08-09","2005-08-19","2005-09-23","2005-10-05","2005-12-13"]},{"marker":{"color":"444"},"mode":"lines","line":{"width":0},"fillcolor":"rgba(68, 68, 68, 0.3)","y":[2.6994650965190288,7.00055030572431,18.85923114771184,5.251414835195611,0.24976717735231313,12.538988618163655,2.726961374821928,10.719635254971422,16.880353168190418,9.856843036174347,17.63660254659944,19.558054126648365,15.903954966903147,12.52494893195089,16.424594894125047,10.674453304514033,17.926503806822417,12.167643694384225,1.19031783872021,9.221949945355593,18.891940434888745,6.249333617086824,16.34808895005429,10.348427563266991,2.310591323210635,20.156865306671428,11.019247214320611,21.636662680705612,4.707258994791973,21.087655921765048,12.619275532972768,14.54715603109522,6.668796347239033,10.940077964806296,20.781814715649958,2.9324653348824588,19.32289551003427,9.739439226564738,15.872903256187893,10.469609647656462,7.474334018761363,6.164884014341151,11.775580696835805,0.1073557181706506,17.390130403522214,5.558274198462758,9.306390153220914,17.37997174072716,7.524555250655905,13.670124332184852],"type":"scatter","name":"Upper Bound","fill":"tonexty","x":["2001-01-17","2001-01-28","2001-03-09","2001-04-22","2001-05-27","2001-06-17","2001-09-16","2001-10-06","2001-10-19","2001-11-05","2001-12-07","2002-02-12","2002-08-24","2002-11-03","2002-12-27","2003-04-06","2003-04-20","2003-06-30","2003-07-27","2003-08-10","2003-08-14","2003-09-04","2003-09-12","2003-09-23","2003-09-29","2003-10-23","2004-01-02","2004-03-14","2004-03-14","2004-05-08","2004-08-11","2004-09-09","2004-10-17","2004-10-29","2004-11-05","2004-11-13","2004-11-26","2004-11-27","2004-12-15","2005-02-11","2005-03-15","2005-03-21","2005-06-16","2005-06-21","2005-07-03","2005-08-09","2005-08-19","2005-09-23","2005-10-05","2005-12-13"]}],
               {"margin":{"l":50,"b":60,"r":50,"t":60},"title":"Continuous, variable value error bars<br> Notice the hover text!","yaxis":{"title":"Wind speed (m/s)"}}, {showLink: false});

 </script>



