set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {VecDotProduct} -view {{VecDotProduct_dataflow_ana.wcfg}} -tclbatch {VecDotProduct.tcl} -protoinst {VecDotProduct.protoinst}
