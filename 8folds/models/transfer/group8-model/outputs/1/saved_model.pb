ʊ
??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
v
l3o_fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namel3o_fc/kernel
o
!l3o_fc/kernel/Read/ReadVariableOpReadVariableOpl3o_fc/kernel*
_output_shapes

:
*
dtype0
n
l3o_fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namel3o_fc/bias
g
l3o_fc/bias/Read/ReadVariableOpReadVariableOpl3o_fc/bias*
_output_shapes
:
*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
		variables

regularization_losses
trainable_variables
	keras_api

0
1
 

0
1
?

layers
layer_metrics
	variables
layer_regularization_losses
regularization_losses
trainable_variables
metrics
non_trainable_variables
 
YW
VARIABLE_VALUEl3o_fc/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEl3o_fc/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

layers
layer_metrics
		variables
layer_regularization_losses

regularization_losses
trainable_variables
metrics
non_trainable_variables

0
 
 
 
 
 
 
 
 
 

serving_default_l3o_fc_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_l3o_fc_inputl3o_fc/kernell3o_fc/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_105066
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!l3o_fc/kernel/Read/ReadVariableOpl3o_fc/bias/Read/ReadVariableOpConst*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_105152
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamel3o_fc/kernell3o_fc/bias*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_105168ɤ
?
?
!__inference__wrapped_model_104960
l3o_fc_input;
)l3o_l3o_fc_matmul_readvariableop_resource:
8
*l3o_l3o_fc_biasadd_readvariableop_resource:

identity??!l3o/l3o_fc/BiasAdd/ReadVariableOp? l3o/l3o_fc/MatMul/ReadVariableOp?
 l3o/l3o_fc/MatMul/ReadVariableOpReadVariableOp)l3o_l3o_fc_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02"
 l3o/l3o_fc/MatMul/ReadVariableOp?
l3o/l3o_fc/MatMulMatMull3o_fc_input(l3o/l3o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
l3o/l3o_fc/MatMul?
!l3o/l3o_fc/BiasAdd/ReadVariableOpReadVariableOp*l3o_l3o_fc_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02#
!l3o/l3o_fc/BiasAdd/ReadVariableOp?
l3o/l3o_fc/BiasAddBiasAddl3o/l3o_fc/MatMul:product:0)l3o/l3o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
l3o/l3o_fc/BiasAdd?
IdentityIdentityl3o/l3o_fc/BiasAdd:output:0"^l3o/l3o_fc/BiasAdd/ReadVariableOp!^l3o/l3o_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2F
!l3o/l3o_fc/BiasAdd/ReadVariableOp!l3o/l3o_fc/BiasAdd/ReadVariableOp2D
 l3o/l3o_fc/MatMul/ReadVariableOp l3o/l3o_fc/MatMul/ReadVariableOp:U Q
'
_output_shapes
:?????????
&
_user_specified_namel3o_fc_input
?
?
$__inference_l3o_layer_call_fn_105037
l3o_fc_input
unknown:

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_l3o_layer_call_and_return_conditional_losses_1050212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel3o_fc_input
?
?
'__inference_l3o_fc_layer_call_fn_105113

inputs
unknown:

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_l3o_fc_layer_call_and_return_conditional_losses_1049772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
?__inference_l3o_layer_call_and_return_conditional_losses_104984

inputs
l3o_fc_104978:

l3o_fc_104980:

identity??l3o_fc/StatefulPartitionedCall?
l3o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl3o_fc_104978l3o_fc_104980*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_l3o_fc_layer_call_and_return_conditional_losses_1049772 
l3o_fc/StatefulPartitionedCall?
IdentityIdentity'l3o_fc/StatefulPartitionedCall:output:0^l3o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
l3o_fc/StatefulPartitionedCalll3o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_105066
l3o_fc_input
unknown:

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_1049602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel3o_fc_input
?

?
?__inference_l3o_layer_call_and_return_conditional_losses_105094

inputs7
%l3o_fc_matmul_readvariableop_resource:
4
&l3o_fc_biasadd_readvariableop_resource:

identity??l3o_fc/BiasAdd/ReadVariableOp?l3o_fc/MatMul/ReadVariableOp?
l3o_fc/MatMul/ReadVariableOpReadVariableOp%l3o_fc_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
l3o_fc/MatMul/ReadVariableOp?
l3o_fc/MatMulMatMulinputs$l3o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
l3o_fc/MatMul?
l3o_fc/BiasAdd/ReadVariableOpReadVariableOp&l3o_fc_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
l3o_fc/BiasAdd/ReadVariableOp?
l3o_fc/BiasAddBiasAddl3o_fc/MatMul:product:0%l3o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
l3o_fc/BiasAdd?
IdentityIdentityl3o_fc/BiasAdd:output:0^l3o_fc/BiasAdd/ReadVariableOp^l3o_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2>
l3o_fc/BiasAdd/ReadVariableOpl3o_fc/BiasAdd/ReadVariableOp2<
l3o_fc/MatMul/ReadVariableOpl3o_fc/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
"__inference__traced_restore_105168
file_prefix0
assignvariableop_l3o_fc_kernel:
,
assignvariableop_1_l3o_fc_bias:


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
AssignVariableOpAssignVariableOpassignvariableop_l3o_fc_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_l3o_fc_biasIdentity_1:output:0"/device:CPU:0*
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
?	
?
B__inference_l3o_fc_layer_call_and_return_conditional_losses_105123

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_l3o_layer_call_fn_104991
l3o_fc_input
unknown:

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_l3o_layer_call_and_return_conditional_losses_1049842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel3o_fc_input
?
?
?__inference_l3o_layer_call_and_return_conditional_losses_105046
l3o_fc_input
l3o_fc_105040:

l3o_fc_105042:

identity??l3o_fc/StatefulPartitionedCall?
l3o_fc/StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputl3o_fc_105040l3o_fc_105042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_l3o_fc_layer_call_and_return_conditional_losses_1049772 
l3o_fc/StatefulPartitionedCall?
IdentityIdentity'l3o_fc/StatefulPartitionedCall:output:0^l3o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
l3o_fc/StatefulPartitionedCalll3o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel3o_fc_input
?
?
?__inference_l3o_layer_call_and_return_conditional_losses_105021

inputs
l3o_fc_105015:

l3o_fc_105017:

identity??l3o_fc/StatefulPartitionedCall?
l3o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl3o_fc_105015l3o_fc_105017*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_l3o_fc_layer_call_and_return_conditional_losses_1049772 
l3o_fc/StatefulPartitionedCall?
IdentityIdentity'l3o_fc/StatefulPartitionedCall:output:0^l3o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
l3o_fc/StatefulPartitionedCalll3o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_l3o_layer_call_fn_105075

inputs
unknown:

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_l3o_layer_call_and_return_conditional_losses_1049842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
B__inference_l3o_fc_layer_call_and_return_conditional_losses_104977

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_l3o_layer_call_fn_105084

inputs
unknown:

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_l3o_layer_call_and_return_conditional_losses_1050212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__traced_save_105152
file_prefix,
(savev2_l3o_fc_kernel_read_readvariableop*
&savev2_l3o_fc_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_l3o_fc_kernel_read_readvariableop&savev2_l3o_fc_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
: :
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
:
:

_output_shapes
: 
?
?
?__inference_l3o_layer_call_and_return_conditional_losses_105055
l3o_fc_input
l3o_fc_105049:

l3o_fc_105051:

identity??l3o_fc/StatefulPartitionedCall?
l3o_fc/StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputl3o_fc_105049l3o_fc_105051*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_l3o_fc_layer_call_and_return_conditional_losses_1049772 
l3o_fc/StatefulPartitionedCall?
IdentityIdentity'l3o_fc/StatefulPartitionedCall:output:0^l3o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2@
l3o_fc/StatefulPartitionedCalll3o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel3o_fc_input
?

?
?__inference_l3o_layer_call_and_return_conditional_losses_105104

inputs7
%l3o_fc_matmul_readvariableop_resource:
4
&l3o_fc_biasadd_readvariableop_resource:

identity??l3o_fc/BiasAdd/ReadVariableOp?l3o_fc/MatMul/ReadVariableOp?
l3o_fc/MatMul/ReadVariableOpReadVariableOp%l3o_fc_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
l3o_fc/MatMul/ReadVariableOp?
l3o_fc/MatMulMatMulinputs$l3o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
l3o_fc/MatMul?
l3o_fc/BiasAdd/ReadVariableOpReadVariableOp&l3o_fc_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
l3o_fc/BiasAdd/ReadVariableOp?
l3o_fc/BiasAddBiasAddl3o_fc/MatMul:product:0%l3o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
l3o_fc/BiasAdd?
IdentityIdentityl3o_fc/BiasAdd:output:0^l3o_fc/BiasAdd/ReadVariableOp^l3o_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2>
l3o_fc/BiasAdd/ReadVariableOpl3o_fc/BiasAdd/ReadVariableOp2<
l3o_fc/MatMul/ReadVariableOpl3o_fc/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
l3o_fc_input5
serving_default_l3o_fc_input:0?????????:
l3o_fc0
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:?A
?
layer_with_weights-0
layer-0
	variables
regularization_losses
trainable_variables
	keras_api

signatures
__call__
_default_save_signature
*&call_and_return_all_conditional_losses"?
_tf_keras_sequential?{"name": "l3o", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "l3o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l3o_fc_input"}}, {"class_name": "Dense", "config": {"name": "l3o_fc", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 30}}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 30]}, "float32", "l3o_fc_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "l3o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l3o_fc_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "l3o_fc", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}]}}}
?

kernel
bias
		variables

regularization_losses
trainable_variables
	keras_api
__call__
*&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "l3o_fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "l3o_fc", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 30}}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30]}}
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

layers
layer_metrics
	variables
layer_regularization_losses
regularization_losses
trainable_variables
metrics
non_trainable_variables
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
:
2l3o_fc/kernel
:
2l3o_fc/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

layers
layer_metrics
		variables
layer_regularization_losses

regularization_losses
trainable_variables
metrics
non_trainable_variables
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
'
0"
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
?2?
$__inference_l3o_layer_call_fn_104991
$__inference_l3o_layer_call_fn_105075
$__inference_l3o_layer_call_fn_105084
$__inference_l3o_layer_call_fn_105037?
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
!__inference__wrapped_model_104960?
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
annotations? *+?(
&?#
l3o_fc_input?????????
?2?
?__inference_l3o_layer_call_and_return_conditional_losses_105094
?__inference_l3o_layer_call_and_return_conditional_losses_105104
?__inference_l3o_layer_call_and_return_conditional_losses_105046
?__inference_l3o_layer_call_and_return_conditional_losses_105055?
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
'__inference_l3o_fc_layer_call_fn_105113?
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
B__inference_l3o_fc_layer_call_and_return_conditional_losses_105123?
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
$__inference_signature_wrapper_105066l3o_fc_input"?
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
!__inference__wrapped_model_104960l5?2
+?(
&?#
l3o_fc_input?????????
? "/?,
*
l3o_fc ?
l3o_fc?????????
?
B__inference_l3o_fc_layer_call_and_return_conditional_losses_105123\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????

? z
'__inference_l3o_fc_layer_call_fn_105113O/?,
%?"
 ?
inputs?????????
? "??????????
?
?__inference_l3o_layer_call_and_return_conditional_losses_105046j=?:
3?0
&?#
l3o_fc_input?????????
p 

 
? "%?"
?
0?????????

? ?
?__inference_l3o_layer_call_and_return_conditional_losses_105055j=?:
3?0
&?#
l3o_fc_input?????????
p

 
? "%?"
?
0?????????

? ?
?__inference_l3o_layer_call_and_return_conditional_losses_105094d7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
?__inference_l3o_layer_call_and_return_conditional_losses_105104d7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????

? ?
$__inference_l3o_layer_call_fn_104991]=?:
3?0
&?#
l3o_fc_input?????????
p 

 
? "??????????
?
$__inference_l3o_layer_call_fn_105037]=?:
3?0
&?#
l3o_fc_input?????????
p

 
? "??????????

$__inference_l3o_layer_call_fn_105075W7?4
-?*
 ?
inputs?????????
p 

 
? "??????????

$__inference_l3o_layer_call_fn_105084W7?4
-?*
 ?
inputs?????????
p

 
? "??????????
?
$__inference_signature_wrapper_105066|E?B
? 
;?8
6
l3o_fc_input&?#
l3o_fc_input?????????"/?,
*
l3o_fc ?
l3o_fc?????????
