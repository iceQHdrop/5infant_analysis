Ϋ
??
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.3.12v2.3.0-54-gfcc4b966f18??
?
"l5_integration/l3_integ_fc0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"l5_integration/l3_integ_fc0/kernel
?
6l5_integration/l3_integ_fc0/kernel/Read/ReadVariableOpReadVariableOp"l5_integration/l3_integ_fc0/kernel*
_output_shapes

:*
dtype0
?
 l5_integration/l3_integ_fc0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" l5_integration/l3_integ_fc0/bias
?
4l5_integration/l3_integ_fc0/bias/Read/ReadVariableOpReadVariableOp l5_integration/l3_integ_fc0/bias*
_output_shapes
:*
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
	variables
regularization_losses
trainable_variables
	keras_api

signatures
|
_inbound_nodes

	kernel

bias
	variables
regularization_losses
trainable_variables
	keras_api
f
_inbound_nodes
	variables
regularization_losses
trainable_variables
	keras_api

	0

1
 

	0

1
?
layer_regularization_losses
metrics

layers
layer_metrics
	variables
regularization_losses
trainable_variables
non_trainable_variables
 
 
nl
VARIABLE_VALUE"l5_integration/l3_integ_fc0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE l5_integration/l3_integ_fc0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

	0

1
 

	0

1
?
layer_regularization_losses
metrics

layers
layer_metrics
	variables
regularization_losses
trainable_variables
non_trainable_variables
 
 
 
 
?
layer_regularization_losses
metrics

 layers
!layer_metrics
	variables
regularization_losses
trainable_variables
"non_trainable_variables
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
 
?
"serving_default_l3_integ_fc0_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall"serving_default_l3_integ_fc0_input"l5_integration/l3_integ_fc0/kernel l5_integration/l3_integ_fc0/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_61567
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename6l5_integration/l3_integ_fc0/kernel/Read/ReadVariableOp4l5_integration/l3_integ_fc0/bias/Read/ReadVariableOpConst*
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
__inference__traced_save_61665
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename"l5_integration/l3_integ_fc0/kernel l5_integration/l3_integ_fc0/bias*
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
!__inference__traced_restore_61681Ҹ
?
?
G__inference_l3_integ_fc0_layer_call_and_return_conditional_losses_61617

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_activation_23_layer_call_and_return_conditional_losses_61498

inputs
identityN
TanhTanhinputs*
T0*'
_output_shapes
:?????????2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_l5_integration_layer_call_fn_61598

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_l5_integration_layer_call_and_return_conditional_losses_615302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_l3_integ_fc0_layer_call_and_return_conditional_losses_61477

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61549

inputs
l3_integ_fc0_61542
l3_integ_fc0_61544
identity??$l3_integ_fc0/StatefulPartitionedCall?
$l3_integ_fc0/StatefulPartitionedCallStatefulPartitionedCallinputsl3_integ_fc0_61542l3_integ_fc0_61544*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l3_integ_fc0_layer_call_and_return_conditional_losses_614772&
$l3_integ_fc0/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall-l3_integ_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_614982
activation_23/PartitionedCall?
IdentityIdentity&activation_23/PartitionedCall:output:0%^l3_integ_fc0/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2L
$l3_integ_fc0/StatefulPartitionedCall$l3_integ_fc0/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
I
-__inference_activation_23_layer_call_fn_61636

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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_614982
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_l5_integration_layer_call_fn_61537
l3_integ_fc0_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll3_integ_fc0_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_l5_integration_layer_call_and_return_conditional_losses_615302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namel3_integ_fc0_input
?
?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61517
l3_integ_fc0_input
l3_integ_fc0_61510
l3_integ_fc0_61512
identity??$l3_integ_fc0/StatefulPartitionedCall?
$l3_integ_fc0/StatefulPartitionedCallStatefulPartitionedCalll3_integ_fc0_inputl3_integ_fc0_61510l3_integ_fc0_61512*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l3_integ_fc0_layer_call_and_return_conditional_losses_614772&
$l3_integ_fc0/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall-l3_integ_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_614982
activation_23/PartitionedCall?
IdentityIdentity&activation_23/PartitionedCall:output:0%^l3_integ_fc0/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2L
$l3_integ_fc0/StatefulPartitionedCall$l3_integ_fc0/StatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namel3_integ_fc0_input
?
?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61530

inputs
l3_integ_fc0_61523
l3_integ_fc0_61525
identity??$l3_integ_fc0/StatefulPartitionedCall?
$l3_integ_fc0/StatefulPartitionedCallStatefulPartitionedCallinputsl3_integ_fc0_61523l3_integ_fc0_61525*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l3_integ_fc0_layer_call_and_return_conditional_losses_614772&
$l3_integ_fc0/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall-l3_integ_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_614982
activation_23/PartitionedCall?
IdentityIdentity&activation_23/PartitionedCall:output:0%^l3_integ_fc0/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2L
$l3_integ_fc0/StatefulPartitionedCall$l3_integ_fc0/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_l5_integration_layer_call_fn_61556
l3_integ_fc0_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll3_integ_fc0_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_l5_integration_layer_call_and_return_conditional_losses_615492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namel3_integ_fc0_input
?
?
!__inference__traced_restore_61681
file_prefix7
3assignvariableop_l5_integration_l3_integ_fc0_kernel7
3assignvariableop_1_l5_integration_l3_integ_fc0_bias

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
AssignVariableOpAssignVariableOp3assignvariableop_l5_integration_l3_integ_fc0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp3assignvariableop_1_l5_integration_l3_integ_fc0_biasIdentity_1:output:0"/device:CPU:0*
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

identity_3Identity_3:output:0*
_input_shapes

: ::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
__inference__traced_save_61665
file_prefixA
=savev2_l5_integration_l3_integ_fc0_kernel_read_readvariableop?
;savev2_l5_integration_l3_integ_fc0_bias_read_readvariableop
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
Const?
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_11801ef9db684e608456f3e4e1e9316f/part2	
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0=savev2_l5_integration_l3_integ_fc0_kernel_read_readvariableop;savev2_l5_integration_l3_integ_fc0_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
: ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?
?
,__inference_l3_integ_fc0_layer_call_fn_61626

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l3_integ_fc0_layer_call_and_return_conditional_losses_614772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_activation_23_layer_call_and_return_conditional_losses_61631

inputs
identityN
TanhTanhinputs*
T0*'
_output_shapes
:?????????2
Tanh\
IdentityIdentityTanh:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_61567
l3_integ_fc0_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll3_integ_fc0_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_614632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namel3_integ_fc0_input
?

?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61578

inputs/
+l3_integ_fc0_matmul_readvariableop_resource0
,l3_integ_fc0_biasadd_readvariableop_resource
identity??
"l3_integ_fc0/MatMul/ReadVariableOpReadVariableOp+l3_integ_fc0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"l3_integ_fc0/MatMul/ReadVariableOp?
l3_integ_fc0/MatMulMatMulinputs*l3_integ_fc0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l3_integ_fc0/MatMul?
#l3_integ_fc0/BiasAdd/ReadVariableOpReadVariableOp,l3_integ_fc0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#l3_integ_fc0/BiasAdd/ReadVariableOp?
l3_integ_fc0/BiasAddBiasAddl3_integ_fc0/MatMul:product:0+l3_integ_fc0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l3_integ_fc0/BiasAdd?
activation_23/TanhTanhl3_integ_fc0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_23/Tanhj
IdentityIdentityactivation_23/Tanh:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61589

inputs/
+l3_integ_fc0_matmul_readvariableop_resource0
,l3_integ_fc0_biasadd_readvariableop_resource
identity??
"l3_integ_fc0/MatMul/ReadVariableOpReadVariableOp+l3_integ_fc0_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"l3_integ_fc0/MatMul/ReadVariableOp?
l3_integ_fc0/MatMulMatMulinputs*l3_integ_fc0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l3_integ_fc0/MatMul?
#l3_integ_fc0/BiasAdd/ReadVariableOpReadVariableOp,l3_integ_fc0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#l3_integ_fc0/BiasAdd/ReadVariableOp?
l3_integ_fc0/BiasAddBiasAddl3_integ_fc0/MatMul:product:0+l3_integ_fc0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l3_integ_fc0/BiasAdd?
activation_23/TanhTanhl3_integ_fc0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_23/Tanhj
IdentityIdentityactivation_23/Tanh:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
 __inference__wrapped_model_61463
l3_integ_fc0_input>
:l5_integration_l3_integ_fc0_matmul_readvariableop_resource?
;l5_integration_l3_integ_fc0_biasadd_readvariableop_resource
identity??
1l5_integration/l3_integ_fc0/MatMul/ReadVariableOpReadVariableOp:l5_integration_l3_integ_fc0_matmul_readvariableop_resource*
_output_shapes

:*
dtype023
1l5_integration/l3_integ_fc0/MatMul/ReadVariableOp?
"l5_integration/l3_integ_fc0/MatMulMatMull3_integ_fc0_input9l5_integration/l3_integ_fc0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2$
"l5_integration/l3_integ_fc0/MatMul?
2l5_integration/l3_integ_fc0/BiasAdd/ReadVariableOpReadVariableOp;l5_integration_l3_integ_fc0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2l5_integration/l3_integ_fc0/BiasAdd/ReadVariableOp?
#l5_integration/l3_integ_fc0/BiasAddBiasAdd,l5_integration/l3_integ_fc0/MatMul:product:0:l5_integration/l3_integ_fc0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2%
#l5_integration/l3_integ_fc0/BiasAdd?
!l5_integration/activation_23/TanhTanh,l5_integration/l3_integ_fc0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2#
!l5_integration/activation_23/Tanhy
IdentityIdentity%l5_integration/activation_23/Tanh:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::[ W
'
_output_shapes
:?????????
,
_user_specified_namel3_integ_fc0_input
?
?
.__inference_l5_integration_layer_call_fn_61607

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_l5_integration_layer_call_and_return_conditional_losses_615492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61507
l3_integ_fc0_input
l3_integ_fc0_61488
l3_integ_fc0_61490
identity??$l3_integ_fc0/StatefulPartitionedCall?
$l3_integ_fc0/StatefulPartitionedCallStatefulPartitionedCalll3_integ_fc0_inputl3_integ_fc0_61488l3_integ_fc0_61490*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_l3_integ_fc0_layer_call_and_return_conditional_losses_614772&
$l3_integ_fc0/StatefulPartitionedCall?
activation_23/PartitionedCallPartitionedCall-l3_integ_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_23_layer_call_and_return_conditional_losses_614982
activation_23/PartitionedCall?
IdentityIdentity&activation_23/PartitionedCall:output:0%^l3_integ_fc0/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2L
$l3_integ_fc0/StatefulPartitionedCall$l3_integ_fc0/StatefulPartitionedCall:[ W
'
_output_shapes
:?????????
,
_user_specified_namel3_integ_fc0_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Q
l3_integ_fc0_input;
$serving_default_l3_integ_fc0_input:0?????????A
activation_230
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?Q
?
layer_with_weights-0
layer-0
layer-1
	variables
regularization_losses
trainable_variables
	keras_api

signatures
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature"?
_tf_keras_sequential?{"class_name": "Sequential", "name": "l5_integration", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "l5_integration", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l3_integ_fc0_input"}}, {"class_name": "Dense", "config": {"name": "l3_integ_fc0", "trainable": true, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "tanh"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "l5_integration", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l3_integ_fc0_input"}}, {"class_name": "Dense", "config": {"name": "l3_integ_fc0", "trainable": true, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "tanh"}}]}}}
?
_inbound_nodes

	kernel

bias
	variables
regularization_losses
trainable_variables
	keras_api
&__call__
*'&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "l3_integ_fc0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "l3_integ_fc0", "trainable": true, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 20}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20]}}
?
_inbound_nodes
	variables
regularization_losses
trainable_variables
	keras_api
(__call__
*)&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_23", "trainable": true, "dtype": "float32", "activation": "tanh"}}
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
?
layer_regularization_losses
metrics

layers
layer_metrics
	variables
regularization_losses
trainable_variables
non_trainable_variables
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
,
*serving_default"
signature_map
 "
trackable_list_wrapper
4:22"l5_integration/l3_integ_fc0/kernel
.:,2 l5_integration/l3_integ_fc0/bias
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
?
layer_regularization_losses
metrics

layers
layer_metrics
	variables
regularization_losses
trainable_variables
non_trainable_variables
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
layer_regularization_losses
metrics

 layers
!layer_metrics
	variables
regularization_losses
trainable_variables
"non_trainable_variables
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
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
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?2?
.__inference_l5_integration_layer_call_fn_61607
.__inference_l5_integration_layer_call_fn_61598
.__inference_l5_integration_layer_call_fn_61556
.__inference_l5_integration_layer_call_fn_61537?
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
?2?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61517
I__inference_l5_integration_layer_call_and_return_conditional_losses_61589
I__inference_l5_integration_layer_call_and_return_conditional_losses_61507
I__inference_l5_integration_layer_call_and_return_conditional_losses_61578?
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
 __inference__wrapped_model_61463?
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
l3_integ_fc0_input?????????
?2?
,__inference_l3_integ_fc0_layer_call_fn_61626?
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
G__inference_l3_integ_fc0_layer_call_and_return_conditional_losses_61617?
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
-__inference_activation_23_layer_call_fn_61636?
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
H__inference_activation_23_layer_call_and_return_conditional_losses_61631?
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
=B;
#__inference_signature_wrapper_61567l3_integ_fc0_input?
 __inference__wrapped_model_61463?	
;?8
1?.
,?)
l3_integ_fc0_input?????????
? "=?:
8
activation_23'?$
activation_23??????????
H__inference_activation_23_layer_call_and_return_conditional_losses_61631X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
-__inference_activation_23_layer_call_fn_61636K/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_l3_integ_fc0_layer_call_and_return_conditional_losses_61617\	
/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? 
,__inference_l3_integ_fc0_layer_call_fn_61626O	
/?,
%?"
 ?
inputs?????????
? "???????????
I__inference_l5_integration_layer_call_and_return_conditional_losses_61507p	
C?@
9?6
,?)
l3_integ_fc0_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61517p	
C?@
9?6
,?)
l3_integ_fc0_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61578d	
7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_l5_integration_layer_call_and_return_conditional_losses_61589d	
7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
.__inference_l5_integration_layer_call_fn_61537c	
C?@
9?6
,?)
l3_integ_fc0_input?????????
p

 
? "???????????
.__inference_l5_integration_layer_call_fn_61556c	
C?@
9?6
,?)
l3_integ_fc0_input?????????
p 

 
? "???????????
.__inference_l5_integration_layer_call_fn_61598W	
7?4
-?*
 ?
inputs?????????
p

 
? "???????????
.__inference_l5_integration_layer_call_fn_61607W	
7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
#__inference_signature_wrapper_61567?	
Q?N
? 
G?D
B
l3_integ_fc0_input,?)
l3_integ_fc0_input?????????"=?:
8
activation_23'?$
activation_23?????????