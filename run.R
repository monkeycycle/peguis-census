# Requirements ------------------------------------------------------------
if (!require('devtools')) install.packages('devtools'); library('devtools')
if (!require('upstartr')) install.packages('upstartr'); library('upstartr')
if (!require('waapihktheme')) install_github('monkeycycle/waapihktheme', force=TRUE); library('waapihktheme')

run_config()
run_process()
run_analyze()
run_visualize()
run_notebook()
