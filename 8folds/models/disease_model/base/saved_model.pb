Εξ
Ν£
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
dtypetype
Ύ
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
executor_typestring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.3.12v2.3.0-54-gfcc4b966f18Ϋ

base/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:β*"
shared_namebase/dense/kernel
z
%base/dense/kernel/Read/ReadVariableOpReadVariableOpbase/dense/kernel*!
_output_shapes
:β*
dtype0
w
base/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namebase/dense/bias
p
#base/dense/bias/Read/ReadVariableOpReadVariableOpbase/dense/bias*
_output_shapes	
:*
dtype0

base/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_namebase/dense_1/kernel
}
'base/dense_1/kernel/Read/ReadVariableOpReadVariableOpbase/dense_1/kernel* 
_output_shapes
:
*
dtype0
{
base/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namebase/dense_1/bias
t
%base/dense_1/bias/Read/ReadVariableOpReadVariableOpbase/dense_1/bias*
_output_shapes	
:*
dtype0

NoOpNoOp
ώ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ή
value―B¬ B₯
Χ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
	variables
regularization_losses
trainable_variables
		keras_api


signatures
f
_inbound_nodes
	variables
regularization_losses
trainable_variables
	keras_api
|
_inbound_nodes

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
f
_inbound_nodes
	variables
regularization_losses
trainable_variables
	keras_api
|
_inbound_nodes

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
f
#_inbound_nodes
$	variables
%regularization_losses
&trainable_variables
'	keras_api

0
1
2
3
 

0
1
2
3
­
(layer_regularization_losses
)metrics

*layers
+layer_metrics
	variables
regularization_losses
trainable_variables
,non_trainable_variables
 
 
 
 
 
­
-layer_regularization_losses
.metrics

/layers
0layer_metrics
	variables
regularization_losses
trainable_variables
1non_trainable_variables
 
][
VARIABLE_VALUEbase/dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEbase/dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
2layer_regularization_losses
3metrics

4layers
5layer_metrics
	variables
regularization_losses
trainable_variables
6non_trainable_variables
 
 
 
 
­
7layer_regularization_losses
8metrics

9layers
:layer_metrics
	variables
regularization_losses
trainable_variables
;non_trainable_variables
 
_]
VARIABLE_VALUEbase/dense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEbase/dense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
<layer_regularization_losses
=metrics

>layers
?layer_metrics
	variables
 regularization_losses
!trainable_variables
@non_trainable_variables
 
 
 
 
­
Alayer_regularization_losses
Bmetrics

Clayers
Dlayer_metrics
$	variables
%regularization_losses
&trainable_variables
Enon_trainable_variables
 
 
#
0
1
2
3
4
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
 
 
 

serving_default_flatten_inputPlaceholder*)
_output_shapes
:?????????β*
dtype0*
shape:?????????β

StatefulPartitionedCallStatefulPartitionedCallserving_default_flatten_inputbase/dense/kernelbase/dense/biasbase/dense_1/kernelbase/dense_1/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_57562
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ί
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%base/dense/kernel/Read/ReadVariableOp#base/dense/bias/Read/ReadVariableOp'base/dense_1/kernel/Read/ReadVariableOp%base/dense_1/bias/Read/ReadVariableOpConst*
Tin

2*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_57732
ε
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebase/dense/kernelbase/dense/biasbase/dense_1/kernelbase/dense_1/bias*
Tin	
2*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_57754΄
·
a
E__inference_activation_layer_call_and_return_conditional_losses_57421

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:?????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

ο
?__inference_base_layer_call_and_return_conditional_losses_57486
flatten_input
dense_57473
dense_57475
dense_1_57479
dense_1_57481
identity’dense/StatefulPartitionedCall’dense_1/StatefulPartitionedCallΩ
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????β* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_573822
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_57473dense_57475*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_574002
dense/StatefulPartitionedCallϊ
activation/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_574212
activation/PartitionedCallͺ
dense_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0dense_1_57479dense_1_57481*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_574392!
dense_1/StatefulPartitionedCall
activation_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_574602
activation_1/PartitionedCallΌ
IdentityIdentity%activation_1/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
)
_output_shapes
:?????????β
'
_user_specified_nameflatten_input
·
a
E__inference_activation_layer_call_and_return_conditional_losses_57663

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:?????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs


$__inference_base_layer_call_fn_57628

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_base_layer_call_and_return_conditional_losses_575362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs

F
*__inference_activation_layer_call_fn_57668

inputs
identityΔ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_574212
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
 
³
__inference__traced_save_57732
file_prefix0
,savev2_base_dense_kernel_read_readvariableop.
*savev2_base_dense_bias_read_readvariableop2
.savev2_base_dense_1_kernel_read_readvariableop0
,savev2_base_dense_1_bias_read_readvariableop
savev2_const

identity_1’MergeV2Checkpoints
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
Const
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_347d5d619b7942d0b111fbc35e242f36/part2	
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameύ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
SaveV2/shape_and_slicesφ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_base_dense_kernel_read_readvariableop*savev2_base_dense_bias_read_readvariableop.savev2_base_dense_1_kernel_read_readvariableop,savev2_base_dense_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2Ί
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes‘
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

identity_1Identity_1:output:0*>
_input_shapes-
+: :β::
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:β:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::

_output_shapes
: 
ώ
θ
?__inference_base_layer_call_and_return_conditional_losses_57506

inputs
dense_57493
dense_57495
dense_1_57499
dense_1_57501
identity’dense/StatefulPartitionedCall’dense_1/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????β* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_573822
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_57493dense_57495*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_574002
dense/StatefulPartitionedCallϊ
activation/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_574212
activation/PartitionedCallͺ
dense_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0dense_1_57499dense_1_57501*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_574392!
dense_1/StatefulPartitionedCall
activation_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_574602
activation_1/PartitionedCallΌ
IdentityIdentity%activation_1/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs
Ή
c
G__inference_activation_1_layer_call_and_return_conditional_losses_57692

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:?????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ώ
θ
?__inference_base_layer_call_and_return_conditional_losses_57536

inputs
dense_57523
dense_57525
dense_1_57529
dense_1_57531
identity’dense/StatefulPartitionedCall’dense_1/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????β* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_573822
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_57523dense_57525*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_574002
dense/StatefulPartitionedCallϊ
activation/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_574212
activation/PartitionedCallͺ
dense_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0dense_1_57529dense_1_57531*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_574392!
dense_1/StatefulPartitionedCall
activation_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_574602
activation_1/PartitionedCallΌ
IdentityIdentity%activation_1/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs
Τ
¨
@__inference_dense_layer_call_and_return_conditional_losses_57649

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:β*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAdde
IdentityIdentityBiasAdd:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:?????????β:::Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs
°
^
B__inference_flatten_layer_call_and_return_conditional_losses_57382

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????bF  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:?????????β2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:?????????β2

Identity"
identityIdentity:output:0*(
_input_shapes
:?????????β:Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs


#__inference_signature_wrapper_57562
flatten_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity’StatefulPartitionedCallς
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_573722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
)
_output_shapes
:?????????β
'
_user_specified_nameflatten_input
Τ
¨
@__inference_dense_layer_call_and_return_conditional_losses_57400

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:β*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAdde
IdentityIdentityBiasAdd:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:?????????β:::Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs
Ά

?__inference_base_layer_call_and_return_conditional_losses_57582

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????bF  2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*)
_output_shapes
:?????????β2
flatten/Reshape’
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:β*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense/BiasAddu
activation/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
activation/Relu§
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense_1/MatMul/ReadVariableOp£
dense_1/MatMulMatMulactivation/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_1/MatMul₯
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp’
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_1/BiasAdd{
activation_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
activation_1/Relut
IdentityIdentityactivation_1/Relu:activations:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β:::::Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs

ο
?__inference_base_layer_call_and_return_conditional_losses_57469
flatten_input
dense_57411
dense_57413
dense_1_57450
dense_1_57452
identity’dense/StatefulPartitionedCall’dense_1/StatefulPartitionedCallΩ
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????β* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_573822
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_57411dense_57413*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_574002
dense/StatefulPartitionedCallϊ
activation/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_574212
activation/PartitionedCallͺ
dense_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0dense_1_57450dense_1_57452*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_574392!
dense_1/StatefulPartitionedCall
activation_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_574602
activation_1/PartitionedCallΌ
IdentityIdentity%activation_1/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
)
_output_shapes
:?????????β
'
_user_specified_nameflatten_input


$__inference_base_layer_call_fn_57615

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_base_layer_call_and_return_conditional_losses_575062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs
?

$__inference_base_layer_call_fn_57547
flatten_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_base_layer_call_and_return_conditional_losses_575362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
)
_output_shapes
:?????????β
'
_user_specified_nameflatten_input
?

$__inference_base_layer_call_fn_57517
flatten_input
unknown
	unknown_0
	unknown_1
	unknown_2
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_base_layer_call_and_return_conditional_losses_575062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
)
_output_shapes
:?????????β
'
_user_specified_nameflatten_input
Ά

?__inference_base_layer_call_and_return_conditional_losses_57602

inputs(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identityo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????bF  2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*)
_output_shapes
:?????????β2
flatten/Reshape’
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:β*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense/BiasAddu
activation/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
activation/Relu§
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense_1/MatMul/ReadVariableOp£
dense_1/MatMulMatMulactivation/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_1/MatMul₯
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp’
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
dense_1/BiasAdd{
activation_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
activation_1/Relut
IdentityIdentityactivation_1/Relu:activations:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β:::::Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs


 __inference__wrapped_model_57372
flatten_input-
)base_dense_matmul_readvariableop_resource.
*base_dense_biasadd_readvariableop_resource/
+base_dense_1_matmul_readvariableop_resource0
,base_dense_1_biasadd_readvariableop_resource
identityy
base/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????bF  2
base/flatten/Const
base/flatten/ReshapeReshapeflatten_inputbase/flatten/Const:output:0*
T0*)
_output_shapes
:?????????β2
base/flatten/Reshape±
 base/dense/MatMul/ReadVariableOpReadVariableOp)base_dense_matmul_readvariableop_resource*!
_output_shapes
:β*
dtype02"
 base/dense/MatMul/ReadVariableOp¬
base/dense/MatMulMatMulbase/flatten/Reshape:output:0(base/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
base/dense/MatMul?
!base/dense/BiasAdd/ReadVariableOpReadVariableOp*base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!base/dense/BiasAdd/ReadVariableOp?
base/dense/BiasAddBiasAddbase/dense/MatMul:product:0)base/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
base/dense/BiasAdd
base/activation/ReluRelubase/dense/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
base/activation/ReluΆ
"base/dense_1/MatMul/ReadVariableOpReadVariableOp+base_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"base/dense_1/MatMul/ReadVariableOp·
base/dense_1/MatMulMatMul"base/activation/Relu:activations:0*base/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
base/dense_1/MatMul΄
#base/dense_1/BiasAdd/ReadVariableOpReadVariableOp,base_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#base/dense_1/BiasAdd/ReadVariableOpΆ
base/dense_1/BiasAddBiasAddbase/dense_1/MatMul:product:0+base/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
base/dense_1/BiasAdd
base/activation_1/ReluRelubase/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:?????????2
base/activation_1/Reluy
IdentityIdentity$base/activation_1/Relu:activations:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:?????????β:::::X T
)
_output_shapes
:?????????β
'
_user_specified_nameflatten_input

C
'__inference_flatten_layer_call_fn_57639

inputs
identityΒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????β* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_573822
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:?????????β2

Identity"
identityIdentity:output:0*(
_input_shapes
:?????????β:Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs
°
^
B__inference_flatten_layer_call_and_return_conditional_losses_57634

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????bF  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:?????????β2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:?????????β2

Identity"
identityIdentity:output:0*(
_input_shapes
:?????????β:Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs
Σ
ͺ
B__inference_dense_1_layer_call_and_return_conditional_losses_57439

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAdde
IdentityIdentityBiasAdd:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????:::P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ϊ
z
%__inference_dense_layer_call_fn_57658

inputs
unknown
	unknown_0
identity’StatefulPartitionedCallρ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_574002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*0
_input_shapes
:?????????β::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:?????????β
 
_user_specified_nameinputs
ά
|
'__inference_dense_1_layer_call_fn_57687

inputs
unknown
	unknown_0
identity’StatefulPartitionedCallσ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_574392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs

H
,__inference_activation_1_layer_call_fn_57697

inputs
identityΖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_574602
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ή
c
G__inference_activation_1_layer_call_and_return_conditional_losses_57460

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:?????????2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Σ
ͺ
B__inference_dense_1_layer_call_and_return_conditional_losses_57678

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????2	
BiasAdde
IdentityIdentityBiasAdd:output:0*
T0*(
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*/
_input_shapes
:?????????:::P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ά
Ώ
!__inference__traced_restore_57754
file_prefix&
"assignvariableop_base_dense_kernel&
"assignvariableop_1_base_dense_bias*
&assignvariableop_2_base_dense_1_kernel(
$assignvariableop_3_base_dense_1_bias

identity_5’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_2’AssignVariableOp_3
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 2
RestoreV2/shape_and_slicesΔ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity‘
AssignVariableOpAssignVariableOp"assignvariableop_base_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOp"assignvariableop_1_base_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2«
AssignVariableOp_2AssignVariableOp&assignvariableop_2_base_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3©
AssignVariableOp_3AssignVariableOp$assignvariableop_3_base_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpΊ

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_4¬

Identity_5IdentityIdentity_4:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*
T0*
_output_shapes
: 2

Identity_5"!

identity_5Identity_5:output:0*%
_input_shapes
: ::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"ΈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ύ
serving_defaultͺ
I
flatten_input8
serving_default_flatten_input:0?????????βA
activation_11
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ή
΄
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
	variables
regularization_losses
trainable_variables
		keras_api


signatures
F__call__
*G&call_and_return_all_conditional_losses
H_default_save_signature"
_tf_keras_sequentialδ{"class_name": "Sequential", "name": "base", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "base", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 18018]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_input"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 18018]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "base", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 18018]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_input"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}]}}}
φ
_inbound_nodes
	variables
regularization_losses
trainable_variables
	keras_api
I__call__
*J&call_and_return_all_conditional_losses"Σ
_tf_keras_layerΉ{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}

_inbound_nodes

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
K__call__
*L&call_and_return_all_conditional_losses"Κ
_tf_keras_layer°{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 18018}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 18018]}}
ε
_inbound_nodes
	variables
regularization_losses
trainable_variables
	keras_api
M__call__
*N&call_and_return_all_conditional_losses"Β
_tf_keras_layer¨{"class_name": "Activation", "name": "activation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}

_inbound_nodes

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
O__call__
*P&call_and_return_all_conditional_losses"Λ
_tf_keras_layer±{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
ι
#_inbound_nodes
$	variables
%regularization_losses
&trainable_variables
'	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"Ζ
_tf_keras_layer¬{"class_name": "Activation", "name": "activation_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
Κ
(layer_regularization_losses
)metrics

*layers
+layer_metrics
	variables
regularization_losses
trainable_variables
,non_trainable_variables
F__call__
H_default_save_signature
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
,
Sserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
-layer_regularization_losses
.metrics

/layers
0layer_metrics
	variables
regularization_losses
trainable_variables
1non_trainable_variables
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
&:$β2base/dense/kernel
:2base/dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
2layer_regularization_losses
3metrics

4layers
5layer_metrics
	variables
regularization_losses
trainable_variables
6non_trainable_variables
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
7layer_regularization_losses
8metrics

9layers
:layer_metrics
	variables
regularization_losses
trainable_variables
;non_trainable_variables
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
':%
2base/dense_1/kernel
 :2base/dense_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
<layer_regularization_losses
=metrics

>layers
?layer_metrics
	variables
 regularization_losses
!trainable_variables
@non_trainable_variables
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Alayer_regularization_losses
Bmetrics

Clayers
Dlayer_metrics
$	variables
%regularization_losses
&trainable_variables
Enon_trainable_variables
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
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
ή2Ϋ
$__inference_base_layer_call_fn_57615
$__inference_base_layer_call_fn_57628
$__inference_base_layer_call_fn_57547
$__inference_base_layer_call_fn_57517ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Κ2Η
?__inference_base_layer_call_and_return_conditional_losses_57486
?__inference_base_layer_call_and_return_conditional_losses_57602
?__inference_base_layer_call_and_return_conditional_losses_57582
?__inference_base_layer_call_and_return_conditional_losses_57469ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ζ2γ
 __inference__wrapped_model_57372Ύ
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *.’+
)&
flatten_input?????????β
Ρ2Ξ
'__inference_flatten_layer_call_fn_57639’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
μ2ι
B__inference_flatten_layer_call_and_return_conditional_losses_57634’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ο2Μ
%__inference_dense_layer_call_fn_57658’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
κ2η
@__inference_dense_layer_call_and_return_conditional_losses_57649’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Τ2Ρ
*__inference_activation_layer_call_fn_57668’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ο2μ
E__inference_activation_layer_call_and_return_conditional_losses_57663’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Ρ2Ξ
'__inference_dense_1_layer_call_fn_57687’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
μ2ι
B__inference_dense_1_layer_call_and_return_conditional_losses_57678’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Φ2Σ
,__inference_activation_1_layer_call_fn_57697’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ρ2ξ
G__inference_activation_1_layer_call_and_return_conditional_losses_57692’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
8B6
#__inference_signature_wrapper_57562flatten_input’
 __inference__wrapped_model_57372~8’5
.’+
)&
flatten_input?????????β
ͺ "<ͺ9
7
activation_1'$
activation_1?????????₯
G__inference_activation_1_layer_call_and_return_conditional_losses_57692Z0’-
&’#
!
inputs?????????
ͺ "&’#

0?????????
 }
,__inference_activation_1_layer_call_fn_57697M0’-
&’#
!
inputs?????????
ͺ "?????????£
E__inference_activation_layer_call_and_return_conditional_losses_57663Z0’-
&’#
!
inputs?????????
ͺ "&’#

0?????????
 {
*__inference_activation_layer_call_fn_57668M0’-
&’#
!
inputs?????????
ͺ "?????????³
?__inference_base_layer_call_and_return_conditional_losses_57469p@’=
6’3
)&
flatten_input?????????β
p

 
ͺ "&’#

0?????????
 ³
?__inference_base_layer_call_and_return_conditional_losses_57486p@’=
6’3
)&
flatten_input?????????β
p 

 
ͺ "&’#

0?????????
 ¬
?__inference_base_layer_call_and_return_conditional_losses_57582i9’6
/’,
"
inputs?????????β
p

 
ͺ "&’#

0?????????
 ¬
?__inference_base_layer_call_and_return_conditional_losses_57602i9’6
/’,
"
inputs?????????β
p 

 
ͺ "&’#

0?????????
 
$__inference_base_layer_call_fn_57517c@’=
6’3
)&
flatten_input?????????β
p

 
ͺ "?????????
$__inference_base_layer_call_fn_57547c@’=
6’3
)&
flatten_input?????????β
p 

 
ͺ "?????????
$__inference_base_layer_call_fn_57615\9’6
/’,
"
inputs?????????β
p

 
ͺ "?????????
$__inference_base_layer_call_fn_57628\9’6
/’,
"
inputs?????????β
p 

 
ͺ "?????????€
B__inference_dense_1_layer_call_and_return_conditional_losses_57678^0’-
&’#
!
inputs?????????
ͺ "&’#

0?????????
 |
'__inference_dense_1_layer_call_fn_57687Q0’-
&’#
!
inputs?????????
ͺ "?????????£
@__inference_dense_layer_call_and_return_conditional_losses_57649_1’.
'’$
"
inputs?????????β
ͺ "&’#

0?????????
 {
%__inference_dense_layer_call_fn_57658R1’.
'’$
"
inputs?????????β
ͺ "?????????’
B__inference_flatten_layer_call_and_return_conditional_losses_57634\1’.
'’$
"
inputs?????????β
ͺ "'’$

0?????????β
 z
'__inference_flatten_layer_call_fn_57639O1’.
'’$
"
inputs?????????β
ͺ "?????????β·
#__inference_signature_wrapper_57562I’F
’ 
?ͺ<
:
flatten_input)&
flatten_input?????????β"<ͺ9
7
activation_1'$
activation_1?????????