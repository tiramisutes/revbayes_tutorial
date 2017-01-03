stable = !T
if (stable) {
    library(RevGadgets)
} else {
    source("/Users/mlandis/projects/RevGadgets/R/plot_ancestral_states.R")
}
library(ggtree)


out_str = "output/simple_phy"
#out_str = "output/epoch_phy"
tree_fn = paste(out_str, ".ase.tre", sep="")

st_lbl = c("R","K","O","M","H","Z",
           "RK",
           "RO","KO",
           "RM","KM","OM",
           "RH","KH","OH","MH",
           "RZ","KZ","OZ","MZ","HZ")


st_colors = c(  "#1b9e77",
                "#d95f02",
                "#7570b3",
                "#e7298a",
                "#66a61e",
                "#e6ab02",
                "#a6761d",
                "#666666",
                "#66c2a5",
                "#fc8d62",
                "#8da0cb",
                "#e78ac3",
                "#a6d854",
                "#ffd92f",
                "#e5c494",
                "#b3b3b3",
                "#e41a1c",
                "#377eb8",
                "#4daf4a",
                "#984ea3",
                "#ff7f00")
#,
 #               "#ffff33",
  #              "#a65628",
   #             "#f781bf",
    
names(st_colors) = st_lbl

summary_statistic = "MAPRange"
plot_ancestral_states(tree_file=tree_fn,
                      include_start_states=T,
                      shoulder_label_size=1.5,
                      summary_statistic=summary_statistic,
                      state_labels=st_lbl,
                      state_colors=st_colors,
                      node_label_size=2,
                      node_size_range=c(2,2),
                      tip_label_size=2,
                      tip_label_offset=0.5,
                      #xlim_visible=c(0,6),
                      xlim_visible=c(0,17),
                      show_posterior_legend=F)