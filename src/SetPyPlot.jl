module SetPyPlot

# setting pyplot parameters to default values
using PyPlot

export setrcparam

"""
setrcparam(;tick_font_size = 10,
legend_font_size = 10,
axis_label_font_size = 10,
fig_width = 8,
fig_height = 6)

sets the font size parameters to my favorite default values
"""
function setrcparam(;tick_font_size = 10,
    legend_font_size = 10,
    axis_label_font_size = 10,
    fig_width = 8,
    fig_height = 6)

    rc("xtick", labelsize=tick_font_size)
    rc("ytick", labelsize=tick_font_size)
    rc("legend", fontsize=legend_font_size)
    rc("axes", labelsize=axis_label_font_size)
    rc("figure", dpi = 300)
    rc("figure", figsize = (fig_width, fig_height)./2.54)
    rc("savefig", bbox = "tight")
end

# more to come later...

end # module
