??
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
~
l5o/l5o_fc/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namel5o/l5o_fc/kernel
w
%l5o/l5o_fc/kernel/Read/ReadVariableOpReadVariableOpl5o/l5o_fc/kernel*
_output_shapes

:*
dtype0
v
l5o/l5o_fc/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namel5o/l5o_fc/bias
o
#l5o/l5o_fc/bias/Read/ReadVariableOpReadVariableOpl5o/l5o_fc/bias*
_output_shapes
:*
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
][
VARIABLE_VALUEl5o/l5o_fc/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEl5o/l5o_fc/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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

serving_default_l5o_fc_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_l5o_fc_inputl5o/l5o_fc/kernell5o/l5o_fc/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_61818
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%l5o/l5o_fc/kernel/Read/ReadVariableOp#l5o/l5o_fc/bias/Read/ReadVariableOpConst*
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
__inference__traced_save_61916
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamel5o/l5o_fc/kernell5o/l5o_fc/bias*
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
!__inference__traced_restore_61932ѯ
?
~
#__inference_l5o_layer_call_fn_61807
l5o_fc_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll5o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l5o_layer_call_and_return_conditional_losses_618002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel5o_fc_input
?

?
>__inference_l5o_layer_call_and_return_conditional_losses_61781

inputs
l5o_fc_61774
l5o_fc_61776
identity??l5o_fc/StatefulPartitionedCall?
l5o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl5o_fc_61774l5o_fc_61776*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l5o_fc_layer_call_and_return_conditional_losses_617282 
l5o_fc/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall'l5o_fc/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_29_layer_call_and_return_conditional_losses_617492
activation_29/PartitionedCall?
IdentityIdentity&activation_29/PartitionedCall:output:0^l5o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l5o_fc/StatefulPartitionedCalll5o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
#__inference_signature_wrapper_61818
l5o_fc_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll5o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_617142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel5o_fc_input
?
{
&__inference_l5o_fc_layer_call_fn_61877

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
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l5o_fc_layer_call_and_return_conditional_losses_617282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
!__inference__traced_restore_61932
file_prefix&
"assignvariableop_l5o_l5o_fc_kernel&
"assignvariableop_1_l5o_l5o_fc_bias

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
AssignVariableOpAssignVariableOp"assignvariableop_l5o_l5o_fc_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_l5o_l5o_fc_biasIdentity_1:output:0"/device:CPU:0*
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
?

?
>__inference_l5o_layer_call_and_return_conditional_losses_61800

inputs
l5o_fc_61793
l5o_fc_61795
identity??l5o_fc/StatefulPartitionedCall?
l5o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl5o_fc_61793l5o_fc_61795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l5o_fc_layer_call_and_return_conditional_losses_617282 
l5o_fc/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall'l5o_fc/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_29_layer_call_and_return_conditional_losses_617492
activation_29/PartitionedCall?
IdentityIdentity&activation_29/PartitionedCall:output:0^l5o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l5o_fc/StatefulPartitionedCalll5o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_activation_29_layer_call_and_return_conditional_losses_61749

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_l5o_layer_call_and_return_conditional_losses_61768
l5o_fc_input
l5o_fc_61761
l5o_fc_61763
identity??l5o_fc/StatefulPartitionedCall?
l5o_fc/StatefulPartitionedCallStatefulPartitionedCalll5o_fc_inputl5o_fc_61761l5o_fc_61763*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l5o_fc_layer_call_and_return_conditional_losses_617282 
l5o_fc/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall'l5o_fc/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_29_layer_call_and_return_conditional_losses_617492
activation_29/PartitionedCall?
IdentityIdentity&activation_29/PartitionedCall:output:0^l5o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l5o_fc/StatefulPartitionedCalll5o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel5o_fc_input
?
I
-__inference_activation_29_layer_call_fn_61887

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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_29_layer_call_and_return_conditional_losses_617492
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
~
#__inference_l5o_layer_call_fn_61788
l5o_fc_input
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalll5o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l5o_layer_call_and_return_conditional_losses_617812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel5o_fc_input
?	
?
>__inference_l5o_layer_call_and_return_conditional_losses_61840

inputs)
%l5o_fc_matmul_readvariableop_resource*
&l5o_fc_biasadd_readvariableop_resource
identity??
l5o_fc/MatMul/ReadVariableOpReadVariableOp%l5o_fc_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
l5o_fc/MatMul/ReadVariableOp?
l5o_fc/MatMulMatMulinputs$l5o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l5o_fc/MatMul?
l5o_fc/BiasAdd/ReadVariableOpReadVariableOp&l5o_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
l5o_fc/BiasAdd/ReadVariableOp?
l5o_fc/BiasAddBiasAddl5o_fc/MatMul:product:0%l5o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l5o_fc/BiasAdd?
activation_29/SigmoidSigmoidl5o_fc/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_29/Sigmoidm
IdentityIdentityactivation_29/Sigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
x
#__inference_l5o_layer_call_fn_61849

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
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l5o_layer_call_and_return_conditional_losses_617812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_l5o_fc_layer_call_and_return_conditional_losses_61868

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_l5o_layer_call_and_return_conditional_losses_61758
l5o_fc_input
l5o_fc_61739
l5o_fc_61741
identity??l5o_fc/StatefulPartitionedCall?
l5o_fc/StatefulPartitionedCallStatefulPartitionedCalll5o_fc_inputl5o_fc_61739l5o_fc_61741*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_l5o_fc_layer_call_and_return_conditional_losses_617282 
l5o_fc/StatefulPartitionedCall?
activation_29/PartitionedCallPartitionedCall'l5o_fc/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_activation_29_layer_call_and_return_conditional_losses_617492
activation_29/PartitionedCall?
IdentityIdentity&activation_29/PartitionedCall:output:0^l5o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::2@
l5o_fc/StatefulPartitionedCalll5o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_namel5o_fc_input
?
?
A__inference_l5o_fc_layer_call_and_return_conditional_losses_61728

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddd
IdentityIdentityBiasAdd:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
x
#__inference_l5o_layer_call_fn_61858

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
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_l5o_layer_call_and_return_conditional_losses_618002
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
 __inference__wrapped_model_61714
l5o_fc_input-
)l5o_l5o_fc_matmul_readvariableop_resource.
*l5o_l5o_fc_biasadd_readvariableop_resource
identity??
 l5o/l5o_fc/MatMul/ReadVariableOpReadVariableOp)l5o_l5o_fc_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 l5o/l5o_fc/MatMul/ReadVariableOp?
l5o/l5o_fc/MatMulMatMull5o_fc_input(l5o/l5o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l5o/l5o_fc/MatMul?
!l5o/l5o_fc/BiasAdd/ReadVariableOpReadVariableOp*l5o_l5o_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!l5o/l5o_fc/BiasAdd/ReadVariableOp?
l5o/l5o_fc/BiasAddBiasAddl5o/l5o_fc/MatMul:product:0)l5o/l5o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l5o/l5o_fc/BiasAdd?
l5o/activation_29/SigmoidSigmoidl5o/l5o_fc/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
l5o/activation_29/Sigmoidq
IdentityIdentityl5o/activation_29/Sigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::U Q
'
_output_shapes
:?????????
&
_user_specified_namel5o_fc_input
?
d
H__inference_activation_29_layer_call_and_return_conditional_losses_61882

inputs
identityW
SigmoidSigmoidinputs*
T0*'
_output_shapes
:?????????2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference__traced_save_61916
file_prefix0
,savev2_l5o_l5o_fc_kernel_read_readvariableop.
*savev2_l5o_l5o_fc_bias_read_readvariableop
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
value3B1 B+_temp_9c470adce13842948148b06a62ef24a2/part2	
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_l5o_l5o_fc_kernel_read_readvariableop*savev2_l5o_l5o_fc_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
: ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?	
?
>__inference_l5o_layer_call_and_return_conditional_losses_61829

inputs)
%l5o_fc_matmul_readvariableop_resource*
&l5o_fc_biasadd_readvariableop_resource
identity??
l5o_fc/MatMul/ReadVariableOpReadVariableOp%l5o_fc_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
l5o_fc/MatMul/ReadVariableOp?
l5o_fc/MatMulMatMulinputs$l5o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l5o_fc/MatMul?
l5o_fc/BiasAdd/ReadVariableOpReadVariableOp&l5o_fc_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
l5o_fc/BiasAdd/ReadVariableOp?
l5o_fc/BiasAddBiasAddl5o_fc/MatMul:product:0%l5o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
l5o_fc/BiasAdd?
activation_29/SigmoidSigmoidl5o_fc/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
activation_29/Sigmoidm
IdentityIdentityactivation_29/Sigmoid:y:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:::O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
l5o_fc_input5
serving_default_l5o_fc_input:0?????????A
activation_290
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?N
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
_tf_keras_sequential?{"class_name": "Sequential", "name": "l5o", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "l5o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 12]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l5o_fc_input"}}, {"class_name": "Dense", "config": {"name": "l5o_fc", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "l5o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 12]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l5o_fc_input"}}, {"class_name": "Dense", "config": {"name": "l5o_fc", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}]}}}
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
_tf_keras_layer?{"class_name": "Dense", "name": "l5o_fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "l5o_fc", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12]}}
?
_inbound_nodes
	variables
regularization_losses
trainable_variables
	keras_api
(__call__
*)&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Activation", "name": "activation_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_29", "trainable": true, "dtype": "float32", "activation": "sigmoid"}}
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
#:!2l5o/l5o_fc/kernel
:2l5o/l5o_fc/bias
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
?2?
#__inference_l5o_layer_call_fn_61807
#__inference_l5o_layer_call_fn_61858
#__inference_l5o_layer_call_fn_61788
#__inference_l5o_layer_call_fn_61849?
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
>__inference_l5o_layer_call_and_return_conditional_losses_61829
>__inference_l5o_layer_call_and_return_conditional_losses_61840
>__inference_l5o_layer_call_and_return_conditional_losses_61768
>__inference_l5o_layer_call_and_return_conditional_losses_61758?
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
 __inference__wrapped_model_61714?
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
l5o_fc_input?????????
?2?
&__inference_l5o_fc_layer_call_fn_61877?
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
A__inference_l5o_fc_layer_call_and_return_conditional_losses_61868?
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
-__inference_activation_29_layer_call_fn_61887?
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
H__inference_activation_29_layer_call_and_return_conditional_losses_61882?
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
7B5
#__inference_signature_wrapper_61818l5o_fc_input?
 __inference__wrapped_model_61714z	
5?2
+?(
&?#
l5o_fc_input?????????
? "=?:
8
activation_29'?$
activation_29??????????
H__inference_activation_29_layer_call_and_return_conditional_losses_61882X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
-__inference_activation_29_layer_call_fn_61887K/?,
%?"
 ?
inputs?????????
? "???????????
A__inference_l5o_fc_layer_call_and_return_conditional_losses_61868\	
/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? y
&__inference_l5o_fc_layer_call_fn_61877O	
/?,
%?"
 ?
inputs?????????
? "???????????
>__inference_l5o_layer_call_and_return_conditional_losses_61758j	
=?:
3?0
&?#
l5o_fc_input?????????
p

 
? "%?"
?
0?????????
? ?
>__inference_l5o_layer_call_and_return_conditional_losses_61768j	
=?:
3?0
&?#
l5o_fc_input?????????
p 

 
? "%?"
?
0?????????
? ?
>__inference_l5o_layer_call_and_return_conditional_losses_61829d	
7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
>__inference_l5o_layer_call_and_return_conditional_losses_61840d	
7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
#__inference_l5o_layer_call_fn_61788]	
=?:
3?0
&?#
l5o_fc_input?????????
p

 
? "???????????
#__inference_l5o_layer_call_fn_61807]	
=?:
3?0
&?#
l5o_fc_input?????????
p 

 
? "??????????~
#__inference_l5o_layer_call_fn_61849W	
7?4
-?*
 ?
inputs?????????
p

 
? "??????????~
#__inference_l5o_layer_call_fn_61858W	
7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
#__inference_signature_wrapper_61818?	
E?B
? 
;?8
6
l5o_fc_input&?#
l5o_fc_input?????????"=?:
8
activation_29'?$
activation_29?????????