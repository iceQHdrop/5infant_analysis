Эз
│Г
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
delete_old_dirsbool(И
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
╛
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
executor_typestring И
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718╗щ
Г
l1_inter_fc0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	АP*$
shared_namel1_inter_fc0/kernel
|
'l1_inter_fc0/kernel/Read/ReadVariableOpReadVariableOpl1_inter_fc0/kernel*
_output_shapes
:	АP*
dtype0
z
l1_inter_fc0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*"
shared_namel1_inter_fc0/bias
s
%l1_inter_fc0/bias/Read/ReadVariableOpReadVariableOpl1_inter_fc0/bias*
_output_shapes
:P*
dtype0
В
l1_inter_fc1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P(*$
shared_namel1_inter_fc1/kernel
{
'l1_inter_fc1/kernel/Read/ReadVariableOpReadVariableOpl1_inter_fc1/kernel*
_output_shapes

:P(*
dtype0
z
l1_inter_fc1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*"
shared_namel1_inter_fc1/bias
s
%l1_inter_fc1/bias/Read/ReadVariableOpReadVariableOpl1_inter_fc1/bias*
_output_shapes
:(*
dtype0
В
l1_inter_fc2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*$
shared_namel1_inter_fc2/kernel
{
'l1_inter_fc2/kernel/Read/ReadVariableOpReadVariableOpl1_inter_fc2/kernel*
_output_shapes

:(*
dtype0
z
l1_inter_fc2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namel1_inter_fc2/bias
s
%l1_inter_fc2/bias/Read/ReadVariableOpReadVariableOpl1_inter_fc2/bias*
_output_shapes
:*
dtype0

NoOpNoOp
т
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Э
valueУBР BЙ
■
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
R
&regularization_losses
'	variables
(trainable_variables
)	keras_api
 
*
0
1
2
3
 4
!5
*
0
1
2
3
 4
!5
н
regularization_losses
*layer_regularization_losses
+metrics

,layers
-non_trainable_variables
	variables
.layer_metrics
	trainable_variables
 
_]
VARIABLE_VALUEl1_inter_fc0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEl1_inter_fc0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н
regularization_losses
/layer_regularization_losses
0metrics

1layers
2non_trainable_variables
	variables
3layer_metrics
trainable_variables
 
 
 
н
regularization_losses
4layer_regularization_losses
5metrics

6layers
7non_trainable_variables
	variables
8layer_metrics
trainable_variables
_]
VARIABLE_VALUEl1_inter_fc1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEl1_inter_fc1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
н
regularization_losses
9layer_regularization_losses
:metrics

;layers
<non_trainable_variables
	variables
=layer_metrics
trainable_variables
 
 
 
н
regularization_losses
>layer_regularization_losses
?metrics

@layers
Anon_trainable_variables
	variables
Blayer_metrics
trainable_variables
_]
VARIABLE_VALUEl1_inter_fc2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEl1_inter_fc2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1

 0
!1
н
"regularization_losses
Clayer_regularization_losses
Dmetrics

Elayers
Fnon_trainable_variables
#	variables
Glayer_metrics
$trainable_variables
 
 
 
н
&regularization_losses
Hlayer_regularization_losses
Imetrics

Jlayers
Knon_trainable_variables
'	variables
Llayer_metrics
(trainable_variables
 
 
*
0
1
2
3
4
5
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
 
 
 
 
 
З
"serving_default_l1_inter_fc0_inputPlaceholder*(
_output_shapes
:         А*
dtype0*
shape:         А
└
StatefulPartitionedCallStatefulPartitionedCall"serving_default_l1_inter_fc0_inputl1_inter_fc0/kernell1_inter_fc0/biasl1_inter_fc1/kernell1_inter_fc1/biasl1_inter_fc2/kernell1_inter_fc2/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_14271
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Р
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'l1_inter_fc0/kernel/Read/ReadVariableOp%l1_inter_fc0/bias/Read/ReadVariableOp'l1_inter_fc1/kernel/Read/ReadVariableOp%l1_inter_fc1/bias/Read/ReadVariableOp'l1_inter_fc2/kernel/Read/ReadVariableOp%l1_inter_fc2/bias/Read/ReadVariableOpConst*
Tin

2*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_14483
У
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamel1_inter_fc0/kernell1_inter_fc0/biasl1_inter_fc1/kernell1_inter_fc1/biasl1_inter_fc2/kernell1_inter_fc2/bias*
Tin
	2*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_14511Ы╣
╙	
°
G__inference_l1_inter_fc2_layer_call_and_return_conditional_losses_14423

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         (: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         (
 
_user_specified_nameinputs
▀
c
G__inference_activation_7_layer_call_and_return_conditional_losses_14437

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
б
Щ
,__inference_l1_inter_fc1_layer_call_fn_14403

inputs
unknown:P(
	unknown_0:(
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc1_layer_call_and_return_conditional_losses_140352
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         (2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
╫	
∙
G__inference_l1_inter_fc0_layer_call_and_return_conditional_losses_14012

inputs1
matmul_readvariableop_resource:	АP-
biasadd_readvariableop_resource:P
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	АP*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
п
░
C__inference_l3_inter_layer_call_and_return_conditional_losses_14072

inputs%
l1_inter_fc0_14013:	АP 
l1_inter_fc0_14015:P$
l1_inter_fc1_14036:P( 
l1_inter_fc1_14038:($
l1_inter_fc2_14059:( 
l1_inter_fc2_14061:
identityИв$l1_inter_fc0/StatefulPartitionedCallв$l1_inter_fc1/StatefulPartitionedCallв$l1_inter_fc2/StatefulPartitionedCallе
$l1_inter_fc0/StatefulPartitionedCallStatefulPartitionedCallinputsl1_inter_fc0_14013l1_inter_fc0_14015*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc0_layer_call_and_return_conditional_losses_140122&
$l1_inter_fc0/StatefulPartitionedCallЖ
activation_5/PartitionedCallPartitionedCall-l1_inter_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_140232
activation_5/PartitionedCall─
$l1_inter_fc1/StatefulPartitionedCallStatefulPartitionedCall%activation_5/PartitionedCall:output:0l1_inter_fc1_14036l1_inter_fc1_14038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc1_layer_call_and_return_conditional_losses_140352&
$l1_inter_fc1/StatefulPartitionedCallЖ
activation_6/PartitionedCallPartitionedCall-l1_inter_fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_140462
activation_6/PartitionedCall─
$l1_inter_fc2/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0l1_inter_fc2_14059l1_inter_fc2_14061*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc2_layer_call_and_return_conditional_losses_140582&
$l1_inter_fc2/StatefulPartitionedCallЖ
activation_7/PartitionedCallPartitionedCall-l1_inter_fc2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_7_layer_call_and_return_conditional_losses_140692
activation_7/PartitionedCallю
IdentityIdentity%activation_7/PartitionedCall:output:0%^l1_inter_fc0/StatefulPartitionedCall%^l1_inter_fc1/StatefulPartitionedCall%^l1_inter_fc2/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 2L
$l1_inter_fc0/StatefulPartitionedCall$l1_inter_fc0/StatefulPartitionedCall2L
$l1_inter_fc1/StatefulPartitionedCall$l1_inter_fc1/StatefulPartitionedCall2L
$l1_inter_fc2/StatefulPartitionedCall$l1_inter_fc2/StatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╙
╝
C__inference_l3_inter_layer_call_and_return_conditional_losses_14230
l1_inter_fc0_input%
l1_inter_fc0_14211:	АP 
l1_inter_fc0_14213:P$
l1_inter_fc1_14217:P( 
l1_inter_fc1_14219:($
l1_inter_fc2_14223:( 
l1_inter_fc2_14225:
identityИв$l1_inter_fc0/StatefulPartitionedCallв$l1_inter_fc1/StatefulPartitionedCallв$l1_inter_fc2/StatefulPartitionedCall▒
$l1_inter_fc0/StatefulPartitionedCallStatefulPartitionedCalll1_inter_fc0_inputl1_inter_fc0_14211l1_inter_fc0_14213*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc0_layer_call_and_return_conditional_losses_140122&
$l1_inter_fc0/StatefulPartitionedCallЖ
activation_5/PartitionedCallPartitionedCall-l1_inter_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_140232
activation_5/PartitionedCall─
$l1_inter_fc1/StatefulPartitionedCallStatefulPartitionedCall%activation_5/PartitionedCall:output:0l1_inter_fc1_14217l1_inter_fc1_14219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc1_layer_call_and_return_conditional_losses_140352&
$l1_inter_fc1/StatefulPartitionedCallЖ
activation_6/PartitionedCallPartitionedCall-l1_inter_fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_140462
activation_6/PartitionedCall─
$l1_inter_fc2/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0l1_inter_fc2_14223l1_inter_fc2_14225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc2_layer_call_and_return_conditional_losses_140582&
$l1_inter_fc2/StatefulPartitionedCallЖ
activation_7/PartitionedCallPartitionedCall-l1_inter_fc2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_7_layer_call_and_return_conditional_losses_140692
activation_7/PartitionedCallю
IdentityIdentity%activation_7/PartitionedCall:output:0%^l1_inter_fc0/StatefulPartitionedCall%^l1_inter_fc1/StatefulPartitionedCall%^l1_inter_fc2/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 2L
$l1_inter_fc0/StatefulPartitionedCall$l1_inter_fc0/StatefulPartitionedCall2L
$l1_inter_fc1/StatefulPartitionedCall$l1_inter_fc1/StatefulPartitionedCall2L
$l1_inter_fc2/StatefulPartitionedCall$l1_inter_fc2/StatefulPartitionedCall:\ X
(
_output_shapes
:         А
,
_user_specified_namel1_inter_fc0_input
┬
H
,__inference_activation_7_layer_call_fn_14442

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_7_layer_call_and_return_conditional_losses_140692
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Б
М
!__inference__traced_restore_14511
file_prefix7
$assignvariableop_l1_inter_fc0_kernel:	АP2
$assignvariableop_1_l1_inter_fc0_bias:P8
&assignvariableop_2_l1_inter_fc1_kernel:P(2
$assignvariableop_3_l1_inter_fc1_bias:(8
&assignvariableop_4_l1_inter_fc2_kernel:(2
$assignvariableop_5_l1_inter_fc2_bias:

identity_7ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5ё
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¤
valueєBЁB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЬ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
RestoreV2/shape_and_slices╬
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityг
AssignVariableOpAssignVariableOp$assignvariableop_l1_inter_fc0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1й
AssignVariableOp_1AssignVariableOp$assignvariableop_1_l1_inter_fc0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2л
AssignVariableOp_2AssignVariableOp&assignvariableop_2_l1_inter_fc1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3й
AssignVariableOp_3AssignVariableOp$assignvariableop_3_l1_inter_fc1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4л
AssignVariableOp_4AssignVariableOp&assignvariableop_4_l1_inter_fc2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5й
AssignVariableOp_5AssignVariableOp$assignvariableop_5_l1_inter_fc2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpф

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6╓

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
T0*
_output_shapes
: 2

Identity_7"!

identity_7Identity_7:output:0*!
_input_shapes
: : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
·&
К
 __inference__wrapped_model_13995
l1_inter_fc0_inputG
4l3_inter_l1_inter_fc0_matmul_readvariableop_resource:	АPC
5l3_inter_l1_inter_fc0_biasadd_readvariableop_resource:PF
4l3_inter_l1_inter_fc1_matmul_readvariableop_resource:P(C
5l3_inter_l1_inter_fc1_biasadd_readvariableop_resource:(F
4l3_inter_l1_inter_fc2_matmul_readvariableop_resource:(C
5l3_inter_l1_inter_fc2_biasadd_readvariableop_resource:
identityИв,l3_inter/l1_inter_fc0/BiasAdd/ReadVariableOpв+l3_inter/l1_inter_fc0/MatMul/ReadVariableOpв,l3_inter/l1_inter_fc1/BiasAdd/ReadVariableOpв+l3_inter/l1_inter_fc1/MatMul/ReadVariableOpв,l3_inter/l1_inter_fc2/BiasAdd/ReadVariableOpв+l3_inter/l1_inter_fc2/MatMul/ReadVariableOp╨
+l3_inter/l1_inter_fc0/MatMul/ReadVariableOpReadVariableOp4l3_inter_l1_inter_fc0_matmul_readvariableop_resource*
_output_shapes
:	АP*
dtype02-
+l3_inter/l1_inter_fc0/MatMul/ReadVariableOp┴
l3_inter/l1_inter_fc0/MatMulMatMull1_inter_fc0_input3l3_inter/l1_inter_fc0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2
l3_inter/l1_inter_fc0/MatMul╬
,l3_inter/l1_inter_fc0/BiasAdd/ReadVariableOpReadVariableOp5l3_inter_l1_inter_fc0_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02.
,l3_inter/l1_inter_fc0/BiasAdd/ReadVariableOp┘
l3_inter/l1_inter_fc0/BiasAddBiasAdd&l3_inter/l1_inter_fc0/MatMul:product:04l3_inter/l1_inter_fc0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2
l3_inter/l1_inter_fc0/BiasAddЪ
l3_inter/activation_5/ReluRelu&l3_inter/l1_inter_fc0/BiasAdd:output:0*
T0*'
_output_shapes
:         P2
l3_inter/activation_5/Relu╧
+l3_inter/l1_inter_fc1/MatMul/ReadVariableOpReadVariableOp4l3_inter_l1_inter_fc1_matmul_readvariableop_resource*
_output_shapes

:P(*
dtype02-
+l3_inter/l1_inter_fc1/MatMul/ReadVariableOp╫
l3_inter/l1_inter_fc1/MatMulMatMul(l3_inter/activation_5/Relu:activations:03l3_inter/l1_inter_fc1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2
l3_inter/l1_inter_fc1/MatMul╬
,l3_inter/l1_inter_fc1/BiasAdd/ReadVariableOpReadVariableOp5l3_inter_l1_inter_fc1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02.
,l3_inter/l1_inter_fc1/BiasAdd/ReadVariableOp┘
l3_inter/l1_inter_fc1/BiasAddBiasAdd&l3_inter/l1_inter_fc1/MatMul:product:04l3_inter/l1_inter_fc1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2
l3_inter/l1_inter_fc1/BiasAddЪ
l3_inter/activation_6/ReluRelu&l3_inter/l1_inter_fc1/BiasAdd:output:0*
T0*'
_output_shapes
:         (2
l3_inter/activation_6/Relu╧
+l3_inter/l1_inter_fc2/MatMul/ReadVariableOpReadVariableOp4l3_inter_l1_inter_fc2_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02-
+l3_inter/l1_inter_fc2/MatMul/ReadVariableOp╫
l3_inter/l1_inter_fc2/MatMulMatMul(l3_inter/activation_6/Relu:activations:03l3_inter/l1_inter_fc2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
l3_inter/l1_inter_fc2/MatMul╬
,l3_inter/l1_inter_fc2/BiasAdd/ReadVariableOpReadVariableOp5l3_inter_l1_inter_fc2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,l3_inter/l1_inter_fc2/BiasAdd/ReadVariableOp┘
l3_inter/l1_inter_fc2/BiasAddBiasAdd&l3_inter/l1_inter_fc2/MatMul:product:04l3_inter/l1_inter_fc2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
l3_inter/l1_inter_fc2/BiasAddЪ
l3_inter/activation_7/ReluRelu&l3_inter/l1_inter_fc2/BiasAdd:output:0*
T0*'
_output_shapes
:         2
l3_inter/activation_7/ReluУ
IdentityIdentity(l3_inter/activation_7/Relu:activations:0-^l3_inter/l1_inter_fc0/BiasAdd/ReadVariableOp,^l3_inter/l1_inter_fc0/MatMul/ReadVariableOp-^l3_inter/l1_inter_fc1/BiasAdd/ReadVariableOp,^l3_inter/l1_inter_fc1/MatMul/ReadVariableOp-^l3_inter/l1_inter_fc2/BiasAdd/ReadVariableOp,^l3_inter/l1_inter_fc2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 2\
,l3_inter/l1_inter_fc0/BiasAdd/ReadVariableOp,l3_inter/l1_inter_fc0/BiasAdd/ReadVariableOp2Z
+l3_inter/l1_inter_fc0/MatMul/ReadVariableOp+l3_inter/l1_inter_fc0/MatMul/ReadVariableOp2\
,l3_inter/l1_inter_fc1/BiasAdd/ReadVariableOp,l3_inter/l1_inter_fc1/BiasAdd/ReadVariableOp2Z
+l3_inter/l1_inter_fc1/MatMul/ReadVariableOp+l3_inter/l1_inter_fc1/MatMul/ReadVariableOp2\
,l3_inter/l1_inter_fc2/BiasAdd/ReadVariableOp,l3_inter/l1_inter_fc2/BiasAdd/ReadVariableOp2Z
+l3_inter/l1_inter_fc2/MatMul/ReadVariableOp+l3_inter/l1_inter_fc2/MatMul/ReadVariableOp:\ X
(
_output_shapes
:         А
,
_user_specified_namel1_inter_fc0_input
┬
H
,__inference_activation_5_layer_call_fn_14384

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_140232
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         P:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
▀
c
G__inference_activation_5_layer_call_and_return_conditional_losses_14379

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         P2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         P:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
╙
╝
C__inference_l3_inter_layer_call_and_return_conditional_losses_14252
l1_inter_fc0_input%
l1_inter_fc0_14233:	АP 
l1_inter_fc0_14235:P$
l1_inter_fc1_14239:P( 
l1_inter_fc1_14241:($
l1_inter_fc2_14245:( 
l1_inter_fc2_14247:
identityИв$l1_inter_fc0/StatefulPartitionedCallв$l1_inter_fc1/StatefulPartitionedCallв$l1_inter_fc2/StatefulPartitionedCall▒
$l1_inter_fc0/StatefulPartitionedCallStatefulPartitionedCalll1_inter_fc0_inputl1_inter_fc0_14233l1_inter_fc0_14235*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc0_layer_call_and_return_conditional_losses_140122&
$l1_inter_fc0/StatefulPartitionedCallЖ
activation_5/PartitionedCallPartitionedCall-l1_inter_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_140232
activation_5/PartitionedCall─
$l1_inter_fc1/StatefulPartitionedCallStatefulPartitionedCall%activation_5/PartitionedCall:output:0l1_inter_fc1_14239l1_inter_fc1_14241*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc1_layer_call_and_return_conditional_losses_140352&
$l1_inter_fc1/StatefulPartitionedCallЖ
activation_6/PartitionedCallPartitionedCall-l1_inter_fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_140462
activation_6/PartitionedCall─
$l1_inter_fc2/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0l1_inter_fc2_14245l1_inter_fc2_14247*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc2_layer_call_and_return_conditional_losses_140582&
$l1_inter_fc2/StatefulPartitionedCallЖ
activation_7/PartitionedCallPartitionedCall-l1_inter_fc2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_7_layer_call_and_return_conditional_losses_140692
activation_7/PartitionedCallю
IdentityIdentity%activation_7/PartitionedCall:output:0%^l1_inter_fc0/StatefulPartitionedCall%^l1_inter_fc1/StatefulPartitionedCall%^l1_inter_fc2/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 2L
$l1_inter_fc0/StatefulPartitionedCall$l1_inter_fc0/StatefulPartitionedCall2L
$l1_inter_fc1/StatefulPartitionedCall$l1_inter_fc1/StatefulPartitionedCall2L
$l1_inter_fc2/StatefulPartitionedCall$l1_inter_fc2/StatefulPartitionedCall:\ X
(
_output_shapes
:         А
,
_user_specified_namel1_inter_fc0_input
╙	
°
G__inference_l1_inter_fc1_layer_call_and_return_conditional_losses_14035

inputs0
matmul_readvariableop_resource:P(-
biasadd_readvariableop_resource:(
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         (2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
д
Ъ
,__inference_l1_inter_fc0_layer_call_fn_14374

inputs
unknown:	АP
	unknown_0:P
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc0_layer_call_and_return_conditional_losses_140122
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╙	
°
G__inference_l1_inter_fc1_layer_call_and_return_conditional_losses_14394

inputs0
matmul_readvariableop_resource:P(-
biasadd_readvariableop_resource:(
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         (2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
┬
H
,__inference_activation_6_layer_call_fn_14413

inputs
identity┼
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_140462
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         (2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         (:O K
'
_output_shapes
:         (
 
_user_specified_nameinputs
К
Э
__inference__traced_save_14483
file_prefix2
.savev2_l1_inter_fc0_kernel_read_readvariableop0
,savev2_l1_inter_fc0_bias_read_readvariableop2
.savev2_l1_inter_fc1_kernel_read_readvariableop0
,savev2_l1_inter_fc1_bias_read_readvariableop2
.savev2_l1_inter_fc2_kernel_read_readvariableop0
,savev2_l1_inter_fc2_bias_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameы
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¤
valueєBЁB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЦ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B 2
SaveV2/shape_and_slices┌
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_l1_inter_fc0_kernel_read_readvariableop,savev2_l1_inter_fc0_bias_read_readvariableop.savev2_l1_inter_fc1_kernel_read_readvariableop,savev2_l1_inter_fc1_bias_read_readvariableop.savev2_l1_inter_fc2_kernel_read_readvariableop,savev2_l1_inter_fc2_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
	22
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*H
_input_shapes7
5: :	АP:P:P(:(:(:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	АP: 

_output_shapes
:P:$ 

_output_shapes

:P(: 

_output_shapes
:(:$ 

_output_shapes

:(: 

_output_shapes
::

_output_shapes
: 
п
░
C__inference_l3_inter_layer_call_and_return_conditional_losses_14176

inputs%
l1_inter_fc0_14157:	АP 
l1_inter_fc0_14159:P$
l1_inter_fc1_14163:P( 
l1_inter_fc1_14165:($
l1_inter_fc2_14169:( 
l1_inter_fc2_14171:
identityИв$l1_inter_fc0/StatefulPartitionedCallв$l1_inter_fc1/StatefulPartitionedCallв$l1_inter_fc2/StatefulPartitionedCallе
$l1_inter_fc0/StatefulPartitionedCallStatefulPartitionedCallinputsl1_inter_fc0_14157l1_inter_fc0_14159*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc0_layer_call_and_return_conditional_losses_140122&
$l1_inter_fc0/StatefulPartitionedCallЖ
activation_5/PartitionedCallPartitionedCall-l1_inter_fc0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_5_layer_call_and_return_conditional_losses_140232
activation_5/PartitionedCall─
$l1_inter_fc1/StatefulPartitionedCallStatefulPartitionedCall%activation_5/PartitionedCall:output:0l1_inter_fc1_14163l1_inter_fc1_14165*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc1_layer_call_and_return_conditional_losses_140352&
$l1_inter_fc1/StatefulPartitionedCallЖ
activation_6/PartitionedCallPartitionedCall-l1_inter_fc1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         (* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_6_layer_call_and_return_conditional_losses_140462
activation_6/PartitionedCall─
$l1_inter_fc2/StatefulPartitionedCallStatefulPartitionedCall%activation_6/PartitionedCall:output:0l1_inter_fc2_14169l1_inter_fc2_14171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc2_layer_call_and_return_conditional_losses_140582&
$l1_inter_fc2/StatefulPartitionedCallЖ
activation_7/PartitionedCallPartitionedCall-l1_inter_fc2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_7_layer_call_and_return_conditional_losses_140692
activation_7/PartitionedCallю
IdentityIdentity%activation_7/PartitionedCall:output:0%^l1_inter_fc0/StatefulPartitionedCall%^l1_inter_fc1/StatefulPartitionedCall%^l1_inter_fc2/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 2L
$l1_inter_fc0/StatefulPartitionedCall$l1_inter_fc0/StatefulPartitionedCall2L
$l1_inter_fc1/StatefulPartitionedCall$l1_inter_fc1/StatefulPartitionedCall2L
$l1_inter_fc2/StatefulPartitionedCall$l1_inter_fc2/StatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▀
c
G__inference_activation_6_layer_call_and_return_conditional_losses_14408

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         (2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         (2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         (:O K
'
_output_shapes
:         (
 
_user_specified_nameinputs
ш
О
(__inference_l3_inter_layer_call_fn_14208
l1_inter_fc0_input
unknown:	АP
	unknown_0:P
	unknown_1:P(
	unknown_2:(
	unknown_3:(
	unknown_4:
identityИвStatefulPartitionedCall│
StatefulPartitionedCallStatefulPartitionedCalll1_inter_fc0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_l3_inter_layer_call_and_return_conditional_losses_141762
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
(
_output_shapes
:         А
,
_user_specified_namel1_inter_fc0_input
─
В
(__inference_l3_inter_layer_call_fn_14338

inputs
unknown:	АP
	unknown_0:P
	unknown_1:P(
	unknown_2:(
	unknown_3:(
	unknown_4:
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_l3_inter_layer_call_and_return_conditional_losses_140722
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Э!
╡
C__inference_l3_inter_layer_call_and_return_conditional_losses_14296

inputs>
+l1_inter_fc0_matmul_readvariableop_resource:	АP:
,l1_inter_fc0_biasadd_readvariableop_resource:P=
+l1_inter_fc1_matmul_readvariableop_resource:P(:
,l1_inter_fc1_biasadd_readvariableop_resource:(=
+l1_inter_fc2_matmul_readvariableop_resource:(:
,l1_inter_fc2_biasadd_readvariableop_resource:
identityИв#l1_inter_fc0/BiasAdd/ReadVariableOpв"l1_inter_fc0/MatMul/ReadVariableOpв#l1_inter_fc1/BiasAdd/ReadVariableOpв"l1_inter_fc1/MatMul/ReadVariableOpв#l1_inter_fc2/BiasAdd/ReadVariableOpв"l1_inter_fc2/MatMul/ReadVariableOp╡
"l1_inter_fc0/MatMul/ReadVariableOpReadVariableOp+l1_inter_fc0_matmul_readvariableop_resource*
_output_shapes
:	АP*
dtype02$
"l1_inter_fc0/MatMul/ReadVariableOpЪ
l1_inter_fc0/MatMulMatMulinputs*l1_inter_fc0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2
l1_inter_fc0/MatMul│
#l1_inter_fc0/BiasAdd/ReadVariableOpReadVariableOp,l1_inter_fc0_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02%
#l1_inter_fc0/BiasAdd/ReadVariableOp╡
l1_inter_fc0/BiasAddBiasAddl1_inter_fc0/MatMul:product:0+l1_inter_fc0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2
l1_inter_fc0/BiasAdd
activation_5/ReluRelul1_inter_fc0/BiasAdd:output:0*
T0*'
_output_shapes
:         P2
activation_5/Relu┤
"l1_inter_fc1/MatMul/ReadVariableOpReadVariableOp+l1_inter_fc1_matmul_readvariableop_resource*
_output_shapes

:P(*
dtype02$
"l1_inter_fc1/MatMul/ReadVariableOp│
l1_inter_fc1/MatMulMatMulactivation_5/Relu:activations:0*l1_inter_fc1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2
l1_inter_fc1/MatMul│
#l1_inter_fc1/BiasAdd/ReadVariableOpReadVariableOp,l1_inter_fc1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02%
#l1_inter_fc1/BiasAdd/ReadVariableOp╡
l1_inter_fc1/BiasAddBiasAddl1_inter_fc1/MatMul:product:0+l1_inter_fc1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2
l1_inter_fc1/BiasAdd
activation_6/ReluRelul1_inter_fc1/BiasAdd:output:0*
T0*'
_output_shapes
:         (2
activation_6/Relu┤
"l1_inter_fc2/MatMul/ReadVariableOpReadVariableOp+l1_inter_fc2_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02$
"l1_inter_fc2/MatMul/ReadVariableOp│
l1_inter_fc2/MatMulMatMulactivation_6/Relu:activations:0*l1_inter_fc2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
l1_inter_fc2/MatMul│
#l1_inter_fc2/BiasAdd/ReadVariableOpReadVariableOp,l1_inter_fc2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#l1_inter_fc2/BiasAdd/ReadVariableOp╡
l1_inter_fc2/BiasAddBiasAddl1_inter_fc2/MatMul:product:0+l1_inter_fc2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
l1_inter_fc2/BiasAdd
activation_7/ReluRelul1_inter_fc2/BiasAdd:output:0*
T0*'
_output_shapes
:         2
activation_7/Relu╘
IdentityIdentityactivation_7/Relu:activations:0$^l1_inter_fc0/BiasAdd/ReadVariableOp#^l1_inter_fc0/MatMul/ReadVariableOp$^l1_inter_fc1/BiasAdd/ReadVariableOp#^l1_inter_fc1/MatMul/ReadVariableOp$^l1_inter_fc2/BiasAdd/ReadVariableOp#^l1_inter_fc2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 2J
#l1_inter_fc0/BiasAdd/ReadVariableOp#l1_inter_fc0/BiasAdd/ReadVariableOp2H
"l1_inter_fc0/MatMul/ReadVariableOp"l1_inter_fc0/MatMul/ReadVariableOp2J
#l1_inter_fc1/BiasAdd/ReadVariableOp#l1_inter_fc1/BiasAdd/ReadVariableOp2H
"l1_inter_fc1/MatMul/ReadVariableOp"l1_inter_fc1/MatMul/ReadVariableOp2J
#l1_inter_fc2/BiasAdd/ReadVariableOp#l1_inter_fc2/BiasAdd/ReadVariableOp2H
"l1_inter_fc2/MatMul/ReadVariableOp"l1_inter_fc2/MatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╫	
∙
G__inference_l1_inter_fc0_layer_call_and_return_conditional_losses_14365

inputs1
matmul_readvariableop_resource:	АP-
biasadd_readvariableop_resource:P
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	АP*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ш
О
(__inference_l3_inter_layer_call_fn_14087
l1_inter_fc0_input
unknown:	АP
	unknown_0:P
	unknown_1:P(
	unknown_2:(
	unknown_3:(
	unknown_4:
identityИвStatefulPartitionedCall│
StatefulPartitionedCallStatefulPartitionedCalll1_inter_fc0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_l3_inter_layer_call_and_return_conditional_losses_140722
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
(
_output_shapes
:         А
,
_user_specified_namel1_inter_fc0_input
▀
c
G__inference_activation_5_layer_call_and_return_conditional_losses_14023

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         P2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         P2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         P:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
б
Щ
,__inference_l1_inter_fc2_layer_call_fn_14432

inputs
unknown:(
	unknown_0:
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_l1_inter_fc2_layer_call_and_return_conditional_losses_140582
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         (: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         (
 
_user_specified_nameinputs
└
Й
#__inference_signature_wrapper_14271
l1_inter_fc0_input
unknown:	АP
	unknown_0:P
	unknown_1:P(
	unknown_2:(
	unknown_3:(
	unknown_4:
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCalll1_inter_fc0_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_139952
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
(
_output_shapes
:         А
,
_user_specified_namel1_inter_fc0_input
▀
c
G__inference_activation_7_layer_call_and_return_conditional_losses_14069

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╙	
°
G__inference_l1_inter_fc2_layer_call_and_return_conditional_losses_14058

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         (: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         (
 
_user_specified_nameinputs
─
В
(__inference_l3_inter_layer_call_fn_14355

inputs
unknown:	АP
	unknown_0:P
	unknown_1:P(
	unknown_2:(
	unknown_3:(
	unknown_4:
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_l3_inter_layer_call_and_return_conditional_losses_141762
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▀
c
G__inference_activation_6_layer_call_and_return_conditional_losses_14046

inputs
identityN
ReluReluinputs*
T0*'
_output_shapes
:         (2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:         (2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         (:O K
'
_output_shapes
:         (
 
_user_specified_nameinputs
Э!
╡
C__inference_l3_inter_layer_call_and_return_conditional_losses_14321

inputs>
+l1_inter_fc0_matmul_readvariableop_resource:	АP:
,l1_inter_fc0_biasadd_readvariableop_resource:P=
+l1_inter_fc1_matmul_readvariableop_resource:P(:
,l1_inter_fc1_biasadd_readvariableop_resource:(=
+l1_inter_fc2_matmul_readvariableop_resource:(:
,l1_inter_fc2_biasadd_readvariableop_resource:
identityИв#l1_inter_fc0/BiasAdd/ReadVariableOpв"l1_inter_fc0/MatMul/ReadVariableOpв#l1_inter_fc1/BiasAdd/ReadVariableOpв"l1_inter_fc1/MatMul/ReadVariableOpв#l1_inter_fc2/BiasAdd/ReadVariableOpв"l1_inter_fc2/MatMul/ReadVariableOp╡
"l1_inter_fc0/MatMul/ReadVariableOpReadVariableOp+l1_inter_fc0_matmul_readvariableop_resource*
_output_shapes
:	АP*
dtype02$
"l1_inter_fc0/MatMul/ReadVariableOpЪ
l1_inter_fc0/MatMulMatMulinputs*l1_inter_fc0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2
l1_inter_fc0/MatMul│
#l1_inter_fc0/BiasAdd/ReadVariableOpReadVariableOp,l1_inter_fc0_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype02%
#l1_inter_fc0/BiasAdd/ReadVariableOp╡
l1_inter_fc0/BiasAddBiasAddl1_inter_fc0/MatMul:product:0+l1_inter_fc0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P2
l1_inter_fc0/BiasAdd
activation_5/ReluRelul1_inter_fc0/BiasAdd:output:0*
T0*'
_output_shapes
:         P2
activation_5/Relu┤
"l1_inter_fc1/MatMul/ReadVariableOpReadVariableOp+l1_inter_fc1_matmul_readvariableop_resource*
_output_shapes

:P(*
dtype02$
"l1_inter_fc1/MatMul/ReadVariableOp│
l1_inter_fc1/MatMulMatMulactivation_5/Relu:activations:0*l1_inter_fc1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2
l1_inter_fc1/MatMul│
#l1_inter_fc1/BiasAdd/ReadVariableOpReadVariableOp,l1_inter_fc1_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype02%
#l1_inter_fc1/BiasAdd/ReadVariableOp╡
l1_inter_fc1/BiasAddBiasAddl1_inter_fc1/MatMul:product:0+l1_inter_fc1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (2
l1_inter_fc1/BiasAdd
activation_6/ReluRelul1_inter_fc1/BiasAdd:output:0*
T0*'
_output_shapes
:         (2
activation_6/Relu┤
"l1_inter_fc2/MatMul/ReadVariableOpReadVariableOp+l1_inter_fc2_matmul_readvariableop_resource*
_output_shapes

:(*
dtype02$
"l1_inter_fc2/MatMul/ReadVariableOp│
l1_inter_fc2/MatMulMatMulactivation_6/Relu:activations:0*l1_inter_fc2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
l1_inter_fc2/MatMul│
#l1_inter_fc2/BiasAdd/ReadVariableOpReadVariableOp,l1_inter_fc2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#l1_inter_fc2/BiasAdd/ReadVariableOp╡
l1_inter_fc2/BiasAddBiasAddl1_inter_fc2/MatMul:product:0+l1_inter_fc2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
l1_inter_fc2/BiasAdd
activation_7/ReluRelul1_inter_fc2/BiasAdd:output:0*
T0*'
_output_shapes
:         2
activation_7/Relu╘
IdentityIdentityactivation_7/Relu:activations:0$^l1_inter_fc0/BiasAdd/ReadVariableOp#^l1_inter_fc0/MatMul/ReadVariableOp$^l1_inter_fc1/BiasAdd/ReadVariableOp#^l1_inter_fc1/MatMul/ReadVariableOp$^l1_inter_fc2/BiasAdd/ReadVariableOp#^l1_inter_fc2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : : : : : 2J
#l1_inter_fc0/BiasAdd/ReadVariableOp#l1_inter_fc0/BiasAdd/ReadVariableOp2H
"l1_inter_fc0/MatMul/ReadVariableOp"l1_inter_fc0/MatMul/ReadVariableOp2J
#l1_inter_fc1/BiasAdd/ReadVariableOp#l1_inter_fc1/BiasAdd/ReadVariableOp2H
"l1_inter_fc1/MatMul/ReadVariableOp"l1_inter_fc1/MatMul/ReadVariableOp2J
#l1_inter_fc2/BiasAdd/ReadVariableOp#l1_inter_fc2/BiasAdd/ReadVariableOp2H
"l1_inter_fc2/MatMul/ReadVariableOp"l1_inter_fc2/MatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╞
serving_default▓
R
l1_inter_fc0_input<
$serving_default_l1_inter_fc0_input:0         А@
activation_70
StatefulPartitionedCall:0         tensorflow/serving/predict:мн
╢)
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
M_default_save_signature
*N&call_and_return_all_conditional_losses
O__call__"▐&
_tf_keras_sequential┐&{"name": "l3_inter", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "l3_inter", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l1_inter_fc0_input"}}, {"class_name": "Dense", "config": {"name": "l1_inter_fc0", "trainable": true, "dtype": "float32", "units": 80, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "l1_inter_fc1", "trainable": true, "dtype": "float32", "units": 40, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "Dense", "config": {"name": "l1_inter_fc2", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}}]}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 12}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 512]}, "float32", "l1_inter_fc0_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "l3_inter", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l1_inter_fc0_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "l1_inter_fc0", "trainable": true, "dtype": "float32", "units": 80, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}, {"class_name": "Dense", "config": {"name": "l1_inter_fc1", "trainable": true, "dtype": "float32", "units": 40, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "l1_inter_fc2", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}, {"class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 10}]}}}
╫

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*P&call_and_return_all_conditional_losses
Q__call__"▓
_tf_keras_layerШ{"name": "l1_inter_fc0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "l1_inter_fc0", "trainable": true, "dtype": "float32", "units": 80, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}, "shared_object_id": 12}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
ь
regularization_losses
	variables
trainable_variables
	keras_api
*R&call_and_return_all_conditional_losses
S__call__"▌
_tf_keras_layer├{"name": "activation_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_5", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 4}
╒

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*T&call_and_return_all_conditional_losses
U__call__"░
_tf_keras_layerЦ{"name": "l1_inter_fc1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "l1_inter_fc1", "trainable": true, "dtype": "float32", "units": 40, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 80}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80]}}
ь
regularization_losses
	variables
trainable_variables
	keras_api
*V&call_and_return_all_conditional_losses
W__call__"▌
_tf_keras_layer├{"name": "activation_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_6", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 7}
╒

 kernel
!bias
"regularization_losses
#	variables
$trainable_variables
%	keras_api
*X&call_and_return_all_conditional_losses
Y__call__"░
_tf_keras_layerЦ{"name": "l1_inter_fc2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "l1_inter_fc2", "trainable": true, "dtype": "float32", "units": 20, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 40}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40]}}
э
&regularization_losses
'	variables
(trainable_variables
)	keras_api
*Z&call_and_return_all_conditional_losses
[__call__"▐
_tf_keras_layer─{"name": "activation_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_7", "trainable": true, "dtype": "float32", "activation": "relu"}, "shared_object_id": 10}
 "
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
J
0
1
2
3
 4
!5"
trackable_list_wrapper
╩
regularization_losses
*layer_regularization_losses
+metrics

,layers
-non_trainable_variables
	variables
.layer_metrics
	trainable_variables
O__call__
M_default_save_signature
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
,
\serving_default"
signature_map
&:$	АP2l1_inter_fc0/kernel
:P2l1_inter_fc0/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
н
regularization_losses
/layer_regularization_losses
0metrics

1layers
2non_trainable_variables
	variables
3layer_metrics
trainable_variables
Q__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
regularization_losses
4layer_regularization_losses
5metrics

6layers
7non_trainable_variables
	variables
8layer_metrics
trainable_variables
S__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
%:#P(2l1_inter_fc1/kernel
:(2l1_inter_fc1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
н
regularization_losses
9layer_regularization_losses
:metrics

;layers
<non_trainable_variables
	variables
=layer_metrics
trainable_variables
U__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
regularization_losses
>layer_regularization_losses
?metrics

@layers
Anon_trainable_variables
	variables
Blayer_metrics
trainable_variables
W__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
%:#(2l1_inter_fc2/kernel
:2l1_inter_fc2/bias
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
н
"regularization_losses
Clayer_regularization_losses
Dmetrics

Elayers
Fnon_trainable_variables
#	variables
Glayer_metrics
$trainable_variables
Y__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
&regularization_losses
Hlayer_regularization_losses
Imetrics

Jlayers
Knon_trainable_variables
'	variables
Llayer_metrics
(trainable_variables
[__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
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
ъ2ч
 __inference__wrapped_model_13995┬
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *2в/
-К*
l1_inter_fc0_input         А
┌2╫
C__inference_l3_inter_layer_call_and_return_conditional_losses_14296
C__inference_l3_inter_layer_call_and_return_conditional_losses_14321
C__inference_l3_inter_layer_call_and_return_conditional_losses_14230
C__inference_l3_inter_layer_call_and_return_conditional_losses_14252└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ю2ы
(__inference_l3_inter_layer_call_fn_14087
(__inference_l3_inter_layer_call_fn_14338
(__inference_l3_inter_layer_call_fn_14355
(__inference_l3_inter_layer_call_fn_14208└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ё2ю
G__inference_l1_inter_fc0_layer_call_and_return_conditional_losses_14365в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_l1_inter_fc0_layer_call_fn_14374в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_activation_5_layer_call_and_return_conditional_losses_14379в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_activation_5_layer_call_fn_14384в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_l1_inter_fc1_layer_call_and_return_conditional_losses_14394в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_l1_inter_fc1_layer_call_fn_14403в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_activation_6_layer_call_and_return_conditional_losses_14408в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_activation_6_layer_call_fn_14413в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_l1_inter_fc2_layer_call_and_return_conditional_losses_14423в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_l1_inter_fc2_layer_call_fn_14432в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ё2ю
G__inference_activation_7_layer_call_and_return_conditional_losses_14437в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╓2╙
,__inference_activation_7_layer_call_fn_14442в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╒B╥
#__inference_signature_wrapper_14271l1_inter_fc0_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 и
 __inference__wrapped_model_13995Г !<в9
2в/
-К*
l1_inter_fc0_input         А
к ";к8
6
activation_7&К#
activation_7         г
G__inference_activation_5_layer_call_and_return_conditional_losses_14379X/в,
%в"
 К
inputs         P
к "%в"
К
0         P
Ъ {
,__inference_activation_5_layer_call_fn_14384K/в,
%в"
 К
inputs         P
к "К         Pг
G__inference_activation_6_layer_call_and_return_conditional_losses_14408X/в,
%в"
 К
inputs         (
к "%в"
К
0         (
Ъ {
,__inference_activation_6_layer_call_fn_14413K/в,
%в"
 К
inputs         (
к "К         (г
G__inference_activation_7_layer_call_and_return_conditional_losses_14437X/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ {
,__inference_activation_7_layer_call_fn_14442K/в,
%в"
 К
inputs         
к "К         и
G__inference_l1_inter_fc0_layer_call_and_return_conditional_losses_14365]0в-
&в#
!К
inputs         А
к "%в"
К
0         P
Ъ А
,__inference_l1_inter_fc0_layer_call_fn_14374P0в-
&в#
!К
inputs         А
к "К         Pз
G__inference_l1_inter_fc1_layer_call_and_return_conditional_losses_14394\/в,
%в"
 К
inputs         P
к "%в"
К
0         (
Ъ 
,__inference_l1_inter_fc1_layer_call_fn_14403O/в,
%в"
 К
inputs         P
к "К         (з
G__inference_l1_inter_fc2_layer_call_and_return_conditional_losses_14423\ !/в,
%в"
 К
inputs         (
к "%в"
К
0         
Ъ 
,__inference_l1_inter_fc2_layer_call_fn_14432O !/в,
%в"
 К
inputs         (
к "К         ╝
C__inference_l3_inter_layer_call_and_return_conditional_losses_14230u !DвA
:в7
-К*
l1_inter_fc0_input         А
p 

 
к "%в"
К
0         
Ъ ╝
C__inference_l3_inter_layer_call_and_return_conditional_losses_14252u !DвA
:в7
-К*
l1_inter_fc0_input         А
p

 
к "%в"
К
0         
Ъ ░
C__inference_l3_inter_layer_call_and_return_conditional_losses_14296i !8в5
.в+
!К
inputs         А
p 

 
к "%в"
К
0         
Ъ ░
C__inference_l3_inter_layer_call_and_return_conditional_losses_14321i !8в5
.в+
!К
inputs         А
p

 
к "%в"
К
0         
Ъ Ф
(__inference_l3_inter_layer_call_fn_14087h !DвA
:в7
-К*
l1_inter_fc0_input         А
p 

 
к "К         Ф
(__inference_l3_inter_layer_call_fn_14208h !DвA
:в7
-К*
l1_inter_fc0_input         А
p

 
к "К         И
(__inference_l3_inter_layer_call_fn_14338\ !8в5
.в+
!К
inputs         А
p 

 
к "К         И
(__inference_l3_inter_layer_call_fn_14355\ !8в5
.в+
!К
inputs         А
p

 
к "К         ┴
#__inference_signature_wrapper_14271Щ !RвO
в 
HкE
C
l1_inter_fc0_input-К*
l1_inter_fc0_input         А";к8
6
activation_7&К#
activation_7         