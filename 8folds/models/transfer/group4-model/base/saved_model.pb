¢
à
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ªý

base/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:â*"
shared_namebase/dense/kernel
z
%base/dense/kernel/Read/ReadVariableOpReadVariableOpbase/dense/kernel*!
_output_shapes
:â*
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
ü
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*·
value­Bª B£
ü
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4

signatures
#_self_saveable_object_factories
trainable_variables
		variables

regularization_losses
	keras_api
w
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api


kernel
bias
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
w
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api


kernel
bias
#_self_saveable_object_factories
 trainable_variables
!	variables
"regularization_losses
#	keras_api
w
#$_self_saveable_object_factories
%trainable_variables
&	variables
'regularization_losses
(	keras_api
 
 

0
1
2
3

0
1
2
3
 
­
)layer_metrics
*metrics
trainable_variables
		variables

regularization_losses
+non_trainable_variables
,layer_regularization_losses

-layers
 
 
 
 
­
.metrics
trainable_variables
	variables
regularization_losses
/non_trainable_variables
0layer_regularization_losses
1layer_metrics

2layers
][
VARIABLE_VALUEbase/dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEbase/dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
­
3metrics
trainable_variables
	variables
regularization_losses
4non_trainable_variables
5layer_regularization_losses
6layer_metrics

7layers
 
 
 
 
­
8metrics
trainable_variables
	variables
regularization_losses
9non_trainable_variables
:layer_regularization_losses
;layer_metrics

<layers
_]
VARIABLE_VALUEbase/dense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEbase/dense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
­
=metrics
 trainable_variables
!	variables
"regularization_losses
>non_trainable_variables
?layer_regularization_losses
@layer_metrics

Alayers
 
 
 
 
­
Bmetrics
%trainable_variables
&	variables
'regularization_losses
Cnon_trainable_variables
Dlayer_regularization_losses
Elayer_metrics

Flayers
 
 
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

serving_default_flatten_inputPlaceholder*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿâ

StatefulPartitionedCallStatefulPartitionedCallserving_default_flatten_inputbase/dense/kernelbase/dense/biasbase/dense_1/kernelbase/dense_1/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_70139
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
º
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
__inference__traced_save_70309
å
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
!__inference__traced_restore_70331¢Õ

Á
?__inference_base_layer_call_and_return_conditional_losses_70205

inputs9
$dense_matmul_readvariableop_resource:â4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿbF  2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ2
flatten/Reshape¢
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:â*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAddu
activation/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2
dense_1/MatMul¥
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp¢
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAdd{
activation_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_1/Reluò
IdentityIdentityactivation_1/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs

Õ
$__inference_base_layer_call_fn_70090
flatten_input
unknown:â
	unknown_0:	
	unknown_1:

	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_base_layer_call_and_return_conditional_losses_700662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
'
_user_specified_nameflatten_input
Ù	
ö
B__inference_dense_1_layer_call_and_return_conditional_losses_70264

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


%__inference_dense_layer_call_fn_70225

inputs
unknown:â
	unknown_0:	
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_699482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
þ
³
__inference__traced_save_70309
file_prefix0
,savev2_base_dense_kernel_read_readvariableop.
*savev2_base_dense_bias_read_readvariableop2
.savev2_base_dense_1_kernel_read_readvariableop0
,savev2_base_dense_1_bias_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
ShardedFilenameý
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
SaveV2/shape_and_slicesö
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_base_dense_kernel_read_readvariableop*savev2_base_dense_bias_read_readvariableop.savev2_base_dense_1_kernel_read_readvariableop,savev2_base_dense_1_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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
+: :â::
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:â:!
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
á
a
E__inference_activation_layer_call_and_return_conditional_losses_70245

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Á
?__inference_base_layer_call_and_return_conditional_losses_70185

inputs9
$dense_matmul_readvariableop_resource:â4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿbF  2
flatten/Const
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ2
flatten/Reshape¢
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:â*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAddu
activation/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
:ÿÿÿÿÿÿÿÿÿ2
dense_1/MatMul¥
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp¢
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAdd{
activation_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_1/Reluò
IdentityIdentityactivation_1/Relu:activations:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
ò
Î
$__inference_base_layer_call_fn_70165

inputs
unknown:â
	unknown_0:	
	unknown_1:

	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_base_layer_call_and_return_conditional_losses_700662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
×

?__inference_base_layer_call_and_return_conditional_losses_70066

inputs 
dense_70053:â
dense_70055:	!
dense_1_70059:

dense_1_70061:	
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallÒ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_699362
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_70053dense_70055*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_699482
dense/StatefulPartitionedCallú
activation/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_699592
activation/PartitionedCallª
dense_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0dense_1_70059dense_1_70061*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_699712!
dense_1/StatefulPartitionedCall
activation_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_699822
activation_1/PartitionedCall¼
IdentityIdentity%activation_1/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
Â
F
*__inference_activation_layer_call_fn_70240

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_699592
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×

?__inference_base_layer_call_and_return_conditional_losses_69985

inputs 
dense_69949:â
dense_69951:	!
dense_1_69972:

dense_1_69974:	
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallÒ
flatten/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_699362
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_69949dense_69951*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_699482
dense/StatefulPartitionedCallú
activation/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_699592
activation/PartitionedCallª
dense_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0dense_1_69972dense_1_69974*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_699712!
dense_1/StatefulPartitionedCall
activation_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_699822
activation_1/PartitionedCall¼
IdentityIdentity%activation_1/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
á
a
E__inference_activation_layer_call_and_return_conditional_losses_69959

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û	
õ
@__inference_dense_layer_call_and_return_conditional_losses_69948

inputs3
matmul_readvariableop_resource:â.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:â*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
À
C
'__inference_flatten_layer_call_fn_70210

inputs
identityÂ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_699362
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
ã
c
G__inference_activation_1_layer_call_and_return_conditional_losses_70274

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
¦
?__inference_base_layer_call_and_return_conditional_losses_70124
flatten_input 
dense_70111:â
dense_70113:	!
dense_1_70117:

dense_1_70119:	
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallÙ
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_699362
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_70111dense_70113*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_699482
dense/StatefulPartitionedCallú
activation/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_699592
activation/PartitionedCallª
dense_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0dense_1_70117dense_1_70119*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_699712!
dense_1/StatefulPartitionedCall
activation_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_699822
activation_1/PartitionedCall¼
IdentityIdentity%activation_1/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
'
_user_specified_nameflatten_input

Õ
$__inference_base_layer_call_fn_69996
flatten_input
unknown:â
	unknown_0:	
	unknown_1:

	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_base_layer_call_and_return_conditional_losses_699852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
'
_user_specified_nameflatten_input
ç
Ô
#__inference_signature_wrapper_70139
flatten_input
unknown:â
	unknown_0:	
	unknown_1:

	unknown_2:	
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_699232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
'
_user_specified_nameflatten_input
Û	
õ
@__inference_dense_layer_call_and_return_conditional_losses_70235

inputs3
matmul_readvariableop_resource:â.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:â*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
¬
Ñ
 __inference__wrapped_model_69923
flatten_input>
)base_dense_matmul_readvariableop_resource:â9
*base_dense_biasadd_readvariableop_resource:	?
+base_dense_1_matmul_readvariableop_resource:
;
,base_dense_1_biasadd_readvariableop_resource:	
identity¢!base/dense/BiasAdd/ReadVariableOp¢ base/dense/MatMul/ReadVariableOp¢#base/dense_1/BiasAdd/ReadVariableOp¢"base/dense_1/MatMul/ReadVariableOpy
base/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿbF  2
base/flatten/Const
base/flatten/ReshapeReshapeflatten_inputbase/flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ2
base/flatten/Reshape±
 base/dense/MatMul/ReadVariableOpReadVariableOp)base_dense_matmul_readvariableop_resource*!
_output_shapes
:â*
dtype02"
 base/dense/MatMul/ReadVariableOp¬
base/dense/MatMulMatMulbase/flatten/Reshape:output:0(base/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
base/dense/MatMul®
!base/dense/BiasAdd/ReadVariableOpReadVariableOp*base_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!base/dense/BiasAdd/ReadVariableOp®
base/dense/BiasAddBiasAddbase/dense/MatMul:product:0)base/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
base/dense/BiasAdd
base/activation/ReluRelubase/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
base/activation/Relu¶
"base/dense_1/MatMul/ReadVariableOpReadVariableOp+base_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02$
"base/dense_1/MatMul/ReadVariableOp·
base/dense_1/MatMulMatMul"base/activation/Relu:activations:0*base/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
base/dense_1/MatMul´
#base/dense_1/BiasAdd/ReadVariableOpReadVariableOp,base_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02%
#base/dense_1/BiasAdd/ReadVariableOp¶
base/dense_1/BiasAddBiasAddbase/dense_1/MatMul:product:0+base/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
base/dense_1/BiasAdd
base/activation_1/ReluRelubase/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
base/activation_1/Relu
IdentityIdentity$base/activation_1/Relu:activations:0"^base/dense/BiasAdd/ReadVariableOp!^base/dense/MatMul/ReadVariableOp$^base/dense_1/BiasAdd/ReadVariableOp#^base/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 2F
!base/dense/BiasAdd/ReadVariableOp!base/dense/BiasAdd/ReadVariableOp2D
 base/dense/MatMul/ReadVariableOp base/dense/MatMul/ReadVariableOp2J
#base/dense_1/BiasAdd/ReadVariableOp#base/dense_1/BiasAdd/ReadVariableOp2H
"base/dense_1/MatMul/ReadVariableOp"base/dense_1/MatMul/ReadVariableOp:X T
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
'
_user_specified_nameflatten_input
Ù	
ö
B__inference_dense_1_layer_call_and_return_conditional_losses_69971

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
^
B__inference_flatten_layer_call_and_return_conditional_losses_70216

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿbF  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
ã
c
G__inference_activation_1_layer_call_and_return_conditional_losses_69982

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


'__inference_dense_1_layer_call_fn_70254

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_699712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
Î
$__inference_base_layer_call_fn_70152

inputs
unknown:â
	unknown_0:	
	unknown_1:

	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_base_layer_call_and_return_conditional_losses_699852
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs
Ú
^
B__inference_flatten_layer_call_and_return_conditional_losses_69936

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿbF  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
 
_user_specified_nameinputs

ö
!__inference__traced_restore_70331
file_prefix7
"assignvariableop_base_dense_kernel:â1
"assignvariableop_1_base_dense_bias:	:
&assignvariableop_2_base_dense_1_kernel:
3
$assignvariableop_3_base_dense_1_bias:	

identity_5¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3
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
RestoreV2/shape_and_slicesÄ
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

Identity¡
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
NoOpº

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

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Æ
H
,__inference_activation_1_layer_call_fn_70269

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_699822
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
¦
?__inference_base_layer_call_and_return_conditional_losses_70107
flatten_input 
dense_70094:â
dense_70096:	!
dense_1_70100:

dense_1_70102:	
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCallÙ
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_699362
flatten/PartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_70094dense_70096*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_699482
dense/StatefulPartitionedCallú
activation/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_699592
activation/PartitionedCallª
dense_1/StatefulPartitionedCallStatefulPartitionedCall#activation/PartitionedCall:output:0dense_1_70100dense_1_70102*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_699712!
dense_1/StatefulPartitionedCall
activation_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_699822
activation_1/PartitionedCall¼
IdentityIdentity%activation_1/PartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿâ: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:X T
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
'
_user_specified_nameflatten_input"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
serving_defaultª
I
flatten_input8
serving_default_flatten_input:0ÿÿÿÿÿÿÿÿÿâA
activation_11
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ê
!
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4

signatures
#_self_saveable_object_factories
trainable_variables
		variables

regularization_losses
	keras_api
G__call__
*H&call_and_return_all_conditional_losses
I_default_save_signature"Ã
_tf_keras_sequential¤{"name": "base", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "base", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 18018]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_input"}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}}]}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 18018]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 18018]}, "float32", "flatten_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "base", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 18018]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_input"}, "shared_object_id": 0}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}]}}}
¶
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
J__call__
*K&call_and_return_all_conditional_losses"
_tf_keras_layerè{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 11}}
ñ

kernel
bias
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
L__call__
*M&call_and_return_all_conditional_losses"§
_tf_keras_layer{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1024, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 18018}}, "shared_object_id": 12}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 18018]}}

#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
N__call__
*O&call_and_return_all_conditional_losses"Ù
_tf_keras_layer¿{"name": "activation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 5}
ò

kernel
bias
#_self_saveable_object_factories
 trainable_variables
!	variables
"regularization_losses
#	keras_api
P__call__
*Q&call_and_return_all_conditional_losses"¨
_tf_keras_layer{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": 2}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}

#$_self_saveable_object_factories
%trainable_variables
&	variables
'regularization_losses
(	keras_api
R__call__
*S&call_and_return_all_conditional_losses"Ý
_tf_keras_layerÃ{"name": "activation_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_1", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 9}
,
Tserving_default"
signature_map
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
)layer_metrics
*metrics
trainable_variables
		variables

regularization_losses
+non_trainable_variables
,layer_regularization_losses

-layers
G__call__
I_default_save_signature
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
.metrics
trainable_variables
	variables
regularization_losses
/non_trainable_variables
0layer_regularization_losses
1layer_metrics

2layers
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
&:$â2base/dense/kernel
:2base/dense/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
3metrics
trainable_variables
	variables
regularization_losses
4non_trainable_variables
5layer_regularization_losses
6layer_metrics

7layers
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
8metrics
trainable_variables
	variables
regularization_losses
9non_trainable_variables
:layer_regularization_losses
;layer_metrics

<layers
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
':%
2base/dense_1/kernel
 :2base/dense_1/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
=metrics
 trainable_variables
!	variables
"regularization_losses
>non_trainable_variables
?layer_regularization_losses
@layer_metrics

Alayers
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Bmetrics
%trainable_variables
&	variables
'regularization_losses
Cnon_trainable_variables
Dlayer_regularization_losses
Elayer_metrics

Flayers
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
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
Þ2Û
$__inference_base_layer_call_fn_69996
$__inference_base_layer_call_fn_70152
$__inference_base_layer_call_fn_70165
$__inference_base_layer_call_fn_70090À
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
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
?__inference_base_layer_call_and_return_conditional_losses_70185
?__inference_base_layer_call_and_return_conditional_losses_70205
?__inference_base_layer_call_and_return_conditional_losses_70107
?__inference_base_layer_call_and_return_conditional_losses_70124À
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
kwonlydefaultsª 
annotationsª *
 
æ2ã
 __inference__wrapped_model_69923¾
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
annotationsª *.¢+
)&
flatten_inputÿÿÿÿÿÿÿÿÿâ
Ñ2Î
'__inference_flatten_layer_call_fn_70210¢
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
annotationsª *
 
ì2é
B__inference_flatten_layer_call_and_return_conditional_losses_70216¢
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
annotationsª *
 
Ï2Ì
%__inference_dense_layer_call_fn_70225¢
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
annotationsª *
 
ê2ç
@__inference_dense_layer_call_and_return_conditional_losses_70235¢
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
annotationsª *
 
Ô2Ñ
*__inference_activation_layer_call_fn_70240¢
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
annotationsª *
 
ï2ì
E__inference_activation_layer_call_and_return_conditional_losses_70245¢
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
annotationsª *
 
Ñ2Î
'__inference_dense_1_layer_call_fn_70254¢
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
annotationsª *
 
ì2é
B__inference_dense_1_layer_call_and_return_conditional_losses_70264¢
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
annotationsª *
 
Ö2Ó
,__inference_activation_1_layer_call_fn_70269¢
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
annotationsª *
 
ñ2î
G__inference_activation_1_layer_call_and_return_conditional_losses_70274¢
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
annotationsª *
 
ÐBÍ
#__inference_signature_wrapper_70139flatten_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ¢
 __inference__wrapped_model_69923~8¢5
.¢+
)&
flatten_inputÿÿÿÿÿÿÿÿÿâ
ª "<ª9
7
activation_1'$
activation_1ÿÿÿÿÿÿÿÿÿ¥
G__inference_activation_1_layer_call_and_return_conditional_losses_70274Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
,__inference_activation_1_layer_call_fn_70269M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
E__inference_activation_layer_call_and_return_conditional_losses_70245Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
*__inference_activation_layer_call_fn_70240M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ³
?__inference_base_layer_call_and_return_conditional_losses_70107p@¢=
6¢3
)&
flatten_inputÿÿÿÿÿÿÿÿÿâ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ³
?__inference_base_layer_call_and_return_conditional_losses_70124p@¢=
6¢3
)&
flatten_inputÿÿÿÿÿÿÿÿÿâ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¬
?__inference_base_layer_call_and_return_conditional_losses_70185i9¢6
/¢,
"
inputsÿÿÿÿÿÿÿÿÿâ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¬
?__inference_base_layer_call_and_return_conditional_losses_70205i9¢6
/¢,
"
inputsÿÿÿÿÿÿÿÿÿâ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
$__inference_base_layer_call_fn_69996c@¢=
6¢3
)&
flatten_inputÿÿÿÿÿÿÿÿÿâ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_base_layer_call_fn_70090c@¢=
6¢3
)&
flatten_inputÿÿÿÿÿÿÿÿÿâ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_base_layer_call_fn_70152\9¢6
/¢,
"
inputsÿÿÿÿÿÿÿÿÿâ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_base_layer_call_fn_70165\9¢6
/¢,
"
inputsÿÿÿÿÿÿÿÿÿâ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_dense_1_layer_call_and_return_conditional_losses_70264^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dense_1_layer_call_fn_70254Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
@__inference_dense_layer_call_and_return_conditional_losses_70235_1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿâ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
%__inference_dense_layer_call_fn_70225R1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿâ
ª "ÿÿÿÿÿÿÿÿÿ¢
B__inference_flatten_layer_call_and_return_conditional_losses_70216\1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿâ
ª "'¢$

0ÿÿÿÿÿÿÿÿÿâ
 z
'__inference_flatten_layer_call_fn_70210O1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿâ
ª "ÿÿÿÿÿÿÿÿÿâ·
#__inference_signature_wrapper_70139I¢F
¢ 
?ª<
:
flatten_input)&
flatten_inputÿÿÿÿÿÿÿÿÿâ"<ª9
7
activation_1'$
activation_1ÿÿÿÿÿÿÿÿÿ