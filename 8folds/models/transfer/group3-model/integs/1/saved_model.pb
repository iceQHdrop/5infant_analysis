??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
l1_integ_fc0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:&*$
shared_namel1_integ_fc0/kernel
{
'l1_integ_fc0/kernel/Read/ReadVariableOpReadVariableOpl1_integ_fc0/kernel*
_output_shapes

:&*
dtype0
z
l1_integ_fc0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namel1_integ_fc0/bias
s
%l1_integ_fc0/bias/Read/ReadVariableOpReadVariableOpl1_integ_fc0/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?	
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?	
value?	B?	 B?	
?
layer_with_weights-0
layer-0
layer-1
trainable_variables
	variables
regularization_losses
	keras_api

signatures
h

kernel
	bias

trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api

0
	1

0
	1
 
?
trainable_variables
	variables
layer_metrics
metrics
regularization_losses
layer_regularization_losses

layers
non_trainable_variables
 
_]
VARIABLE_VALUEl1_integ_fc0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEl1_integ_fc0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
	1

0
	1
 
?

trainable_variables
	variables
layer_metrics
metrics
regularization_losses
layer_regularization_losses

layers
non_trainable_variables
 
 
 
?
trainable_variables
	variables
layer_metrics
metrics
regularization_losses
layer_regularization_losses

layers
 non_trainable_variables
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
?
"serving_default_l1_integ_fc0_inputPlaceholder*'
_output_shapes
:?????????&*
dtype0*
shape:?????????&
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_l1_integ_fc0_inputl1_integ_fc0/kernell1_integ_fc0/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_54181
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'l1_integ_fc0/kernel/Read/ReadVariableOp%l1_integ_fc0/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_54279
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamel1_integ_fc0/kernell1_integ_fc0/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_54295??
?
?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54090

inputs$
l1_integ_fc0_54077:& 
l1_integ_fc0_54079:
identity??$l1_integ_fc0/StatefulPartitionedCall?
$l1_integ_fc0/StatefulPartitionedCallStatefulPartitionedCallinputsl1_integ_fc0_54077l1_integ_fc0_54079*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l1_integ_fc0_layer_call_and_return_conditional_losses_540762&
$l1_integ_fc0/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall-l1_integ_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_540872
activation_15/PartitionedCall?
IdentityIdentity&activation_15/PartitionedCall:output:0%^l1_integ_fc0/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 2L
$l1_integ_fc0/StatefulPartitionedCall$l1_integ_fc0/StatefulPartitionedCall:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
?
.__inference_l3_integration_layer_call_fn_54150
l1_integ_fc0_input
unknown:&
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll1_integ_fc0_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_l3_integration_layer_call_and_return_conditional_losses_541342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:?????????&
,
_user_specified_namel1_integ_fc0_input
?
?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54170
l1_integ_fc0_input$
l1_integ_fc0_54163:& 
l1_integ_fc0_54165:
identity??$l1_integ_fc0/StatefulPartitionedCall?
$l1_integ_fc0/StatefulPartitionedCallStatefulPartitionedCalll1_integ_fc0_inputl1_integ_fc0_54163l1_integ_fc0_54165*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l1_integ_fc0_layer_call_and_return_conditional_losses_540762&
$l1_integ_fc0/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall-l1_integ_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_540872
activation_15/PartitionedCall?
IdentityIdentity&activation_15/PartitionedCall:output:0%^l1_integ_fc0/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 2L
$l1_integ_fc0/StatefulPartitionedCall$l1_integ_fc0/StatefulPartitionedCall:[ W
'
_output_shapes
:?????????&
,
_user_specified_namel1_integ_fc0_input
?
?
 __inference__wrapped_model_54059
l1_integ_fc0_inputL
:l3_integration_l1_integ_fc0_matmul_readvariableop_resource:&I
;l3_integration_l1_integ_fc0_biasadd_readvariableop_resource:
identity??2l3_integration/l1_integ_fc0/BiasAdd/ReadVariableOp?1l3_integration/l1_integ_fc0/MatMul/ReadVariableOp?
1l3_integration/l1_integ_fc0/MatMul/ReadVariableOpReadVariableOp:l3_integration_l1_integ_fc0_matmul_readvariableop_resource*
_output_shapes

:&*
dtype023
1l3_integration/l1_integ_fc0/MatMul/ReadVariableOp?
"l3_integration/l1_integ_fc0/MatMulMatMull1_integ_fc0_input9l3_integration/l1_integ_fc0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"l3_integration/l1_integ_fc0/MatMul?
2l3_integration/l1_integ_fc0/BiasAdd/ReadVariableOpReadVariableOp;l3_integration_l1_integ_fc0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2l3_integration/l1_integ_fc0/BiasAdd/ReadVariableOp?
#l3_integration/l1_integ_fc0/BiasAddBiasAdd,l3_integration/l1_integ_fc0/MatMul:product:0:l3_integration/l1_integ_fc0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2%
#l3_integration/l1_integ_fc0/BiasAdd?
!l3_integration/activation_15/TanhTanh,l3_integration/l1_integ_fc0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!l3_integration/activation_15/Tanh?
IdentityIdentity%l3_integration/activation_15/Tanh:y:03^l3_integration/l1_integ_fc0/BiasAdd/ReadVariableOp2^l3_integration/l1_integ_fc0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 2h
2l3_integration/l1_integ_fc0/BiasAdd/ReadVariableOp2l3_integration/l1_integ_fc0/BiasAdd/ReadVariableOp2f
1l3_integration/l1_integ_fc0/MatMul/ReadVariableOp1l3_integration/l1_integ_fc0/MatMul/ReadVariableOp:[ W
'
_output_shapes
:?????????&
,
_user_specified_namel1_integ_fc0_input
?
d
H__inference_activation_15_layer_call_and_return_conditional_losses_54087

inputs
identityN
TanhTanhinputs*
T0*'
_output_shapes
:?????????2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_54181
l1_integ_fc0_input
unknown:&
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll1_integ_fc0_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_540592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:?????????&
,
_user_specified_namel1_integ_fc0_input
?
?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54210

inputs=
+l1_integ_fc0_matmul_readvariableop_resource:&:
,l1_integ_fc0_biasadd_readvariableop_resource:
identity??#l1_integ_fc0/BiasAdd/ReadVariableOp?"l1_integ_fc0/MatMul/ReadVariableOp?
"l1_integ_fc0/MatMul/ReadVariableOpReadVariableOp+l1_integ_fc0_matmul_readvariableop_resource*
_output_shapes

:&*
dtype02$
"l1_integ_fc0/MatMul/ReadVariableOp?
l1_integ_fc0/MatMulMatMulinputs*l1_integ_fc0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l1_integ_fc0/MatMul?
#l1_integ_fc0/BiasAdd/ReadVariableOpReadVariableOp,l1_integ_fc0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#l1_integ_fc0/BiasAdd/ReadVariableOp?
l1_integ_fc0/BiasAddBiasAddl1_integ_fc0/MatMul:product:0+l1_integ_fc0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l1_integ_fc0/BiasAdd?
activation_15/TanhTanhl1_integ_fc0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_15/Tanh?
IdentityIdentityactivation_15/Tanh:y:0$^l1_integ_fc0/BiasAdd/ReadVariableOp#^l1_integ_fc0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 2J
#l1_integ_fc0/BiasAdd/ReadVariableOp#l1_integ_fc0/BiasAdd/ReadVariableOp2H
"l1_integ_fc0/MatMul/ReadVariableOp"l1_integ_fc0/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
?
.__inference_l3_integration_layer_call_fn_54097
l1_integ_fc0_input
unknown:&
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll1_integ_fc0_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_l3_integration_layer_call_and_return_conditional_losses_540902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:?????????&
,
_user_specified_namel1_integ_fc0_input
?	
?
G__inference_l1_integ_fc0_layer_call_and_return_conditional_losses_54240

inputs0
matmul_readvariableop_resource:&-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
I
-__inference_activation_15_layer_call_fn_54245

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_540872
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
!__inference__traced_restore_54295
file_prefix6
$assignvariableop_l1_integ_fc0_kernel:&2
$assignvariableop_1_l1_integ_fc0_bias:

identity_3??AssignVariableOp?AssignVariableOp_1?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp$assignvariableop_l1_integ_fc0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp$assignvariableop_1_l1_integ_fc0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_2?

Identity_3IdentityIdentity_2:output:0^AssignVariableOp^AssignVariableOp_1*
T0*
_output_shapes
: 2

Identity_3"!

identity_3Identity_3:output:0*
_input_shapes
: : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
d
H__inference_activation_15_layer_call_and_return_conditional_losses_54250

inputs
identityN
TanhTanhinputs*
T0*'
_output_shapes
:?????????2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54221

inputs=
+l1_integ_fc0_matmul_readvariableop_resource:&:
,l1_integ_fc0_biasadd_readvariableop_resource:
identity??#l1_integ_fc0/BiasAdd/ReadVariableOp?"l1_integ_fc0/MatMul/ReadVariableOp?
"l1_integ_fc0/MatMul/ReadVariableOpReadVariableOp+l1_integ_fc0_matmul_readvariableop_resource*
_output_shapes

:&*
dtype02$
"l1_integ_fc0/MatMul/ReadVariableOp?
l1_integ_fc0/MatMulMatMulinputs*l1_integ_fc0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l1_integ_fc0/MatMul?
#l1_integ_fc0/BiasAdd/ReadVariableOpReadVariableOp,l1_integ_fc0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#l1_integ_fc0/BiasAdd/ReadVariableOp?
l1_integ_fc0/BiasAddBiasAddl1_integ_fc0/MatMul:product:0+l1_integ_fc0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l1_integ_fc0/BiasAdd?
activation_15/TanhTanhl1_integ_fc0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_15/Tanh?
IdentityIdentityactivation_15/Tanh:y:0$^l1_integ_fc0/BiasAdd/ReadVariableOp#^l1_integ_fc0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 2J
#l1_integ_fc0/BiasAdd/ReadVariableOp#l1_integ_fc0/BiasAdd/ReadVariableOp2H
"l1_integ_fc0/MatMul/ReadVariableOp"l1_integ_fc0/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54160
l1_integ_fc0_input$
l1_integ_fc0_54153:& 
l1_integ_fc0_54155:
identity??$l1_integ_fc0/StatefulPartitionedCall?
$l1_integ_fc0/StatefulPartitionedCallStatefulPartitionedCalll1_integ_fc0_inputl1_integ_fc0_54153l1_integ_fc0_54155*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l1_integ_fc0_layer_call_and_return_conditional_losses_540762&
$l1_integ_fc0/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall-l1_integ_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_540872
activation_15/PartitionedCall?
IdentityIdentity&activation_15/PartitionedCall:output:0%^l1_integ_fc0/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 2L
$l1_integ_fc0/StatefulPartitionedCall$l1_integ_fc0/StatefulPartitionedCall:[ W
'
_output_shapes
:?????????&
,
_user_specified_namel1_integ_fc0_input
?
?
,__inference_l1_integ_fc0_layer_call_fn_54230

inputs
unknown:&
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l1_integ_fc0_layer_call_and_return_conditional_losses_540762
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
?
.__inference_l3_integration_layer_call_fn_54190

inputs
unknown:&
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_l3_integration_layer_call_and_return_conditional_losses_540902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?	
?
G__inference_l1_integ_fc0_layer_call_and_return_conditional_losses_54076

inputs0
matmul_readvariableop_resource:&-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:&*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
?
.__inference_l3_integration_layer_call_fn_54199

inputs
unknown:&
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_l3_integration_layer_call_and_return_conditional_losses_541342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54134

inputs$
l1_integ_fc0_54127:& 
l1_integ_fc0_54129:
identity??$l1_integ_fc0/StatefulPartitionedCall?
$l1_integ_fc0/StatefulPartitionedCallStatefulPartitionedCallinputsl1_integ_fc0_54127l1_integ_fc0_54129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l1_integ_fc0_layer_call_and_return_conditional_losses_540762&
$l1_integ_fc0/StatefulPartitionedCall?
activation_15/PartitionedCallPartitionedCall-l1_integ_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_15_layer_call_and_return_conditional_losses_540872
activation_15/PartitionedCall?
IdentityIdentity&activation_15/PartitionedCall:output:0%^l1_integ_fc0/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????&: : 2L
$l1_integ_fc0/StatefulPartitionedCall$l1_integ_fc0/StatefulPartitionedCall:O K
'
_output_shapes
:?????????&
 
_user_specified_nameinputs
?
?
__inference__traced_save_54279
file_prefix2
.savev2_l1_integ_fc0_kernel_read_readvariableop0
,savev2_l1_integ_fc0_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_l1_integ_fc0_kernel_read_readvariableop,savev2_l1_integ_fc0_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
: :&:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:&: 

_output_shapes
::

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Q
l1_integ_fc0_input;
$serving_default_l1_integ_fc0_input:0?????????&A
activation_150
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?T
?
layer_with_weights-0
layer-0
layer-1
trainable_variables
	variables
regularization_losses
	keras_api

signatures
!__call__
"_default_save_signature
*#&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"name": "l3_integration", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "l3_integration", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 38]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l1_integ_fc0_input"}}, {"class_name": "Dense", "config": {"name": "l1_integ_fc0", "trainable": true, "dtype": "float32", "units": 30, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "tanh"}}]}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 38}}, "shared_object_id": 6}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 38]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 38]}, "float32", "l1_integ_fc0_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "l3_integration", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 38]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l1_integ_fc0_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "l1_integ_fc0", "trainable": true, "dtype": "float32", "units": 30, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "tanh"}, "shared_object_id": 4}]}}}
?

kernel
	bias

trainable_variables
	variables
regularization_losses
	keras_api
$__call__
*%&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "l1_integ_fc0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "l1_integ_fc0", "trainable": true, "dtype": "float32", "units": 30, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 38}}, "shared_object_id": 6}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 38]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
&__call__
*'&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "activation_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_15", "trainable": true, "dtype": "float32", "activation": "tanh"}, "shared_object_id": 4}
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
layer_metrics
metrics
regularization_losses
layer_regularization_losses

layers
non_trainable_variables
!__call__
"_default_save_signature
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
,
(serving_default"
signature_map
%:#&2l1_integ_fc0/kernel
:2l1_integ_fc0/bias
.
0
	1"
trackable_list_wrapper
.
0
	1"
trackable_list_wrapper
 "
trackable_list_wrapper
?

trainable_variables
	variables
layer_metrics
metrics
regularization_losses
layer_regularization_losses

layers
non_trainable_variables
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
layer_metrics
metrics
regularization_losses
layer_regularization_losses

layers
 non_trainable_variables
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?2?
.__inference_l3_integration_layer_call_fn_54097
.__inference_l3_integration_layer_call_fn_54190
.__inference_l3_integration_layer_call_fn_54199
.__inference_l3_integration_layer_call_fn_54150?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_54059?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *1?.
,?)
l1_integ_fc0_input?????????&
?2?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54210
I__inference_l3_integration_layer_call_and_return_conditional_losses_54221
I__inference_l3_integration_layer_call_and_return_conditional_losses_54160
I__inference_l3_integration_layer_call_and_return_conditional_losses_54170?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_l1_integ_fc0_layer_call_fn_54230?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_l1_integ_fc0_layer_call_and_return_conditional_losses_54240?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_activation_15_layer_call_fn_54245?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_activation_15_layer_call_and_return_conditional_losses_54250?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_54181l1_integ_fc0_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_54059?	;?8
1?.
,?)
l1_integ_fc0_input?????????&
? "=?:
8
activation_15'?$
activation_15??????????
H__inference_activation_15_layer_call_and_return_conditional_losses_54250X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
-__inference_activation_15_layer_call_fn_54245K/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_l1_integ_fc0_layer_call_and_return_conditional_losses_54240\	/?,
%?"
 ?
inputs?????????&
? "%?"
?
0?????????
? 
,__inference_l1_integ_fc0_layer_call_fn_54230O	/?,
%?"
 ?
inputs?????????&
? "???????????
I__inference_l3_integration_layer_call_and_return_conditional_losses_54160p	C?@
9?6
,?)
l1_integ_fc0_input?????????&
p 

 
? "%?"
?
0?????????
? ?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54170p	C?@
9?6
,?)
l1_integ_fc0_input?????????&
p

 
? "%?"
?
0?????????
? ?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54210d	7?4
-?*
 ?
inputs?????????&
p 

 
? "%?"
?
0?????????
? ?
I__inference_l3_integration_layer_call_and_return_conditional_losses_54221d	7?4
-?*
 ?
inputs?????????&
p

 
? "%?"
?
0?????????
? ?
.__inference_l3_integration_layer_call_fn_54097c	C?@
9?6
,?)
l1_integ_fc0_input?????????&
p 

 
? "???????????
.__inference_l3_integration_layer_call_fn_54150c	C?@
9?6
,?)
l1_integ_fc0_input?????????&
p

 
? "???????????
.__inference_l3_integration_layer_call_fn_54190W	7?4
-?*
 ?
inputs?????????&
p 

 
? "???????????
.__inference_l3_integration_layer_call_fn_54199W	7?4
-?*
 ?
inputs?????????&
p

 
? "???????????
#__inference_signature_wrapper_54181?	Q?N
? 
G?D
B
l1_integ_fc0_input,?)
l1_integ_fc0_input?????????&"=?:
8
activation_15'?$
activation_15?????????