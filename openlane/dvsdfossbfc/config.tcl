# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0
set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) dvsdfossbfc
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 2000 20000"
set ::env(CLOCK_PORT) "clk"
set ::env(FP_IO_HLAYER) "met1"
set ::env(FP_IO_VLAYER) "met4"
set ::env(FP_PDN_RAILS_LAYER) met1
set ::env(FP_PDN_LOWER_LAYER) met4
set ::env(FP_PDN_UPPER_LAYER) met5
set ::env(GLB_RT_LAYER_ADJUSTMENTS) 0.99
set ::env(CELL_PAD) {0}
set ::env(VERILOG_FILES) "$script_dir/../../verilog/rtl/dvsdfossbfc.v"
## PDN 
set ::env(FP_PDN_VPITCH) 40
set ::env(FP_PDN_HPITCH) 40
set ::env(FP_PDN_HOFFSET) 16.41
set ::env(FP_PDN_HSPACING) 18.4
set ::env(FP_PDN_VSPACING) 18.4


