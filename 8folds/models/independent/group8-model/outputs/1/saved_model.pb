
ì¼
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
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718¹
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
Â
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ý
valueóBð Bé

layer_with_weights-0
layer-0
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
	regularization_losses

	variables
trainable_variables
	keras_api
 

0
1

0
1
­
layer_regularization_losses
regularization_losses

layers
	variables
layer_metrics
non_trainable_variables
trainable_variables
metrics
 
YW
VARIABLE_VALUEl3o_fc/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEl3o_fc/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
layer_regularization_losses
	regularization_losses

layers
layer_metrics

	variables
non_trainable_variables
trainable_variables
metrics
 
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

serving_default_l3o_fc_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
Ö
StatefulPartitionedCallStatefulPartitionedCallserving_default_l3o_fc_inputl3o_fc/kernell3o_fc/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_16580
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
à
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
GPU 2J 8 *'
f"R 
__inference__traced_save_16666
³
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_16682¤
Ç

 __inference__wrapped_model_16474
l3o_fc_input;
)l3o_l3o_fc_matmul_readvariableop_resource:
8
*l3o_l3o_fc_biasadd_readvariableop_resource:

identity¢!l3o/l3o_fc/BiasAdd/ReadVariableOp¢ l3o/l3o_fc/MatMul/ReadVariableOp®
 l3o/l3o_fc/MatMul/ReadVariableOpReadVariableOp)l3o_l3o_fc_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02"
 l3o/l3o_fc/MatMul/ReadVariableOp
l3o/l3o_fc/MatMulMatMull3o_fc_input(l3o/l3o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
l3o/l3o_fc/MatMul­
!l3o/l3o_fc/BiasAdd/ReadVariableOpReadVariableOp*l3o_l3o_fc_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02#
!l3o/l3o_fc/BiasAdd/ReadVariableOp­
l3o/l3o_fc/BiasAddBiasAddl3o/l3o_fc/MatMul:product:0)l3o/l3o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
l3o/l3o_fc/BiasAdd¶
IdentityIdentityl3o/l3o_fc/BiasAdd:output:0"^l3o/l3o_fc/BiasAdd/ReadVariableOp!^l3o/l3o_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2F
!l3o/l3o_fc/BiasAdd/ReadVariableOp!l3o/l3o_fc/BiasAdd/ReadVariableOp2D
 l3o/l3o_fc/MatMul/ReadVariableOp l3o/l3o_fc/MatMul/ReadVariableOp:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namel3o_fc_input


#__inference_signature_wrapper_16580
l3o_fc_input
unknown:

	unknown_0:

identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_164742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namel3o_fc_input
î
º
>__inference_l3o_layer_call_and_return_conditional_losses_16498

inputs
l3o_fc_16492:

l3o_fc_16494:

identity¢l3o_fc/StatefulPartitionedCall
l3o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl3o_fc_16492l3o_fc_16494*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_l3o_fc_layer_call_and_return_conditional_losses_164912 
l3o_fc/StatefulPartitionedCall
IdentityIdentity'l3o_fc/StatefulPartitionedCall:output:0^l3o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2@
l3o_fc/StatefulPartitionedCalll3o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡

#__inference_l3o_layer_call_fn_16551
l3o_fc_input
unknown:

	unknown_0:

identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_l3o_layer_call_and_return_conditional_losses_165352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namel3o_fc_input

Ï
!__inference__traced_restore_16682
file_prefix0
assignvariableop_l3o_fc_kernel:
,
assignvariableop_1_l3o_fc_bias:


identity_3¢AssignVariableOp¢AssignVariableOp_1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¡
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
RestoreV2/shape_and_slicesº
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

Identity
AssignVariableOpAssignVariableOpassignvariableop_l3o_fc_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1£
AssignVariableOp_1AssignVariableOpassignvariableop_1_l3o_fc_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_2

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


#__inference_l3o_layer_call_fn_16598

inputs
unknown:

	unknown_0:

identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_l3o_layer_call_and_return_conditional_losses_165352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í	
ò
A__inference_l3o_fc_layer_call_and_return_conditional_losses_16637

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

À
>__inference_l3o_layer_call_and_return_conditional_losses_16569
l3o_fc_input
l3o_fc_16563:

l3o_fc_16565:

identity¢l3o_fc/StatefulPartitionedCall
l3o_fc/StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputl3o_fc_16563l3o_fc_16565*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_l3o_fc_layer_call_and_return_conditional_losses_164912 
l3o_fc/StatefulPartitionedCall
IdentityIdentity'l3o_fc/StatefulPartitionedCall:output:0^l3o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2@
l3o_fc/StatefulPartitionedCalll3o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namel3o_fc_input


&__inference_l3o_fc_layer_call_fn_16627

inputs
unknown:

	unknown_0:

identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_l3o_fc_layer_call_and_return_conditional_losses_164912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó


>__inference_l3o_layer_call_and_return_conditional_losses_16618

inputs7
%l3o_fc_matmul_readvariableop_resource:
4
&l3o_fc_biasadd_readvariableop_resource:

identity¢l3o_fc/BiasAdd/ReadVariableOp¢l3o_fc/MatMul/ReadVariableOp¢
l3o_fc/MatMul/ReadVariableOpReadVariableOp%l3o_fc_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
l3o_fc/MatMul/ReadVariableOp
l3o_fc/MatMulMatMulinputs$l3o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
l3o_fc/MatMul¡
l3o_fc/BiasAdd/ReadVariableOpReadVariableOp&l3o_fc_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
l3o_fc/BiasAdd/ReadVariableOp
l3o_fc/BiasAddBiasAddl3o_fc/MatMul:product:0%l3o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
l3o_fc/BiasAddª
IdentityIdentityl3o_fc/BiasAdd:output:0^l3o_fc/BiasAdd/ReadVariableOp^l3o_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2>
l3o_fc/BiasAdd/ReadVariableOpl3o_fc/BiasAdd/ReadVariableOp2<
l3o_fc/MatMul/ReadVariableOpl3o_fc/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡

#__inference_l3o_layer_call_fn_16505
l3o_fc_input
unknown:

	unknown_0:

identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_l3o_layer_call_and_return_conditional_losses_164982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namel3o_fc_input


#__inference_l3o_layer_call_fn_16589

inputs
unknown:

	unknown_0:

identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_l3o_layer_call_and_return_conditional_losses_164982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
º
>__inference_l3o_layer_call_and_return_conditional_losses_16535

inputs
l3o_fc_16529:

l3o_fc_16531:

identity¢l3o_fc/StatefulPartitionedCall
l3o_fc/StatefulPartitionedCallStatefulPartitionedCallinputsl3o_fc_16529l3o_fc_16531*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_l3o_fc_layer_call_and_return_conditional_losses_164912 
l3o_fc/StatefulPartitionedCall
IdentityIdentity'l3o_fc/StatefulPartitionedCall:output:0^l3o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2@
l3o_fc/StatefulPartitionedCalll3o_fc/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó


>__inference_l3o_layer_call_and_return_conditional_losses_16608

inputs7
%l3o_fc_matmul_readvariableop_resource:
4
&l3o_fc_biasadd_readvariableop_resource:

identity¢l3o_fc/BiasAdd/ReadVariableOp¢l3o_fc/MatMul/ReadVariableOp¢
l3o_fc/MatMul/ReadVariableOpReadVariableOp%l3o_fc_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02
l3o_fc/MatMul/ReadVariableOp
l3o_fc/MatMulMatMulinputs$l3o_fc/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
l3o_fc/MatMul¡
l3o_fc/BiasAdd/ReadVariableOpReadVariableOp&l3o_fc_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
l3o_fc/BiasAdd/ReadVariableOp
l3o_fc/BiasAddBiasAddl3o_fc/MatMul:product:0%l3o_fc/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
l3o_fc/BiasAddª
IdentityIdentityl3o_fc/BiasAdd:output:0^l3o_fc/BiasAdd/ReadVariableOp^l3o_fc/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2>
l3o_fc/BiasAdd/ReadVariableOpl3o_fc/BiasAdd/ReadVariableOp2<
l3o_fc/MatMul/ReadVariableOpl3o_fc/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
Å
__inference__traced_save_16666
file_prefix,
(savev2_l3o_fc_kernel_read_readvariableop*
&savev2_l3o_fc_bias_read_readvariableop
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
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¡
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_l3o_fc_kernel_read_readvariableop&savev2_l3o_fc_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

À
>__inference_l3o_layer_call_and_return_conditional_losses_16560
l3o_fc_input
l3o_fc_16554:

l3o_fc_16556:

identity¢l3o_fc/StatefulPartitionedCall
l3o_fc/StatefulPartitionedCallStatefulPartitionedCalll3o_fc_inputl3o_fc_16554l3o_fc_16556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_l3o_fc_layer_call_and_return_conditional_losses_164912 
l3o_fc/StatefulPartitionedCall
IdentityIdentity'l3o_fc/StatefulPartitionedCall:output:0^l3o_fc/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2@
l3o_fc/StatefulPartitionedCalll3o_fc/StatefulPartitionedCall:U Q
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namel3o_fc_input
Í	
ò
A__inference_l3o_fc_layer_call_and_return_conditional_losses_16491

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
E
l3o_fc_input5
serving_default_l3o_fc_input:0ÿÿÿÿÿÿÿÿÿ:
l3o_fc0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:§A
Ú
layer_with_weights-0
layer-0
regularization_losses
	variables
trainable_variables
	keras_api

signatures
__call__
*&call_and_return_all_conditional_losses
_default_save_signature"÷
_tf_keras_sequentialØ{"name": "l3o", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "l3o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l3o_fc_input"}}, {"class_name": "Dense", "config": {"name": "l3o_fc", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 30}}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 30]}, "float32", "l3o_fc_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "l3o", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "l3o_fc_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "l3o_fc", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}]}}}
Ì

kernel
bias
	regularization_losses

	variables
trainable_variables
	keras_api
__call__
*&call_and_return_all_conditional_losses"§
_tf_keras_layer{"name": "l3o_fc", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "l3o_fc", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 30}}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30]}}
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Ê
layer_regularization_losses
regularization_losses

layers
	variables
layer_metrics
non_trainable_variables
trainable_variables
metrics
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
:
2l3o_fc/kernel
:
2l3o_fc/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
layer_regularization_losses
	regularization_losses

layers
layer_metrics

	variables
non_trainable_variables
trainable_variables
metrics
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
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
Ú2×
#__inference_l3o_layer_call_fn_16505
#__inference_l3o_layer_call_fn_16589
#__inference_l3o_layer_call_fn_16598
#__inference_l3o_layer_call_fn_16551À
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
Æ2Ã
>__inference_l3o_layer_call_and_return_conditional_losses_16608
>__inference_l3o_layer_call_and_return_conditional_losses_16618
>__inference_l3o_layer_call_and_return_conditional_losses_16560
>__inference_l3o_layer_call_and_return_conditional_losses_16569À
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
ã2à
 __inference__wrapped_model_16474»
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
annotationsª *+¢(
&#
l3o_fc_inputÿÿÿÿÿÿÿÿÿ
Ð2Í
&__inference_l3o_fc_layer_call_fn_16627¢
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
ë2è
A__inference_l3o_fc_layer_call_and_return_conditional_losses_16637¢
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
ÏBÌ
#__inference_signature_wrapper_16580l3o_fc_input"
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
 
 __inference__wrapped_model_16474l5¢2
+¢(
&#
l3o_fc_inputÿÿÿÿÿÿÿÿÿ
ª "/ª,
*
l3o_fc 
l3o_fcÿÿÿÿÿÿÿÿÿ
¡
A__inference_l3o_fc_layer_call_and_return_conditional_losses_16637\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 y
&__inference_l3o_fc_layer_call_fn_16627O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
¬
>__inference_l3o_layer_call_and_return_conditional_losses_16560j=¢:
3¢0
&#
l3o_fc_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¬
>__inference_l3o_layer_call_and_return_conditional_losses_16569j=¢:
3¢0
&#
l3o_fc_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¦
>__inference_l3o_layer_call_and_return_conditional_losses_16608d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¦
>__inference_l3o_layer_call_and_return_conditional_losses_16618d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
#__inference_l3o_layer_call_fn_16505]=¢:
3¢0
&#
l3o_fc_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

#__inference_l3o_layer_call_fn_16551]=¢:
3¢0
&#
l3o_fc_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
~
#__inference_l3o_layer_call_fn_16589W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
~
#__inference_l3o_layer_call_fn_16598W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
£
#__inference_signature_wrapper_16580|E¢B
¢ 
;ª8
6
l3o_fc_input&#
l3o_fc_inputÿÿÿÿÿÿÿÿÿ"/ª,
*
l3o_fc 
l3o_fcÿÿÿÿÿÿÿÿÿ
