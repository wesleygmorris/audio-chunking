╛┬
Ё┐
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
о
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58■щ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
Т
RMSprop/velocity/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/velocity/dense_1/bias
Л
1RMSprop/velocity/dense_1/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_1/bias*
_output_shapes
:*
dtype0
Ъ
RMSprop/velocity/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!RMSprop/velocity/dense_1/kernel
У
3RMSprop/velocity/dense_1/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_1/kernel*
_output_shapes

: *
dtype0
й
(RMSprop/velocity/lstm_1/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*9
shared_name*(RMSprop/velocity/lstm_1/lstm_cell_3/bias
в
<RMSprop/velocity/lstm_1/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOp(RMSprop/velocity/lstm_1/lstm_cell_3/bias*
_output_shapes	
:А*
dtype0
┼
4RMSprop/velocity/lstm_1/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*E
shared_name64RMSprop/velocity/lstm_1/lstm_cell_3/recurrent_kernel
╛
HRMSprop/velocity/lstm_1/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp4RMSprop/velocity/lstm_1/lstm_cell_3/recurrent_kernel*
_output_shapes
:	 А*
dtype0
▒
*RMSprop/velocity/lstm_1/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*;
shared_name,*RMSprop/velocity/lstm_1/lstm_cell_3/kernel
к
>RMSprop/velocity/lstm_1/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOp*RMSprop/velocity/lstm_1/lstm_cell_3/kernel*
_output_shapes
:	А*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
З
lstm_1/lstm_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*(
shared_namelstm_1/lstm_cell_3/bias
А
+lstm_1/lstm_cell_3/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_3/bias*
_output_shapes	
:А*
dtype0
г
#lstm_1/lstm_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*4
shared_name%#lstm_1/lstm_cell_3/recurrent_kernel
Ь
7lstm_1/lstm_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_3/recurrent_kernel*
_output_shapes
:	 А*
dtype0
П
lstm_1/lstm_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А**
shared_namelstm_1/lstm_cell_3/kernel
И
-lstm_1/lstm_cell_3/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_3/kernel*
_output_shapes
:	А*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
Д
serving_default_input_2Placeholder*,
_output_shapes
:         ш*
dtype0*!
shape:         ш
╕
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2lstm_1/lstm_cell_3/kernellstm_1/lstm_cell_3/bias#lstm_1/lstm_cell_3/recurrent_kerneldense_1/kerneldense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_110166

NoOpNoOp
О.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╔-
value┐-B╝- B╡-
┤
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
ж
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
'
&0
'1
(2
$3
%4*
'
&0
'1
(2
$3
%4*
* 
░
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
6
.trace_0
/trace_1
0trace_2
1trace_3* 
6
2trace_0
3trace_1
4trace_2
5trace_3* 
* 
Щ
6
_variables
7_iterations
8_learning_rate
9_index_dict
:_velocities
;
_momentums
<_average_gradients
=_update_step_xla*

>serving_default* 

&0
'1
(2*

&0
'1
(2*
* 
Я

?states
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Etrace_0
Ftrace_1
Gtrace_2
Htrace_3* 
6
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_3* 
* 
у
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S_random_generator
T
state_size

&kernel
'recurrent_kernel
(bias*
* 
* 
* 
* 
С
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Ztrace_0
[trace_1* 

\trace_0
]trace_1* 
* 

$0
%1*

$0
%1*
* 
У
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

ctrace_0* 

dtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_1/lstm_cell_3/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_1/lstm_cell_3/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_1/lstm_cell_3/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
0
1
2
3*

e0
f1
g2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
70
h1
i2
j3
k4
l5*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
h0
i1
j2
k3
l4*
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

&0
'1
(2*

&0
'1
(2*
* 
У
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

rtrace_0
strace_1* 

ttrace_0
utrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
v	variables
w	keras_api
	xtotal
	ycount*
H
z	variables
{	keras_api
	|total
	}count
~
_fn_kwargs*
L
	variables
А	keras_api

Бtotal

Вcount
Г
_fn_kwargs*
uo
VARIABLE_VALUE*RMSprop/velocity/lstm_1/lstm_cell_3/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE4RMSprop/velocity/lstm_1/lstm_cell_3/recurrent_kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(RMSprop/velocity/lstm_1/lstm_cell_3/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUERMSprop/velocity/dense_1/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUERMSprop/velocity/dense_1/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

x0
y1*

v	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

|0
}1*

z	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Б0
В1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
д
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp-lstm_1/lstm_cell_3/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_3/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_3/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp>RMSprop/velocity/lstm_1/lstm_cell_3/kernel/Read/ReadVariableOpHRMSprop/velocity/lstm_1/lstm_cell_3/recurrent_kernel/Read/ReadVariableOp<RMSprop/velocity/lstm_1/lstm_cell_3/bias/Read/ReadVariableOp3RMSprop/velocity/dense_1/kernel/Read/ReadVariableOp1RMSprop/velocity/dense_1/bias/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_112226
╖
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biaslstm_1/lstm_cell_3/kernel#lstm_1/lstm_cell_3/recurrent_kernellstm_1/lstm_cell_3/bias	iterationlearning_rate*RMSprop/velocity/lstm_1/lstm_cell_3/kernel4RMSprop/velocity/lstm_1/lstm_cell_3/recurrent_kernel(RMSprop/velocity/lstm_1/lstm_cell_3/biasRMSprop/velocity/dense_1/kernelRMSprop/velocity/dense_1/biastotal_2count_2total_1count_1totalcount*
Tin
2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_112290■Д
┐╒
▄
C__inference_model_1_layer_call_and_return_conditional_losses_110779

inputsC
0lstm_1_lstm_cell_3_split_readvariableop_resource:	АA
2lstm_1_lstm_cell_3_split_1_readvariableop_resource:	А=
*lstm_1_lstm_cell_3_readvariableop_resource:	 А;
)dense_1_tensordot_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identityИвdense_1/BiasAdd/ReadVariableOpв dense_1/Tensordot/ReadVariableOpв!lstm_1/lstm_cell_3/ReadVariableOpв#lstm_1/lstm_cell_3/ReadVariableOp_1в#lstm_1/lstm_cell_3/ReadVariableOp_2в#lstm_1/lstm_cell_3/ReadVariableOp_3в'lstm_1/lstm_cell_3/split/ReadVariableOpв)lstm_1/lstm_cell_3/split_1/ReadVariableOpвlstm_1/whileB
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : И
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:          Y
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : М
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:          j
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:ш         R
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskg
"lstm_1/lstm_cell_3/ones_like/ShapeShapelstm_1/zeros:output:0*
T0*
_output_shapes
:g
"lstm_1/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?░
lstm_1/lstm_cell_3/ones_likeFill+lstm_1/lstm_cell_3/ones_like/Shape:output:0+lstm_1/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          e
 lstm_1/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @й
lstm_1/lstm_cell_3/dropout/MulMul%lstm_1/lstm_cell_3/ones_like:output:0)lstm_1/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:          u
 lstm_1/lstm_cell_3/dropout/ShapeShape%lstm_1/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:▓
7lstm_1/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform)lstm_1/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0n
)lstm_1/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?▀
'lstm_1/lstm_cell_3/dropout/GreaterEqualGreaterEqual@lstm_1/lstm_cell_3/dropout/random_uniform/RandomUniform:output:02lstm_1/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          g
"lstm_1/lstm_cell_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▀
#lstm_1/lstm_cell_3/dropout/SelectV2SelectV2+lstm_1/lstm_cell_3/dropout/GreaterEqual:z:0"lstm_1/lstm_cell_3/dropout/Mul:z:0+lstm_1/lstm_cell_3/dropout/Const_1:output:0*
T0*'
_output_shapes
:          g
"lstm_1/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @н
 lstm_1/lstm_cell_3/dropout_1/MulMul%lstm_1/lstm_cell_3/ones_like:output:0+lstm_1/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:          w
"lstm_1/lstm_cell_3/dropout_1/ShapeShape%lstm_1/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:╢
9lstm_1/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0p
+lstm_1/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?х
)lstm_1/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualBlstm_1/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          i
$lstm_1/lstm_cell_3/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ч
%lstm_1/lstm_cell_3/dropout_1/SelectV2SelectV2-lstm_1/lstm_cell_3/dropout_1/GreaterEqual:z:0$lstm_1/lstm_cell_3/dropout_1/Mul:z:0-lstm_1/lstm_cell_3/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          g
"lstm_1/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @н
 lstm_1/lstm_cell_3/dropout_2/MulMul%lstm_1/lstm_cell_3/ones_like:output:0+lstm_1/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:          w
"lstm_1/lstm_cell_3/dropout_2/ShapeShape%lstm_1/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:╢
9lstm_1/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0p
+lstm_1/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?х
)lstm_1/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualBlstm_1/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          i
$lstm_1/lstm_cell_3/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ч
%lstm_1/lstm_cell_3/dropout_2/SelectV2SelectV2-lstm_1/lstm_cell_3/dropout_2/GreaterEqual:z:0$lstm_1/lstm_cell_3/dropout_2/Mul:z:0-lstm_1/lstm_cell_3/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          g
"lstm_1/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @н
 lstm_1/lstm_cell_3/dropout_3/MulMul%lstm_1/lstm_cell_3/ones_like:output:0+lstm_1/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:          w
"lstm_1/lstm_cell_3/dropout_3/ShapeShape%lstm_1/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:╢
9lstm_1/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_1/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0p
+lstm_1/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?х
)lstm_1/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualBlstm_1/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:04lstm_1/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          i
$lstm_1/lstm_cell_3/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ч
%lstm_1/lstm_cell_3/dropout_3/SelectV2SelectV2-lstm_1/lstm_cell_3/dropout_3/GreaterEqual:z:0$lstm_1/lstm_cell_3/dropout_3/Mul:z:0-lstm_1/lstm_cell_3/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          d
"lstm_1/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
'lstm_1/lstm_cell_3/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	А*
dtype0╫
lstm_1/lstm_cell_3/splitSplit+lstm_1/lstm_cell_3/split/split_dim:output:0/lstm_1/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitЩ
lstm_1/lstm_cell_3/MatMulMatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          Ы
lstm_1/lstm_cell_3/MatMul_1MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          Ы
lstm_1/lstm_cell_3/MatMul_2MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          Ы
lstm_1/lstm_cell_3/MatMul_3MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          f
$lstm_1/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Щ
)lstm_1/lstm_cell_3/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype0═
lstm_1/lstm_cell_3/split_1Split-lstm_1/lstm_cell_3/split_1/split_dim:output:01lstm_1/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitб
lstm_1/lstm_cell_3/BiasAddBiasAdd#lstm_1/lstm_cell_3/MatMul:product:0#lstm_1/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          е
lstm_1/lstm_cell_3/BiasAdd_1BiasAdd%lstm_1/lstm_cell_3/MatMul_1:product:0#lstm_1/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          е
lstm_1/lstm_cell_3/BiasAdd_2BiasAdd%lstm_1/lstm_cell_3/MatMul_2:product:0#lstm_1/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          е
lstm_1/lstm_cell_3/BiasAdd_3BiasAdd%lstm_1/lstm_cell_3/MatMul_3:product:0#lstm_1/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          Ф
lstm_1/lstm_cell_3/mulMullstm_1/zeros:output:0,lstm_1/lstm_cell_3/dropout/SelectV2:output:0*
T0*'
_output_shapes
:          Ш
lstm_1/lstm_cell_3/mul_1Mullstm_1/zeros:output:0.lstm_1/lstm_cell_3/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          Ш
lstm_1/lstm_cell_3/mul_2Mullstm_1/zeros:output:0.lstm_1/lstm_cell_3/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          Ш
lstm_1/lstm_cell_3/mul_3Mullstm_1/zeros:output:0.lstm_1/lstm_cell_3/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          Н
!lstm_1/lstm_cell_3/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0w
&lstm_1/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_1/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_1/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╩
 lstm_1/lstm_cell_3/strided_sliceStridedSlice)lstm_1/lstm_cell_3/ReadVariableOp:value:0/lstm_1/lstm_cell_3/strided_slice/stack:output:01lstm_1/lstm_cell_3/strided_slice/stack_1:output:01lstm_1/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЮ
lstm_1/lstm_cell_3/MatMul_4MatMullstm_1/lstm_cell_3/mul:z:0)lstm_1/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          Э
lstm_1/lstm_cell_3/addAddV2#lstm_1/lstm_cell_3/BiasAdd:output:0%lstm_1/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          s
lstm_1/lstm_cell_3/SigmoidSigmoidlstm_1/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          П
#lstm_1/lstm_cell_3/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0y
(lstm_1/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_1/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm_1/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
"lstm_1/lstm_cell_3/strided_slice_1StridedSlice+lstm_1/lstm_cell_3/ReadVariableOp_1:value:01lstm_1/lstm_cell_3/strided_slice_1/stack:output:03lstm_1/lstm_cell_3/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskв
lstm_1/lstm_cell_3/MatMul_5MatMullstm_1/lstm_cell_3/mul_1:z:0+lstm_1/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          б
lstm_1/lstm_cell_3/add_1AddV2%lstm_1/lstm_cell_3/BiasAdd_1:output:0%lstm_1/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          w
lstm_1/lstm_cell_3/Sigmoid_1Sigmoidlstm_1/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          М
lstm_1/lstm_cell_3/mul_4Mul lstm_1/lstm_cell_3/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:          П
#lstm_1/lstm_cell_3/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0y
(lstm_1/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm_1/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   {
*lstm_1/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
"lstm_1/lstm_cell_3/strided_slice_2StridedSlice+lstm_1/lstm_cell_3/ReadVariableOp_2:value:01lstm_1/lstm_cell_3/strided_slice_2/stack:output:03lstm_1/lstm_cell_3/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskв
lstm_1/lstm_cell_3/MatMul_6MatMullstm_1/lstm_cell_3/mul_2:z:0+lstm_1/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          б
lstm_1/lstm_cell_3/add_2AddV2%lstm_1/lstm_cell_3/BiasAdd_2:output:0%lstm_1/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          o
lstm_1/lstm_cell_3/TanhTanhlstm_1/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          О
lstm_1/lstm_cell_3/mul_5Mullstm_1/lstm_cell_3/Sigmoid:y:0lstm_1/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          П
lstm_1/lstm_cell_3/add_3AddV2lstm_1/lstm_cell_3/mul_4:z:0lstm_1/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          П
#lstm_1/lstm_cell_3/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0y
(lstm_1/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   {
*lstm_1/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_1/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
"lstm_1/lstm_cell_3/strided_slice_3StridedSlice+lstm_1/lstm_cell_3/ReadVariableOp_3:value:01lstm_1/lstm_cell_3/strided_slice_3/stack:output:03lstm_1/lstm_cell_3/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskв
lstm_1/lstm_cell_3/MatMul_7MatMullstm_1/lstm_cell_3/mul_3:z:0+lstm_1/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          б
lstm_1/lstm_cell_3/add_4AddV2%lstm_1/lstm_cell_3/BiasAdd_3:output:0%lstm_1/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          w
lstm_1/lstm_cell_3/Sigmoid_2Sigmoidlstm_1/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          q
lstm_1/lstm_cell_3/Tanh_1Tanhlstm_1/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          Т
lstm_1/lstm_cell_3/mul_6Mul lstm_1/lstm_cell_3/Sigmoid_2:y:0lstm_1/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          u
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ═
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╫
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_3_split_readvariableop_resource2lstm_1_lstm_cell_3_split_1_readvariableop_resource*lstm_1_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_1_while_body_110586*$
condR
lstm_1_while_cond_110585*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations И
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╪
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ш          *
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ш b
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Н
dropout_1/dropout/MulMullstm_1/transpose_1:y:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:         ш ]
dropout_1/dropout/ShapeShapelstm_1/transpose_1:y:0*
T0*
_output_shapes
:е
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:         ш *
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╔
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         ш ^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    └
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*,
_output_shapes
:         ш К
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       j
dense_1/Tensordot/ShapeShape#dropout_1/dropout/SelectV2:output:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : █
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╝
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:з
dense_1/Tensordot/transpose	Transpose#dropout_1/dropout/SelectV2:output:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ш в
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  в
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╟
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ь
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         шВ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Х
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         шl
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:         шЕ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp"^lstm_1/lstm_cell_3/ReadVariableOp$^lstm_1/lstm_cell_3/ReadVariableOp_1$^lstm_1/lstm_cell_3/ReadVariableOp_2$^lstm_1/lstm_cell_3/ReadVariableOp_3(^lstm_1/lstm_cell_3/split/ReadVariableOp*^lstm_1/lstm_cell_3/split_1/ReadVariableOp^lstm_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2F
!lstm_1/lstm_cell_3/ReadVariableOp!lstm_1/lstm_cell_3/ReadVariableOp2J
#lstm_1/lstm_cell_3/ReadVariableOp_1#lstm_1/lstm_cell_3/ReadVariableOp_12J
#lstm_1/lstm_cell_3/ReadVariableOp_2#lstm_1/lstm_cell_3/ReadVariableOp_22J
#lstm_1/lstm_cell_3/ReadVariableOp_3#lstm_1/lstm_cell_3/ReadVariableOp_32R
'lstm_1/lstm_cell_3/split/ReadVariableOp'lstm_1/lstm_cell_3/split/ReadVariableOp2V
)lstm_1/lstm_cell_3/split_1/ReadVariableOp)lstm_1/lstm_cell_3/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
╡
├
while_cond_110924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110924___redundant_placeholder04
0while_while_cond_110924___redundant_placeholder14
0while_while_cond_110924___redundant_placeholder24
0while_while_cond_110924___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
─\
и
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_109266

inputs

states
states_10
split_readvariableop_resource:	А.
split_1_readvariableop_resource:	А*
readvariableop_resource:	 А
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вsplit/ReadVariableOpвsplit_1/ReadVariableOpE
ones_like/ShapeShapestates*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:          R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:          O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:          T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:          Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Р
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?м
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:          Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Р
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?м
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:          Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Р
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?м
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	А*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:          \
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:          \
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:          \
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:          S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:          l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:          l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:          l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:          _
mulMulstatesdropout/SelectV2:output:0*
T0*'
_output_shapes
:          c
mul_1Mulstatesdropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          c
mul_2Mulstatesdropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          c
mul_3Mulstatesdropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maske
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:          d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:          M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:          i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:          h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:          Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:          W
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:          h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:          I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:          U
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          V
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:          i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:          h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:          Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          Y
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          X
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:          Z

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:          Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:          └
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :          :          : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:          
 
_user_specified_namestates:OK
'
_output_shapes
:          
 
_user_specified_namestates
сЭ
▀
B__inference_lstm_1_layer_call_and_return_conditional_losses_111345
inputs_0<
)lstm_cell_3_split_readvariableop_resource:	А:
+lstm_cell_3_split_1_readvariableop_resource:	А6
#lstm_cell_3_readvariableop_resource:	 А
identityИвlstm_cell_3/ReadVariableOpвlstm_cell_3/ReadVariableOp_1вlstm_cell_3/ReadVariableOp_2вlstm_cell_3/ReadVariableOp_3в lstm_cell_3/split/ReadVariableOpв"lstm_cell_3/split_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskY
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:`
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          ^
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ф
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:          g
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:д
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0g
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╩
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell_3/dropout/SelectV2SelectV2$lstm_cell_3/dropout/GreaterEqual:z:0lstm_cell_3/dropout/Mul:z:0$lstm_cell_3/dropout/Const_1:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:          i
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:и
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0i
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╨
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          b
lstm_cell_3/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
lstm_cell_3/dropout_1/SelectV2SelectV2&lstm_cell_3/dropout_1/GreaterEqual:z:0lstm_cell_3/dropout_1/Mul:z:0&lstm_cell_3/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:          i
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:и
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0i
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╨
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          b
lstm_cell_3/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
lstm_cell_3/dropout_2/SelectV2SelectV2&lstm_cell_3/dropout_2/GreaterEqual:z:0lstm_cell_3/dropout_2/Mul:z:0&lstm_cell_3/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:          i
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:и
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0i
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╨
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          b
lstm_cell_3/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
lstm_cell_3/dropout_3/SelectV2SelectV2&lstm_cell_3/dropout_3/GreaterEqual:z:0lstm_cell_3/dropout_3/Mul:z:0&lstm_cell_3/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          ]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Л
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	А*
dtype0┬
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitД
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          _
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Л
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype0╕
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitМ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          
lstm_cell_3/mulMulzeros:output:0%lstm_cell_3/dropout/SelectV2:output:0*
T0*'
_output_shapes
:          Г
lstm_cell_3/mul_1Mulzeros:output:0'lstm_cell_3/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          Г
lstm_cell_3/mul_2Mulzeros:output:0'lstm_cell_3/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          Г
lstm_cell_3/mul_3Mulzeros:output:0'lstm_cell_3/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЙ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          И
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          e
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          w
lstm_cell_3/mul_4Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          a
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          y
lstm_cell_3/mul_5Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          z
lstm_cell_3/add_3AddV2lstm_cell_3/mul_4:z:0lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          }
lstm_cell_3/mul_6Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_111186*
condR
while_cond_111185*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                   Р
NoOpNoOp^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
▌К
е
 model_1_lstm_1_while_body_108781:
6model_1_lstm_1_while_model_1_lstm_1_while_loop_counter@
<model_1_lstm_1_while_model_1_lstm_1_while_maximum_iterations$
 model_1_lstm_1_while_placeholder&
"model_1_lstm_1_while_placeholder_1&
"model_1_lstm_1_while_placeholder_2&
"model_1_lstm_1_while_placeholder_39
5model_1_lstm_1_while_model_1_lstm_1_strided_slice_1_0u
qmodel_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0S
@model_1_lstm_1_while_lstm_cell_3_split_readvariableop_resource_0:	АQ
Bmodel_1_lstm_1_while_lstm_cell_3_split_1_readvariableop_resource_0:	АM
:model_1_lstm_1_while_lstm_cell_3_readvariableop_resource_0:	 А!
model_1_lstm_1_while_identity#
model_1_lstm_1_while_identity_1#
model_1_lstm_1_while_identity_2#
model_1_lstm_1_while_identity_3#
model_1_lstm_1_while_identity_4#
model_1_lstm_1_while_identity_57
3model_1_lstm_1_while_model_1_lstm_1_strided_slice_1s
omodel_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_1_lstm_1_tensorarrayunstack_tensorlistfromtensorQ
>model_1_lstm_1_while_lstm_cell_3_split_readvariableop_resource:	АO
@model_1_lstm_1_while_lstm_cell_3_split_1_readvariableop_resource:	АK
8model_1_lstm_1_while_lstm_cell_3_readvariableop_resource:	 АИв/model_1/lstm_1/while/lstm_cell_3/ReadVariableOpв1model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_1в1model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_2в1model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_3в5model_1/lstm_1/while/lstm_cell_3/split/ReadVariableOpв7model_1/lstm_1/while/lstm_cell_3/split_1/ReadVariableOpЧ
Fmodel_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ё
8model_1/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqmodel_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 model_1_lstm_1_while_placeholderOmodel_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0В
0model_1/lstm_1/while/lstm_cell_3/ones_like/ShapeShape"model_1_lstm_1_while_placeholder_2*
T0*
_output_shapes
:u
0model_1/lstm_1/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?┌
*model_1/lstm_1/while/lstm_cell_3/ones_likeFill9model_1/lstm_1/while/lstm_cell_3/ones_like/Shape:output:09model_1/lstm_1/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          r
0model_1/lstm_1/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╖
5model_1/lstm_1/while/lstm_cell_3/split/ReadVariableOpReadVariableOp@model_1_lstm_1_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	А*
dtype0Б
&model_1/lstm_1/while/lstm_cell_3/splitSplit9model_1/lstm_1/while/lstm_cell_3/split/split_dim:output:0=model_1/lstm_1/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split╒
'model_1/lstm_1/while/lstm_cell_3/MatMulMatMul?model_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0/model_1/lstm_1/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          ╫
)model_1/lstm_1/while/lstm_cell_3/MatMul_1MatMul?model_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0/model_1/lstm_1/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          ╫
)model_1/lstm_1/while/lstm_cell_3/MatMul_2MatMul?model_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0/model_1/lstm_1/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          ╫
)model_1/lstm_1/while/lstm_cell_3/MatMul_3MatMul?model_1/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0/model_1/lstm_1/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          t
2model_1/lstm_1/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ╖
7model_1/lstm_1/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOpBmodel_1_lstm_1_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype0ў
(model_1/lstm_1/while/lstm_cell_3/split_1Split;model_1/lstm_1/while/lstm_cell_3/split_1/split_dim:output:0?model_1/lstm_1/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split╦
(model_1/lstm_1/while/lstm_cell_3/BiasAddBiasAdd1model_1/lstm_1/while/lstm_cell_3/MatMul:product:01model_1/lstm_1/while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          ╧
*model_1/lstm_1/while/lstm_cell_3/BiasAdd_1BiasAdd3model_1/lstm_1/while/lstm_cell_3/MatMul_1:product:01model_1/lstm_1/while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          ╧
*model_1/lstm_1/while/lstm_cell_3/BiasAdd_2BiasAdd3model_1/lstm_1/while/lstm_cell_3/MatMul_2:product:01model_1/lstm_1/while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          ╧
*model_1/lstm_1/while/lstm_cell_3/BiasAdd_3BiasAdd3model_1/lstm_1/while/lstm_cell_3/MatMul_3:product:01model_1/lstm_1/while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          ╢
$model_1/lstm_1/while/lstm_cell_3/mulMul"model_1_lstm_1_while_placeholder_23model_1/lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          ╕
&model_1/lstm_1/while/lstm_cell_3/mul_1Mul"model_1_lstm_1_while_placeholder_23model_1/lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          ╕
&model_1/lstm_1/while/lstm_cell_3/mul_2Mul"model_1_lstm_1_while_placeholder_23model_1/lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          ╕
&model_1/lstm_1/while/lstm_cell_3/mul_3Mul"model_1_lstm_1_while_placeholder_23model_1/lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          л
/model_1/lstm_1/while/lstm_cell_3/ReadVariableOpReadVariableOp:model_1_lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Е
4model_1/lstm_1/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        З
6model_1/lstm_1/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        З
6model_1/lstm_1/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Р
.model_1/lstm_1/while/lstm_cell_3/strided_sliceStridedSlice7model_1/lstm_1/while/lstm_cell_3/ReadVariableOp:value:0=model_1/lstm_1/while/lstm_cell_3/strided_slice/stack:output:0?model_1/lstm_1/while/lstm_cell_3/strided_slice/stack_1:output:0?model_1/lstm_1/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask╚
)model_1/lstm_1/while/lstm_cell_3/MatMul_4MatMul(model_1/lstm_1/while/lstm_cell_3/mul:z:07model_1/lstm_1/while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          ╟
$model_1/lstm_1/while/lstm_cell_3/addAddV21model_1/lstm_1/while/lstm_cell_3/BiasAdd:output:03model_1/lstm_1/while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          П
(model_1/lstm_1/while/lstm_cell_3/SigmoidSigmoid(model_1/lstm_1/while/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          н
1model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp:model_1_lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0З
6model_1/lstm_1/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Й
8model_1/lstm_1/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   Й
8model_1/lstm_1/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
0model_1/lstm_1/while/lstm_cell_3/strided_slice_1StridedSlice9model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_1:value:0?model_1/lstm_1/while/lstm_cell_3/strided_slice_1/stack:output:0Amodel_1/lstm_1/while/lstm_cell_3/strided_slice_1/stack_1:output:0Amodel_1/lstm_1/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask╠
)model_1/lstm_1/while/lstm_cell_3/MatMul_5MatMul*model_1/lstm_1/while/lstm_cell_3/mul_1:z:09model_1/lstm_1/while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          ╦
&model_1/lstm_1/while/lstm_cell_3/add_1AddV23model_1/lstm_1/while/lstm_cell_3/BiasAdd_1:output:03model_1/lstm_1/while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          У
*model_1/lstm_1/while/lstm_cell_3/Sigmoid_1Sigmoid*model_1/lstm_1/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          │
&model_1/lstm_1/while/lstm_cell_3/mul_4Mul.model_1/lstm_1/while/lstm_cell_3/Sigmoid_1:y:0"model_1_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:          н
1model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp:model_1_lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0З
6model_1/lstm_1/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   Й
8model_1/lstm_1/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   Й
8model_1/lstm_1/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
0model_1/lstm_1/while/lstm_cell_3/strided_slice_2StridedSlice9model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_2:value:0?model_1/lstm_1/while/lstm_cell_3/strided_slice_2/stack:output:0Amodel_1/lstm_1/while/lstm_cell_3/strided_slice_2/stack_1:output:0Amodel_1/lstm_1/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask╠
)model_1/lstm_1/while/lstm_cell_3/MatMul_6MatMul*model_1/lstm_1/while/lstm_cell_3/mul_2:z:09model_1/lstm_1/while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          ╦
&model_1/lstm_1/while/lstm_cell_3/add_2AddV23model_1/lstm_1/while/lstm_cell_3/BiasAdd_2:output:03model_1/lstm_1/while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          Л
%model_1/lstm_1/while/lstm_cell_3/TanhTanh*model_1/lstm_1/while/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          ╕
&model_1/lstm_1/while/lstm_cell_3/mul_5Mul,model_1/lstm_1/while/lstm_cell_3/Sigmoid:y:0)model_1/lstm_1/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          ╣
&model_1/lstm_1/while/lstm_cell_3/add_3AddV2*model_1/lstm_1/while/lstm_cell_3/mul_4:z:0*model_1/lstm_1/while/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          н
1model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp:model_1_lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0З
6model_1/lstm_1/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   Й
8model_1/lstm_1/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Й
8model_1/lstm_1/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
0model_1/lstm_1/while/lstm_cell_3/strided_slice_3StridedSlice9model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_3:value:0?model_1/lstm_1/while/lstm_cell_3/strided_slice_3/stack:output:0Amodel_1/lstm_1/while/lstm_cell_3/strided_slice_3/stack_1:output:0Amodel_1/lstm_1/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask╠
)model_1/lstm_1/while/lstm_cell_3/MatMul_7MatMul*model_1/lstm_1/while/lstm_cell_3/mul_3:z:09model_1/lstm_1/while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          ╦
&model_1/lstm_1/while/lstm_cell_3/add_4AddV23model_1/lstm_1/while/lstm_cell_3/BiasAdd_3:output:03model_1/lstm_1/while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          У
*model_1/lstm_1/while/lstm_cell_3/Sigmoid_2Sigmoid*model_1/lstm_1/while/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          Н
'model_1/lstm_1/while/lstm_cell_3/Tanh_1Tanh*model_1/lstm_1/while/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          ╝
&model_1/lstm_1/while/lstm_cell_3/mul_6Mul.model_1/lstm_1/while/lstm_cell_3/Sigmoid_2:y:0+model_1/lstm_1/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          А
9model_1/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"model_1_lstm_1_while_placeholder_1 model_1_lstm_1_while_placeholder*model_1/lstm_1/while/lstm_cell_3/mul_6:z:0*
_output_shapes
: *
element_dtype0:щш╥\
model_1/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Й
model_1/lstm_1/while/addAddV2 model_1_lstm_1_while_placeholder#model_1/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
model_1/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :г
model_1/lstm_1/while/add_1AddV26model_1_lstm_1_while_model_1_lstm_1_while_loop_counter%model_1/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: Ж
model_1/lstm_1/while/IdentityIdentitymodel_1/lstm_1/while/add_1:z:0^model_1/lstm_1/while/NoOp*
T0*
_output_shapes
: ж
model_1/lstm_1/while/Identity_1Identity<model_1_lstm_1_while_model_1_lstm_1_while_maximum_iterations^model_1/lstm_1/while/NoOp*
T0*
_output_shapes
: Ж
model_1/lstm_1/while/Identity_2Identitymodel_1/lstm_1/while/add:z:0^model_1/lstm_1/while/NoOp*
T0*
_output_shapes
: │
model_1/lstm_1/while/Identity_3IdentityImodel_1/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_1/lstm_1/while/NoOp*
T0*
_output_shapes
: е
model_1/lstm_1/while/Identity_4Identity*model_1/lstm_1/while/lstm_cell_3/mul_6:z:0^model_1/lstm_1/while/NoOp*
T0*'
_output_shapes
:          е
model_1/lstm_1/while/Identity_5Identity*model_1/lstm_1/while/lstm_cell_3/add_3:z:0^model_1/lstm_1/while/NoOp*
T0*'
_output_shapes
:          Ы
model_1/lstm_1/while/NoOpNoOp0^model_1/lstm_1/while/lstm_cell_3/ReadVariableOp2^model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_12^model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_22^model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_36^model_1/lstm_1/while/lstm_cell_3/split/ReadVariableOp8^model_1/lstm_1/while/lstm_cell_3/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
model_1_lstm_1_while_identity&model_1/lstm_1/while/Identity:output:0"K
model_1_lstm_1_while_identity_1(model_1/lstm_1/while/Identity_1:output:0"K
model_1_lstm_1_while_identity_2(model_1/lstm_1/while/Identity_2:output:0"K
model_1_lstm_1_while_identity_3(model_1/lstm_1/while/Identity_3:output:0"K
model_1_lstm_1_while_identity_4(model_1/lstm_1/while/Identity_4:output:0"K
model_1_lstm_1_while_identity_5(model_1/lstm_1/while/Identity_5:output:0"v
8model_1_lstm_1_while_lstm_cell_3_readvariableop_resource:model_1_lstm_1_while_lstm_cell_3_readvariableop_resource_0"Ж
@model_1_lstm_1_while_lstm_cell_3_split_1_readvariableop_resourceBmodel_1_lstm_1_while_lstm_cell_3_split_1_readvariableop_resource_0"В
>model_1_lstm_1_while_lstm_cell_3_split_readvariableop_resource@model_1_lstm_1_while_lstm_cell_3_split_readvariableop_resource_0"l
3model_1_lstm_1_while_model_1_lstm_1_strided_slice_15model_1_lstm_1_while_model_1_lstm_1_strided_slice_1_0"ф
omodel_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_1_lstm_1_tensorarrayunstack_tensorlistfromtensorqmodel_1_lstm_1_while_tensorarrayv2read_tensorlistgetitem_model_1_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2b
/model_1/lstm_1/while/lstm_cell_3/ReadVariableOp/model_1/lstm_1/while/lstm_cell_3/ReadVariableOp2f
1model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_11model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_12f
1model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_21model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_22f
1model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_31model_1/lstm_1/while/lstm_cell_3/ReadVariableOp_32n
5model_1/lstm_1/while/lstm_cell_3/split/ReadVariableOp5model_1/lstm_1/while/lstm_cell_3/split/ReadVariableOp2r
7model_1/lstm_1/while/lstm_cell_3/split_1/ReadVariableOp7model_1/lstm_1/while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
В8
А
B__inference_lstm_1_layer_call_and_return_conditional_losses_109128

inputs%
lstm_cell_3_109046:	А!
lstm_cell_3_109048:	А%
lstm_cell_3_109050:	 А
identityИв#lstm_cell_3/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЁ
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_109046lstm_cell_3_109048lstm_cell_3_109050*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_109045n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_109046lstm_cell_3_109048lstm_cell_3_109050*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_109059*
condR
while_cond_109058*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                   t
NoOpNoOp$^lstm_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
ш>
и
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_109045

inputs

states
states_10
split_readvariableop_resource:	А.
split_1_readvariableop_resource:	А*
readvariableop_resource:	 А
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вsplit/ReadVariableOpвsplit_1/ReadVariableOpE
ones_like/ShapeShapestates*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	А*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:          \
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:          \
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:          \
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:          S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:          l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:          l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:          l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:          X
mulMulstatesones_like:output:0*
T0*'
_output_shapes
:          Z
mul_1Mulstatesones_like:output:0*
T0*'
_output_shapes
:          Z
mul_2Mulstatesones_like:output:0*
T0*'
_output_shapes
:          Z
mul_3Mulstatesones_like:output:0*
T0*'
_output_shapes
:          g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maske
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:          d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:          M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:          i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:          h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:          Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:          W
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:          h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:          I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:          U
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          V
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:          i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:          h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:          Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          Y
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          X
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:          Z

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:          Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:          └
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :          :          : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:          
 
_user_specified_namestates:OK
'
_output_shapes
:          
 
_user_specified_namestates
╧
ь
C__inference_model_1_layer_call_and_return_conditional_losses_110147
input_2 
lstm_1_110133:	А
lstm_1_110135:	А 
lstm_1_110137:	 А 
dense_1_110141: 
dense_1_110143:
identityИвdense_1/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallвlstm_1/StatefulPartitionedCall 
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinput_2lstm_1_110133lstm_1_110135lstm_1_110137*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_110042Ё
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_109733Х
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_110141dense_1_110143*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_109683|
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         шн
NoOpNoOp ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:U Q
,
_output_shapes
:         ш
!
_user_specified_name	input_2
о

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_111894

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:         ш C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:С
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:         ш *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?л
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         ш T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ш
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*,
_output_shapes
:         ш f
IdentityIdentitydropout/SelectV2:output:0*
T0*,
_output_shapes
:         ш "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш :T P
,
_output_shapes
:         ш 
 
_user_specified_nameinputs
ь
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_109651

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:         ш `

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:         ш "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш :T P
,
_output_shapes
:         ш 
 
_user_specified_nameinputs
╞е
Н
lstm_1_while_body_110586*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_1_while_lstm_cell_3_split_readvariableop_resource_0:	АI
:lstm_1_while_lstm_cell_3_split_1_readvariableop_resource_0:	АE
2lstm_1_while_lstm_cell_3_readvariableop_resource_0:	 А
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorI
6lstm_1_while_lstm_cell_3_split_readvariableop_resource:	АG
8lstm_1_while_lstm_cell_3_split_1_readvariableop_resource:	АC
0lstm_1_while_lstm_cell_3_readvariableop_resource:	 АИв'lstm_1/while/lstm_cell_3/ReadVariableOpв)lstm_1/while/lstm_cell_3/ReadVariableOp_1в)lstm_1/while/lstm_cell_3/ReadVariableOp_2в)lstm_1/while/lstm_cell_3/ReadVariableOp_3в-lstm_1/while/lstm_cell_3/split/ReadVariableOpв/lstm_1/while/lstm_cell_3/split_1/ReadVariableOpП
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0r
(lstm_1/while/lstm_cell_3/ones_like/ShapeShapelstm_1_while_placeholder_2*
T0*
_output_shapes
:m
(lstm_1/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?┬
"lstm_1/while/lstm_cell_3/ones_likeFill1lstm_1/while/lstm_cell_3/ones_like/Shape:output:01lstm_1/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          k
&lstm_1/while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @╗
$lstm_1/while/lstm_cell_3/dropout/MulMul+lstm_1/while/lstm_cell_3/ones_like:output:0/lstm_1/while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:          Б
&lstm_1/while/lstm_cell_3/dropout/ShapeShape+lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:╛
=lstm_1/while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform/lstm_1/while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0t
/lstm_1/while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ё
-lstm_1/while/lstm_cell_3/dropout/GreaterEqualGreaterEqualFlstm_1/while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:08lstm_1/while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          m
(lstm_1/while/lstm_cell_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ў
)lstm_1/while/lstm_cell_3/dropout/SelectV2SelectV21lstm_1/while/lstm_cell_3/dropout/GreaterEqual:z:0(lstm_1/while/lstm_cell_3/dropout/Mul:z:01lstm_1/while/lstm_cell_3/dropout/Const_1:output:0*
T0*'
_output_shapes
:          m
(lstm_1/while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @┐
&lstm_1/while/lstm_cell_3/dropout_1/MulMul+lstm_1/while/lstm_cell_3/ones_like:output:01lstm_1/while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:          Г
(lstm_1/while/lstm_cell_3/dropout_1/ShapeShape+lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┬
?lstm_1/while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0v
1lstm_1/while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ў
/lstm_1/while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          o
*lstm_1/while/lstm_cell_3/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *     
+lstm_1/while/lstm_cell_3/dropout_1/SelectV2SelectV23lstm_1/while/lstm_cell_3/dropout_1/GreaterEqual:z:0*lstm_1/while/lstm_cell_3/dropout_1/Mul:z:03lstm_1/while/lstm_cell_3/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          m
(lstm_1/while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @┐
&lstm_1/while/lstm_cell_3/dropout_2/MulMul+lstm_1/while/lstm_cell_3/ones_like:output:01lstm_1/while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:          Г
(lstm_1/while/lstm_cell_3/dropout_2/ShapeShape+lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┬
?lstm_1/while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0v
1lstm_1/while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ў
/lstm_1/while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          o
*lstm_1/while/lstm_cell_3/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *     
+lstm_1/while/lstm_cell_3/dropout_2/SelectV2SelectV23lstm_1/while/lstm_cell_3/dropout_2/GreaterEqual:z:0*lstm_1/while/lstm_cell_3/dropout_2/Mul:z:03lstm_1/while/lstm_cell_3/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          m
(lstm_1/while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @┐
&lstm_1/while/lstm_cell_3/dropout_3/MulMul+lstm_1/while/lstm_cell_3/ones_like:output:01lstm_1/while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:          Г
(lstm_1/while/lstm_cell_3/dropout_3/ShapeShape+lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┬
?lstm_1/while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_1/while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0v
1lstm_1/while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ў
/lstm_1/while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualHlstm_1/while/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0:lstm_1/while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          o
*lstm_1/while/lstm_cell_3/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *     
+lstm_1/while/lstm_cell_3/dropout_3/SelectV2SelectV23lstm_1/while/lstm_cell_3/dropout_3/GreaterEqual:z:0*lstm_1/while/lstm_cell_3/dropout_3/Mul:z:03lstm_1/while/lstm_cell_3/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          j
(lstm_1/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :з
-lstm_1/while/lstm_cell_3/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	А*
dtype0щ
lstm_1/while/lstm_cell_3/splitSplit1lstm_1/while/lstm_cell_3/split/split_dim:output:05lstm_1/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split╜
lstm_1/while/lstm_cell_3/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          ┐
!lstm_1/while/lstm_cell_3/MatMul_1MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          ┐
!lstm_1/while/lstm_cell_3/MatMul_2MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          ┐
!lstm_1/while/lstm_cell_3/MatMul_3MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          l
*lstm_1/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : з
/lstm_1/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype0▀
 lstm_1/while/lstm_cell_3/split_1Split3lstm_1/while/lstm_cell_3/split_1/split_dim:output:07lstm_1/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split│
 lstm_1/while/lstm_cell_3/BiasAddBiasAdd)lstm_1/while/lstm_cell_3/MatMul:product:0)lstm_1/while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          ╖
"lstm_1/while/lstm_cell_3/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_3/MatMul_1:product:0)lstm_1/while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          ╖
"lstm_1/while/lstm_cell_3/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_3/MatMul_2:product:0)lstm_1/while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          ╖
"lstm_1/while/lstm_cell_3/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_3/MatMul_3:product:0)lstm_1/while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          е
lstm_1/while/lstm_cell_3/mulMullstm_1_while_placeholder_22lstm_1/while/lstm_cell_3/dropout/SelectV2:output:0*
T0*'
_output_shapes
:          й
lstm_1/while/lstm_cell_3/mul_1Mullstm_1_while_placeholder_24lstm_1/while/lstm_cell_3/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          й
lstm_1/while/lstm_cell_3/mul_2Mullstm_1_while_placeholder_24lstm_1/while/lstm_cell_3/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          й
lstm_1/while/lstm_cell_3/mul_3Mullstm_1_while_placeholder_24lstm_1/while/lstm_cell_3/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          Ы
'lstm_1/while/lstm_cell_3/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0}
,lstm_1/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.lstm_1/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
.lstm_1/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
&lstm_1/while/lstm_cell_3/strided_sliceStridedSlice/lstm_1/while/lstm_cell_3/ReadVariableOp:value:05lstm_1/while/lstm_cell_3/strided_slice/stack:output:07lstm_1/while/lstm_cell_3/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask░
!lstm_1/while/lstm_cell_3/MatMul_4MatMul lstm_1/while/lstm_cell_3/mul:z:0/lstm_1/while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          п
lstm_1/while/lstm_cell_3/addAddV2)lstm_1/while/lstm_cell_3/BiasAdd:output:0+lstm_1/while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          
 lstm_1/while/lstm_cell_3/SigmoidSigmoid lstm_1/while/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          Э
)lstm_1/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0
.lstm_1/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0lstm_1/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   Б
0lstm_1/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Є
(lstm_1/while/lstm_cell_3/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_3/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_3/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_3/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask┤
!lstm_1/while/lstm_cell_3/MatMul_5MatMul"lstm_1/while/lstm_cell_3/mul_1:z:01lstm_1/while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          │
lstm_1/while/lstm_cell_3/add_1AddV2+lstm_1/while/lstm_cell_3/BiasAdd_1:output:0+lstm_1/while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          Г
"lstm_1/while/lstm_cell_3/Sigmoid_1Sigmoid"lstm_1/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          Ы
lstm_1/while/lstm_cell_3/mul_4Mul&lstm_1/while/lstm_cell_3/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:          Э
)lstm_1/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0
.lstm_1/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   Б
0lstm_1/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   Б
0lstm_1/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Є
(lstm_1/while/lstm_cell_3/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_3/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_3/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_3/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask┤
!lstm_1/while/lstm_cell_3/MatMul_6MatMul"lstm_1/while/lstm_cell_3/mul_2:z:01lstm_1/while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          │
lstm_1/while/lstm_cell_3/add_2AddV2+lstm_1/while/lstm_cell_3/BiasAdd_2:output:0+lstm_1/while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          {
lstm_1/while/lstm_cell_3/TanhTanh"lstm_1/while/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          а
lstm_1/while/lstm_cell_3/mul_5Mul$lstm_1/while/lstm_cell_3/Sigmoid:y:0!lstm_1/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          б
lstm_1/while/lstm_cell_3/add_3AddV2"lstm_1/while/lstm_cell_3/mul_4:z:0"lstm_1/while/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          Э
)lstm_1/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0
.lstm_1/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   Б
0lstm_1/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0lstm_1/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Є
(lstm_1/while/lstm_cell_3/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_3/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_3/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_3/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask┤
!lstm_1/while/lstm_cell_3/MatMul_7MatMul"lstm_1/while/lstm_cell_3/mul_3:z:01lstm_1/while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          │
lstm_1/while/lstm_cell_3/add_4AddV2+lstm_1/while/lstm_cell_3/BiasAdd_3:output:0+lstm_1/while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          Г
"lstm_1/while/lstm_cell_3/Sigmoid_2Sigmoid"lstm_1/while/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          }
lstm_1/while/lstm_cell_3/Tanh_1Tanh"lstm_1/while/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          д
lstm_1/while/lstm_cell_3/mul_6Mul&lstm_1/while/lstm_cell_3/Sigmoid_2:y:0#lstm_1/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          р
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_3/mul_6:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Ж
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Ы
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Н
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_3/mul_6:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:          Н
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_3/add_3:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:          у
lstm_1/while/NoOpNoOp(^lstm_1/while/lstm_cell_3/ReadVariableOp*^lstm_1/while/lstm_cell_3/ReadVariableOp_1*^lstm_1/while/lstm_cell_3/ReadVariableOp_2*^lstm_1/while/lstm_cell_3/ReadVariableOp_3.^lstm_1/while/lstm_cell_3/split/ReadVariableOp0^lstm_1/while/lstm_cell_3/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_3_readvariableop_resource2lstm_1_while_lstm_cell_3_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_3_split_1_readvariableop_resource:lstm_1_while_lstm_cell_3_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_3_split_readvariableop_resource8lstm_1_while_lstm_cell_3_split_readvariableop_resource_0"─
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2R
'lstm_1/while/lstm_cell_3/ReadVariableOp'lstm_1/while/lstm_cell_3/ReadVariableOp2V
)lstm_1/while/lstm_cell_3/ReadVariableOp_1)lstm_1/while/lstm_cell_3/ReadVariableOp_12V
)lstm_1/while/lstm_cell_3/ReadVariableOp_2)lstm_1/while/lstm_cell_3/ReadVariableOp_22V
)lstm_1/while/lstm_cell_3/ReadVariableOp_3)lstm_1/while/lstm_cell_3/ReadVariableOp_32^
-lstm_1/while/lstm_cell_3/split/ReadVariableOp-lstm_1/while/lstm_cell_3/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_3/split_1/ReadVariableOp/lstm_1/while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
╬"
▄
while_body_109325
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_3_109349_0:	А)
while_lstm_cell_3_109351_0:	А-
while_lstm_cell_3_109353_0:	 А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_3_109349:	А'
while_lstm_cell_3_109351:	А+
while_lstm_cell_3_109353:	 АИв)while/lstm_cell_3/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0о
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_109349_0while_lstm_cell_3_109351_0while_lstm_cell_3_109353_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_109266█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:          П
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:          x

while/NoOpNoOp*^while/lstm_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_3_109349while_lstm_cell_3_109349_0"6
while_lstm_cell_3_109351while_lstm_cell_3_109351_0"6
while_lstm_cell_3_109353while_lstm_cell_3_109353_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
┤
ш
$__inference_signature_wrapper_110166
input_2
unknown:	А
	unknown_0:	А
	unknown_1:	 А
	unknown_2: 
	unknown_3:
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_108935t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ш`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:         ш
!
_user_specified_name	input_2
ь
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_111882

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:         ш `

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:         ш "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш :T P
,
_output_shapes
:         ш 
 
_user_specified_nameinputs
╡
├
while_cond_109510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109510___redundant_placeholder04
0while_while_cond_109510___redundant_placeholder14
0while_while_cond_109510___redundant_placeholder24
0while_while_cond_109510___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
╡
├
while_cond_109882
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109882___redundant_placeholder04
0while_while_cond_109882___redundant_placeholder14
0while_while_cond_109882___redundant_placeholder24
0while_while_cond_109882___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
▒║
л
!__inference__wrapped_model_108935
input_2K
8model_1_lstm_1_lstm_cell_3_split_readvariableop_resource:	АI
:model_1_lstm_1_lstm_cell_3_split_1_readvariableop_resource:	АE
2model_1_lstm_1_lstm_cell_3_readvariableop_resource:	 АC
1model_1_dense_1_tensordot_readvariableop_resource: =
/model_1_dense_1_biasadd_readvariableop_resource:
identityИв&model_1/dense_1/BiasAdd/ReadVariableOpв(model_1/dense_1/Tensordot/ReadVariableOpв)model_1/lstm_1/lstm_cell_3/ReadVariableOpв+model_1/lstm_1/lstm_cell_3/ReadVariableOp_1в+model_1/lstm_1/lstm_cell_3/ReadVariableOp_2в+model_1/lstm_1/lstm_cell_3/ReadVariableOp_3в/model_1/lstm_1/lstm_cell_3/split/ReadVariableOpв1model_1/lstm_1/lstm_cell_3/split_1/ReadVariableOpвmodel_1/lstm_1/whileK
model_1/lstm_1/ShapeShapeinput_2*
T0*
_output_shapes
:l
"model_1/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$model_1/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$model_1/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
model_1/lstm_1/strided_sliceStridedSlicemodel_1/lstm_1/Shape:output:0+model_1/lstm_1/strided_slice/stack:output:0-model_1/lstm_1/strided_slice/stack_1:output:0-model_1/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
model_1/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : а
model_1/lstm_1/zeros/packedPack%model_1/lstm_1/strided_slice:output:0&model_1/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
model_1/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
model_1/lstm_1/zerosFill$model_1/lstm_1/zeros/packed:output:0#model_1/lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:          a
model_1/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : д
model_1/lstm_1/zeros_1/packedPack%model_1/lstm_1/strided_slice:output:0(model_1/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
model_1/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
model_1/lstm_1/zeros_1Fill&model_1/lstm_1/zeros_1/packed:output:0%model_1/lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:          r
model_1/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Н
model_1/lstm_1/transpose	Transposeinput_2&model_1/lstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:ш         b
model_1/lstm_1/Shape_1Shapemodel_1/lstm_1/transpose:y:0*
T0*
_output_shapes
:n
$model_1/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&model_1/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model_1/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
model_1/lstm_1/strided_slice_1StridedSlicemodel_1/lstm_1/Shape_1:output:0-model_1/lstm_1/strided_slice_1/stack:output:0/model_1/lstm_1/strided_slice_1/stack_1:output:0/model_1/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*model_1/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         с
model_1/lstm_1/TensorArrayV2TensorListReserve3model_1/lstm_1/TensorArrayV2/element_shape:output:0'model_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Х
Dmodel_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Н
6model_1/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_1/lstm_1/transpose:y:0Mmodel_1/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥n
$model_1/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&model_1/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model_1/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
model_1/lstm_1/strided_slice_2StridedSlicemodel_1/lstm_1/transpose:y:0-model_1/lstm_1/strided_slice_2/stack:output:0/model_1/lstm_1/strided_slice_2/stack_1:output:0/model_1/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskw
*model_1/lstm_1/lstm_cell_3/ones_like/ShapeShapemodel_1/lstm_1/zeros:output:0*
T0*
_output_shapes
:o
*model_1/lstm_1/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╚
$model_1/lstm_1/lstm_cell_3/ones_likeFill3model_1/lstm_1/lstm_cell_3/ones_like/Shape:output:03model_1/lstm_1/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          l
*model_1/lstm_1/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
/model_1/lstm_1/lstm_cell_3/split/ReadVariableOpReadVariableOp8model_1_lstm_1_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	А*
dtype0я
 model_1/lstm_1/lstm_cell_3/splitSplit3model_1/lstm_1/lstm_cell_3/split/split_dim:output:07model_1/lstm_1/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split▒
!model_1/lstm_1/lstm_cell_3/MatMulMatMul'model_1/lstm_1/strided_slice_2:output:0)model_1/lstm_1/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          │
#model_1/lstm_1/lstm_cell_3/MatMul_1MatMul'model_1/lstm_1/strided_slice_2:output:0)model_1/lstm_1/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          │
#model_1/lstm_1/lstm_cell_3/MatMul_2MatMul'model_1/lstm_1/strided_slice_2:output:0)model_1/lstm_1/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          │
#model_1/lstm_1/lstm_cell_3/MatMul_3MatMul'model_1/lstm_1/strided_slice_2:output:0)model_1/lstm_1/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          n
,model_1/lstm_1/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : й
1model_1/lstm_1/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:model_1_lstm_1_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype0х
"model_1/lstm_1/lstm_cell_3/split_1Split5model_1/lstm_1/lstm_cell_3/split_1/split_dim:output:09model_1/lstm_1/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split╣
"model_1/lstm_1/lstm_cell_3/BiasAddBiasAdd+model_1/lstm_1/lstm_cell_3/MatMul:product:0+model_1/lstm_1/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          ╜
$model_1/lstm_1/lstm_cell_3/BiasAdd_1BiasAdd-model_1/lstm_1/lstm_cell_3/MatMul_1:product:0+model_1/lstm_1/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          ╜
$model_1/lstm_1/lstm_cell_3/BiasAdd_2BiasAdd-model_1/lstm_1/lstm_cell_3/MatMul_2:product:0+model_1/lstm_1/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          ╜
$model_1/lstm_1/lstm_cell_3/BiasAdd_3BiasAdd-model_1/lstm_1/lstm_cell_3/MatMul_3:product:0+model_1/lstm_1/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          е
model_1/lstm_1/lstm_cell_3/mulMulmodel_1/lstm_1/zeros:output:0-model_1/lstm_1/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          з
 model_1/lstm_1/lstm_cell_3/mul_1Mulmodel_1/lstm_1/zeros:output:0-model_1/lstm_1/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          з
 model_1/lstm_1/lstm_cell_3/mul_2Mulmodel_1/lstm_1/zeros:output:0-model_1/lstm_1/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          з
 model_1/lstm_1/lstm_cell_3/mul_3Mulmodel_1/lstm_1/zeros:output:0-model_1/lstm_1/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Э
)model_1/lstm_1/lstm_cell_3/ReadVariableOpReadVariableOp2model_1_lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0
.model_1/lstm_1/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0model_1/lstm_1/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0model_1/lstm_1/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Є
(model_1/lstm_1/lstm_cell_3/strided_sliceStridedSlice1model_1/lstm_1/lstm_cell_3/ReadVariableOp:value:07model_1/lstm_1/lstm_cell_3/strided_slice/stack:output:09model_1/lstm_1/lstm_cell_3/strided_slice/stack_1:output:09model_1/lstm_1/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask╢
#model_1/lstm_1/lstm_cell_3/MatMul_4MatMul"model_1/lstm_1/lstm_cell_3/mul:z:01model_1/lstm_1/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          ╡
model_1/lstm_1/lstm_cell_3/addAddV2+model_1/lstm_1/lstm_cell_3/BiasAdd:output:0-model_1/lstm_1/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          Г
"model_1/lstm_1/lstm_cell_3/SigmoidSigmoid"model_1/lstm_1/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          Я
+model_1/lstm_1/lstm_cell_3/ReadVariableOp_1ReadVariableOp2model_1_lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0Б
0model_1/lstm_1/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Г
2model_1/lstm_1/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   Г
2model_1/lstm_1/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      №
*model_1/lstm_1/lstm_cell_3/strided_slice_1StridedSlice3model_1/lstm_1/lstm_cell_3/ReadVariableOp_1:value:09model_1/lstm_1/lstm_cell_3/strided_slice_1/stack:output:0;model_1/lstm_1/lstm_cell_3/strided_slice_1/stack_1:output:0;model_1/lstm_1/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask║
#model_1/lstm_1/lstm_cell_3/MatMul_5MatMul$model_1/lstm_1/lstm_cell_3/mul_1:z:03model_1/lstm_1/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          ╣
 model_1/lstm_1/lstm_cell_3/add_1AddV2-model_1/lstm_1/lstm_cell_3/BiasAdd_1:output:0-model_1/lstm_1/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          З
$model_1/lstm_1/lstm_cell_3/Sigmoid_1Sigmoid$model_1/lstm_1/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          д
 model_1/lstm_1/lstm_cell_3/mul_4Mul(model_1/lstm_1/lstm_cell_3/Sigmoid_1:y:0model_1/lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:          Я
+model_1/lstm_1/lstm_cell_3/ReadVariableOp_2ReadVariableOp2model_1_lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0Б
0model_1/lstm_1/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   Г
2model_1/lstm_1/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   Г
2model_1/lstm_1/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      №
*model_1/lstm_1/lstm_cell_3/strided_slice_2StridedSlice3model_1/lstm_1/lstm_cell_3/ReadVariableOp_2:value:09model_1/lstm_1/lstm_cell_3/strided_slice_2/stack:output:0;model_1/lstm_1/lstm_cell_3/strided_slice_2/stack_1:output:0;model_1/lstm_1/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask║
#model_1/lstm_1/lstm_cell_3/MatMul_6MatMul$model_1/lstm_1/lstm_cell_3/mul_2:z:03model_1/lstm_1/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          ╣
 model_1/lstm_1/lstm_cell_3/add_2AddV2-model_1/lstm_1/lstm_cell_3/BiasAdd_2:output:0-model_1/lstm_1/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          
model_1/lstm_1/lstm_cell_3/TanhTanh$model_1/lstm_1/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          ж
 model_1/lstm_1/lstm_cell_3/mul_5Mul&model_1/lstm_1/lstm_cell_3/Sigmoid:y:0#model_1/lstm_1/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          з
 model_1/lstm_1/lstm_cell_3/add_3AddV2$model_1/lstm_1/lstm_cell_3/mul_4:z:0$model_1/lstm_1/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          Я
+model_1/lstm_1/lstm_cell_3/ReadVariableOp_3ReadVariableOp2model_1_lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0Б
0model_1/lstm_1/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   Г
2model_1/lstm_1/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Г
2model_1/lstm_1/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      №
*model_1/lstm_1/lstm_cell_3/strided_slice_3StridedSlice3model_1/lstm_1/lstm_cell_3/ReadVariableOp_3:value:09model_1/lstm_1/lstm_cell_3/strided_slice_3/stack:output:0;model_1/lstm_1/lstm_cell_3/strided_slice_3/stack_1:output:0;model_1/lstm_1/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask║
#model_1/lstm_1/lstm_cell_3/MatMul_7MatMul$model_1/lstm_1/lstm_cell_3/mul_3:z:03model_1/lstm_1/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          ╣
 model_1/lstm_1/lstm_cell_3/add_4AddV2-model_1/lstm_1/lstm_cell_3/BiasAdd_3:output:0-model_1/lstm_1/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          З
$model_1/lstm_1/lstm_cell_3/Sigmoid_2Sigmoid$model_1/lstm_1/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          Б
!model_1/lstm_1/lstm_cell_3/Tanh_1Tanh$model_1/lstm_1/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          к
 model_1/lstm_1/lstm_cell_3/mul_6Mul(model_1/lstm_1/lstm_cell_3/Sigmoid_2:y:0%model_1/lstm_1/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          }
,model_1/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        х
model_1/lstm_1/TensorArrayV2_1TensorListReserve5model_1/lstm_1/TensorArrayV2_1/element_shape:output:0'model_1/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥U
model_1/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'model_1/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         c
!model_1/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╟
model_1/lstm_1/whileWhile*model_1/lstm_1/while/loop_counter:output:00model_1/lstm_1/while/maximum_iterations:output:0model_1/lstm_1/time:output:0'model_1/lstm_1/TensorArrayV2_1:handle:0model_1/lstm_1/zeros:output:0model_1/lstm_1/zeros_1:output:0'model_1/lstm_1/strided_slice_1:output:0Fmodel_1/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:08model_1_lstm_1_lstm_cell_3_split_readvariableop_resource:model_1_lstm_1_lstm_cell_3_split_1_readvariableop_resource2model_1_lstm_1_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 model_1_lstm_1_while_body_108781*,
cond$R"
 model_1_lstm_1_while_cond_108780*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations Р
?model_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        Ё
1model_1/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackmodel_1/lstm_1/while:output:3Hmodel_1/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ш          *
element_dtype0w
$model_1/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         p
&model_1/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&model_1/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╥
model_1/lstm_1/strided_slice_3StridedSlice:model_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-model_1/lstm_1/strided_slice_3/stack:output:0/model_1/lstm_1/strided_slice_3/stack_1:output:0/model_1/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskt
model_1/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ─
model_1/lstm_1/transpose_1	Transpose:model_1/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(model_1/lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ш j
model_1/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    }
model_1/dropout_1/IdentityIdentitymodel_1/lstm_1/transpose_1:y:0*
T0*,
_output_shapes
:         ш Ъ
(model_1/dense_1/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_1_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0h
model_1/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
model_1/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
model_1/dense_1/Tensordot/ShapeShape#model_1/dropout_1/Identity:output:0*
T0*
_output_shapes
:i
'model_1/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : √
"model_1/dense_1/Tensordot/GatherV2GatherV2(model_1/dense_1/Tensordot/Shape:output:0'model_1/dense_1/Tensordot/free:output:00model_1/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)model_1/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B :  
$model_1/dense_1/Tensordot/GatherV2_1GatherV2(model_1/dense_1/Tensordot/Shape:output:0'model_1/dense_1/Tensordot/axes:output:02model_1/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
model_1/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ю
model_1/dense_1/Tensordot/ProdProd+model_1/dense_1/Tensordot/GatherV2:output:0(model_1/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!model_1/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: д
 model_1/dense_1/Tensordot/Prod_1Prod-model_1/dense_1/Tensordot/GatherV2_1:output:0*model_1/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%model_1/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ▄
 model_1/dense_1/Tensordot/concatConcatV2'model_1/dense_1/Tensordot/free:output:0'model_1/dense_1/Tensordot/axes:output:0.model_1/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:й
model_1/dense_1/Tensordot/stackPack'model_1/dense_1/Tensordot/Prod:output:0)model_1/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:╖
#model_1/dense_1/Tensordot/transpose	Transpose#model_1/dropout_1/Identity:output:0)model_1/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ш ║
!model_1/dense_1/Tensordot/ReshapeReshape'model_1/dense_1/Tensordot/transpose:y:0(model_1/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  ║
 model_1/dense_1/Tensordot/MatMulMatMul*model_1/dense_1/Tensordot/Reshape:output:00model_1/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         k
!model_1/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:i
'model_1/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ч
"model_1/dense_1/Tensordot/concat_1ConcatV2+model_1/dense_1/Tensordot/GatherV2:output:0*model_1/dense_1/Tensordot/Const_2:output:00model_1/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:┤
model_1/dense_1/TensordotReshape*model_1/dense_1/Tensordot/MatMul:product:0+model_1/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         шТ
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0н
model_1/dense_1/BiasAddBiasAdd"model_1/dense_1/Tensordot:output:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         шt
IdentityIdentity model_1/dense_1/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:         ш═
NoOpNoOp'^model_1/dense_1/BiasAdd/ReadVariableOp)^model_1/dense_1/Tensordot/ReadVariableOp*^model_1/lstm_1/lstm_cell_3/ReadVariableOp,^model_1/lstm_1/lstm_cell_3/ReadVariableOp_1,^model_1/lstm_1/lstm_cell_3/ReadVariableOp_2,^model_1/lstm_1/lstm_cell_3/ReadVariableOp_30^model_1/lstm_1/lstm_cell_3/split/ReadVariableOp2^model_1/lstm_1/lstm_cell_3/split_1/ReadVariableOp^model_1/lstm_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2T
(model_1/dense_1/Tensordot/ReadVariableOp(model_1/dense_1/Tensordot/ReadVariableOp2V
)model_1/lstm_1/lstm_cell_3/ReadVariableOp)model_1/lstm_1/lstm_cell_3/ReadVariableOp2Z
+model_1/lstm_1/lstm_cell_3/ReadVariableOp_1+model_1/lstm_1/lstm_cell_3/ReadVariableOp_12Z
+model_1/lstm_1/lstm_cell_3/ReadVariableOp_2+model_1/lstm_1/lstm_cell_3/ReadVariableOp_22Z
+model_1/lstm_1/lstm_cell_3/ReadVariableOp_3+model_1/lstm_1/lstm_cell_3/ReadVariableOp_32b
/model_1/lstm_1/lstm_cell_3/split/ReadVariableOp/model_1/lstm_1/lstm_cell_3/split/ReadVariableOp2f
1model_1/lstm_1/lstm_cell_3/split_1/ReadVariableOp1model_1/lstm_1/lstm_cell_3/split_1/ReadVariableOp2,
model_1/lstm_1/whilemodel_1/lstm_1/while:U Q
,
_output_shapes
:         ш
!
_user_specified_name	input_2
з
╢
'__inference_lstm_1_layer_call_fn_110790
inputs_0
unknown:	А
	unknown_0:	А
	unknown_1:	 А
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                   *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_109128|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
┌
я
 model_1_lstm_1_while_cond_108780:
6model_1_lstm_1_while_model_1_lstm_1_while_loop_counter@
<model_1_lstm_1_while_model_1_lstm_1_while_maximum_iterations$
 model_1_lstm_1_while_placeholder&
"model_1_lstm_1_while_placeholder_1&
"model_1_lstm_1_while_placeholder_2&
"model_1_lstm_1_while_placeholder_3<
8model_1_lstm_1_while_less_model_1_lstm_1_strided_slice_1R
Nmodel_1_lstm_1_while_model_1_lstm_1_while_cond_108780___redundant_placeholder0R
Nmodel_1_lstm_1_while_model_1_lstm_1_while_cond_108780___redundant_placeholder1R
Nmodel_1_lstm_1_while_model_1_lstm_1_while_cond_108780___redundant_placeholder2R
Nmodel_1_lstm_1_while_model_1_lstm_1_while_cond_108780___redundant_placeholder3!
model_1_lstm_1_while_identity
Ю
model_1/lstm_1/while/LessLess model_1_lstm_1_while_placeholder8model_1_lstm_1_while_less_model_1_lstm_1_strided_slice_1*
T0*
_output_shapes
: i
model_1/lstm_1/while/IdentityIdentitymodel_1/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
model_1_lstm_1_while_identity&model_1/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
о

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_109733

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:         ш C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:С
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:         ш *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?л
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         ш T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ш
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*,
_output_shapes
:         ш f
IdentityIdentitydropout/SelectV2:output:0*
T0*,
_output_shapes
:         ш "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш :T P
,
_output_shapes
:         ш 
 
_user_specified_nameinputs
Цy
▌
B__inference_lstm_1_layer_call_and_return_conditional_losses_109638

inputs<
)lstm_cell_3_split_readvariableop_resource:	А:
+lstm_cell_3_split_1_readvariableop_resource:	А6
#lstm_cell_3_readvariableop_resource:	 А
identityИвlstm_cell_3/ReadVariableOpвlstm_cell_3/ReadVariableOp_1вlstm_cell_3/ReadVariableOp_2вlstm_cell_3/ReadVariableOp_3в lstm_cell_3/split/ReadVariableOpв"lstm_cell_3/split_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ш         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskY
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:`
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          ]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Л
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	А*
dtype0┬
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitД
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          _
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Л
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype0╕
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitМ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          x
lstm_cell_3/mulMulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          z
lstm_cell_3/mul_1Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          z
lstm_cell_3/mul_2Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          z
lstm_cell_3/mul_3Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЙ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          И
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          e
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          w
lstm_cell_3/mul_4Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          a
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          y
lstm_cell_3/mul_5Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          z
lstm_cell_3/add_3AddV2lstm_cell_3/mul_4:z:0lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          }
lstm_cell_3/mul_6Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_109511*
condR
while_cond_109510*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ш          *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ш [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ш Р
NoOpNoOp^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ш: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
╡
├
while_cond_109058
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109058___redundant_placeholder04
0while_while_cond_109058___redundant_placeholder14
0while_while_cond_109058___redundant_placeholder24
0while_while_cond_109058___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Цy
▌
B__inference_lstm_1_layer_call_and_return_conditional_losses_111574

inputs<
)lstm_cell_3_split_readvariableop_resource:	А:
+lstm_cell_3_split_1_readvariableop_resource:	А6
#lstm_cell_3_readvariableop_resource:	 А
identityИвlstm_cell_3/ReadVariableOpвlstm_cell_3/ReadVariableOp_1вlstm_cell_3/ReadVariableOp_2вlstm_cell_3/ReadVariableOp_3в lstm_cell_3/split/ReadVariableOpв"lstm_cell_3/split_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ш         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskY
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:`
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          ]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Л
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	А*
dtype0┬
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitД
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          _
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Л
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype0╕
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitМ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          x
lstm_cell_3/mulMulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          z
lstm_cell_3/mul_1Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          z
lstm_cell_3/mul_2Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          z
lstm_cell_3/mul_3Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЙ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          И
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          e
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          w
lstm_cell_3/mul_4Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          a
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          y
lstm_cell_3/mul_5Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          z
lstm_cell_3/add_3AddV2lstm_cell_3/mul_4:z:0lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          }
lstm_cell_3/mul_6Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_111447*
condR
while_cond_111446*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ш          *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ш [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ш Р
NoOpNoOp^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ш: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
╧O
о
"__inference__traced_restore_112290
file_prefix1
assignvariableop_dense_1_kernel: -
assignvariableop_1_dense_1_bias:?
,assignvariableop_2_lstm_1_lstm_cell_3_kernel:	АI
6assignvariableop_3_lstm_1_lstm_cell_3_recurrent_kernel:	 А9
*assignvariableop_4_lstm_1_lstm_cell_3_bias:	А&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: P
=assignvariableop_7_rmsprop_velocity_lstm_1_lstm_cell_3_kernel:	АZ
Gassignvariableop_8_rmsprop_velocity_lstm_1_lstm_cell_3_recurrent_kernel:	 АJ
;assignvariableop_9_rmsprop_velocity_lstm_1_lstm_cell_3_bias:	АE
3assignvariableop_10_rmsprop_velocity_dense_1_kernel: ?
1assignvariableop_11_rmsprop_velocity_dense_1_bias:%
assignvariableop_12_total_2: %
assignvariableop_13_count_2: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: #
assignvariableop_16_total: #
assignvariableop_17_count: 
identity_19ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9Э
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*├
value╣B╢B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЦ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B ¤
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_2AssignVariableOp,assignvariableop_2_lstm_1_lstm_cell_3_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_3AssignVariableOp6assignvariableop_3_lstm_1_lstm_cell_3_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_4AssignVariableOp*assignvariableop_4_lstm_1_lstm_cell_3_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╘
AssignVariableOp_7AssignVariableOp=assignvariableop_7_rmsprop_velocity_lstm_1_lstm_cell_3_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:▐
AssignVariableOp_8AssignVariableOpGassignvariableop_8_rmsprop_velocity_lstm_1_lstm_cell_3_recurrent_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_9AssignVariableOp;assignvariableop_9_rmsprop_velocity_lstm_1_lstm_cell_3_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_10AssignVariableOp3assignvariableop_10_rmsprop_velocity_dense_1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╩
AssignVariableOp_11AssignVariableOp1assignvariableop_11_rmsprop_velocity_dense_1_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_2Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_2Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 █
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_19IdentityIdentity_18:output:0^NoOp_1*
T0*
_output_shapes
: ╚
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╛z
Н
lstm_1_while_body_110298*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0K
8lstm_1_while_lstm_cell_3_split_readvariableop_resource_0:	АI
:lstm_1_while_lstm_cell_3_split_1_readvariableop_resource_0:	АE
2lstm_1_while_lstm_cell_3_readvariableop_resource_0:	 А
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorI
6lstm_1_while_lstm_cell_3_split_readvariableop_resource:	АG
8lstm_1_while_lstm_cell_3_split_1_readvariableop_resource:	АC
0lstm_1_while_lstm_cell_3_readvariableop_resource:	 АИв'lstm_1/while/lstm_cell_3/ReadVariableOpв)lstm_1/while/lstm_cell_3/ReadVariableOp_1в)lstm_1/while/lstm_cell_3/ReadVariableOp_2в)lstm_1/while/lstm_cell_3/ReadVariableOp_3в-lstm_1/while/lstm_cell_3/split/ReadVariableOpв/lstm_1/while/lstm_cell_3/split_1/ReadVariableOpП
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ╔
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0r
(lstm_1/while/lstm_cell_3/ones_like/ShapeShapelstm_1_while_placeholder_2*
T0*
_output_shapes
:m
(lstm_1/while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?┬
"lstm_1/while/lstm_cell_3/ones_likeFill1lstm_1/while/lstm_cell_3/ones_like/Shape:output:01lstm_1/while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          j
(lstm_1/while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :з
-lstm_1/while/lstm_cell_3/split/ReadVariableOpReadVariableOp8lstm_1_while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	А*
dtype0щ
lstm_1/while/lstm_cell_3/splitSplit1lstm_1/while/lstm_cell_3/split/split_dim:output:05lstm_1/while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_split╜
lstm_1/while/lstm_cell_3/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          ┐
!lstm_1/while/lstm_cell_3/MatMul_1MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          ┐
!lstm_1/while/lstm_cell_3/MatMul_2MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          ┐
!lstm_1/while/lstm_cell_3/MatMul_3MatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0'lstm_1/while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          l
*lstm_1/while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : з
/lstm_1/while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype0▀
 lstm_1/while/lstm_cell_3/split_1Split3lstm_1/while/lstm_cell_3/split_1/split_dim:output:07lstm_1/while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split│
 lstm_1/while/lstm_cell_3/BiasAddBiasAdd)lstm_1/while/lstm_cell_3/MatMul:product:0)lstm_1/while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          ╖
"lstm_1/while/lstm_cell_3/BiasAdd_1BiasAdd+lstm_1/while/lstm_cell_3/MatMul_1:product:0)lstm_1/while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          ╖
"lstm_1/while/lstm_cell_3/BiasAdd_2BiasAdd+lstm_1/while/lstm_cell_3/MatMul_2:product:0)lstm_1/while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          ╖
"lstm_1/while/lstm_cell_3/BiasAdd_3BiasAdd+lstm_1/while/lstm_cell_3/MatMul_3:product:0)lstm_1/while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          Ю
lstm_1/while/lstm_cell_3/mulMullstm_1_while_placeholder_2+lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          а
lstm_1/while/lstm_cell_3/mul_1Mullstm_1_while_placeholder_2+lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          а
lstm_1/while/lstm_cell_3/mul_2Mullstm_1_while_placeholder_2+lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          а
lstm_1/while/lstm_cell_3/mul_3Mullstm_1_while_placeholder_2+lstm_1/while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Ы
'lstm_1/while/lstm_cell_3/ReadVariableOpReadVariableOp2lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0}
,lstm_1/while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.lstm_1/while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
.lstm_1/while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
&lstm_1/while/lstm_cell_3/strided_sliceStridedSlice/lstm_1/while/lstm_cell_3/ReadVariableOp:value:05lstm_1/while/lstm_cell_3/strided_slice/stack:output:07lstm_1/while/lstm_cell_3/strided_slice/stack_1:output:07lstm_1/while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask░
!lstm_1/while/lstm_cell_3/MatMul_4MatMul lstm_1/while/lstm_cell_3/mul:z:0/lstm_1/while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          п
lstm_1/while/lstm_cell_3/addAddV2)lstm_1/while/lstm_cell_3/BiasAdd:output:0+lstm_1/while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          
 lstm_1/while/lstm_cell_3/SigmoidSigmoid lstm_1/while/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          Э
)lstm_1/while/lstm_cell_3/ReadVariableOp_1ReadVariableOp2lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0
.lstm_1/while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Б
0lstm_1/while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   Б
0lstm_1/while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Є
(lstm_1/while/lstm_cell_3/strided_slice_1StridedSlice1lstm_1/while/lstm_cell_3/ReadVariableOp_1:value:07lstm_1/while/lstm_cell_3/strided_slice_1/stack:output:09lstm_1/while/lstm_cell_3/strided_slice_1/stack_1:output:09lstm_1/while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask┤
!lstm_1/while/lstm_cell_3/MatMul_5MatMul"lstm_1/while/lstm_cell_3/mul_1:z:01lstm_1/while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          │
lstm_1/while/lstm_cell_3/add_1AddV2+lstm_1/while/lstm_cell_3/BiasAdd_1:output:0+lstm_1/while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          Г
"lstm_1/while/lstm_cell_3/Sigmoid_1Sigmoid"lstm_1/while/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          Ы
lstm_1/while/lstm_cell_3/mul_4Mul&lstm_1/while/lstm_cell_3/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*'
_output_shapes
:          Э
)lstm_1/while/lstm_cell_3/ReadVariableOp_2ReadVariableOp2lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0
.lstm_1/while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   Б
0lstm_1/while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   Б
0lstm_1/while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Є
(lstm_1/while/lstm_cell_3/strided_slice_2StridedSlice1lstm_1/while/lstm_cell_3/ReadVariableOp_2:value:07lstm_1/while/lstm_cell_3/strided_slice_2/stack:output:09lstm_1/while/lstm_cell_3/strided_slice_2/stack_1:output:09lstm_1/while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask┤
!lstm_1/while/lstm_cell_3/MatMul_6MatMul"lstm_1/while/lstm_cell_3/mul_2:z:01lstm_1/while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          │
lstm_1/while/lstm_cell_3/add_2AddV2+lstm_1/while/lstm_cell_3/BiasAdd_2:output:0+lstm_1/while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          {
lstm_1/while/lstm_cell_3/TanhTanh"lstm_1/while/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          а
lstm_1/while/lstm_cell_3/mul_5Mul$lstm_1/while/lstm_cell_3/Sigmoid:y:0!lstm_1/while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          б
lstm_1/while/lstm_cell_3/add_3AddV2"lstm_1/while/lstm_cell_3/mul_4:z:0"lstm_1/while/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          Э
)lstm_1/while/lstm_cell_3/ReadVariableOp_3ReadVariableOp2lstm_1_while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0
.lstm_1/while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   Б
0lstm_1/while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Б
0lstm_1/while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Є
(lstm_1/while/lstm_cell_3/strided_slice_3StridedSlice1lstm_1/while/lstm_cell_3/ReadVariableOp_3:value:07lstm_1/while/lstm_cell_3/strided_slice_3/stack:output:09lstm_1/while/lstm_cell_3/strided_slice_3/stack_1:output:09lstm_1/while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_mask┤
!lstm_1/while/lstm_cell_3/MatMul_7MatMul"lstm_1/while/lstm_cell_3/mul_3:z:01lstm_1/while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          │
lstm_1/while/lstm_cell_3/add_4AddV2+lstm_1/while/lstm_cell_3/BiasAdd_3:output:0+lstm_1/while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          Г
"lstm_1/while/lstm_cell_3/Sigmoid_2Sigmoid"lstm_1/while/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          }
lstm_1/while/lstm_cell_3/Tanh_1Tanh"lstm_1/while/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          д
lstm_1/while/lstm_cell_3/mul_6Mul&lstm_1/while/lstm_cell_3/Sigmoid_2:y:0#lstm_1/while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          р
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_3/mul_6:z:0*
_output_shapes
: *
element_dtype0:щш╥T
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Г
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Ж
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Ы
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: Н
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_3/mul_6:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:          Н
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_3/add_3:z:0^lstm_1/while/NoOp*
T0*'
_output_shapes
:          у
lstm_1/while/NoOpNoOp(^lstm_1/while/lstm_cell_3/ReadVariableOp*^lstm_1/while/lstm_cell_3/ReadVariableOp_1*^lstm_1/while/lstm_cell_3/ReadVariableOp_2*^lstm_1/while/lstm_cell_3/ReadVariableOp_3.^lstm_1/while/lstm_cell_3/split/ReadVariableOp0^lstm_1/while/lstm_cell_3/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"f
0lstm_1_while_lstm_cell_3_readvariableop_resource2lstm_1_while_lstm_cell_3_readvariableop_resource_0"v
8lstm_1_while_lstm_cell_3_split_1_readvariableop_resource:lstm_1_while_lstm_cell_3_split_1_readvariableop_resource_0"r
6lstm_1_while_lstm_cell_3_split_readvariableop_resource8lstm_1_while_lstm_cell_3_split_readvariableop_resource_0"─
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2R
'lstm_1/while/lstm_cell_3/ReadVariableOp'lstm_1/while/lstm_cell_3/ReadVariableOp2V
)lstm_1/while/lstm_cell_3/ReadVariableOp_1)lstm_1/while/lstm_cell_3/ReadVariableOp_12V
)lstm_1/while/lstm_cell_3/ReadVariableOp_2)lstm_1/while/lstm_cell_3/ReadVariableOp_22V
)lstm_1/while/lstm_cell_3/ReadVariableOp_3)lstm_1/while/lstm_cell_3/ReadVariableOp_32^
-lstm_1/while/lstm_cell_3/split/ReadVariableOp-lstm_1/while/lstm_cell_3/split/ReadVariableOp2b
/lstm_1/while/lstm_cell_3/split_1/ReadVariableOp/lstm_1/while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
╡
├
while_cond_109324
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_109324___redundant_placeholder04
0while_while_cond_109324___redundant_placeholder14
0while_while_cond_109324___redundant_placeholder24
0while_while_cond_109324___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
Б
┤
'__inference_lstm_1_layer_call_fn_110823

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	 А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_110042t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ш `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ш: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
Е
c
*__inference_dropout_1_layer_call_fn_111877

inputs
identityИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_109733t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ш `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ш 
 
_user_specified_nameinputs
╡
├
while_cond_111446
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_111446___redundant_placeholder04
0while_while_cond_111446___redundant_placeholder14
0while_while_cond_111446___redundant_placeholder24
0while_while_cond_111446___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
дl
Ш	
while_body_110925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	АB
3while_lstm_cell_3_split_1_readvariableop_resource_0:	А>
+while_lstm_cell_3_readvariableop_resource_0:	 А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	А@
1while_lstm_cell_3_split_1_readvariableop_resource:	А<
)while_lstm_cell_3_readvariableop_resource:	 АИв while/lstm_cell_3/ReadVariableOpв"while/lstm_cell_3/ReadVariableOp_1в"while/lstm_cell_3/ReadVariableOp_2в"while/lstm_cell_3/ReadVariableOp_3в&while/lstm_cell_3/split/ReadVariableOpв(while/lstm_cell_3/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0d
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:f
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?н
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	А*
dtype0╘
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitи
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          e
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Щ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╩
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitЮ
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          Й
while/lstm_cell_3/mulMulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_1Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_2Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_3Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Н
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0v
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЫ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          q
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          Ж
while/lstm_cell_3/mul_4Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          m
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_5Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          М
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_4:z:0while/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          П
while/lstm_cell_3/mul_6Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_6:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:          x
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:          ▓

while/NoOpNoOp!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
┌
ь
(__inference_model_1_layer_call_fn_109703
input_2
unknown:	А
	unknown_0:	А
	unknown_1:	 А
	unknown_2: 
	unknown_3:
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_109690t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ш`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:         ш
!
_user_specified_name	input_2
и-
й
__inference__traced_save_112226
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop8
4savev2_lstm_1_lstm_cell_3_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_3_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_3_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopI
Esavev2_rmsprop_velocity_lstm_1_lstm_cell_3_kernel_read_readvariableopS
Osavev2_rmsprop_velocity_lstm_1_lstm_cell_3_recurrent_kernel_read_readvariableopG
Csavev2_rmsprop_velocity_lstm_1_lstm_cell_3_bias_read_readvariableop>
:savev2_rmsprop_velocity_dense_1_kernel_read_readvariableop<
8savev2_rmsprop_velocity_dense_1_bias_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ъ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*├
value╣B╢B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHУ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B ▀
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop4savev2_lstm_1_lstm_cell_3_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_3_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_3_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableopEsavev2_rmsprop_velocity_lstm_1_lstm_cell_3_kernel_read_readvariableopOsavev2_rmsprop_velocity_lstm_1_lstm_cell_3_recurrent_kernel_read_readvariableopCsavev2_rmsprop_velocity_lstm_1_lstm_cell_3_bias_read_readvariableop:savev2_rmsprop_velocity_dense_1_kernel_read_readvariableop8savev2_rmsprop_velocity_dense_1_bias_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *!
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Б
_input_shapesp
n: : ::	А:	 А:А: : :	А:	 А:А: :: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	А:%!

_output_shapes
:	 А:!

_output_shapes	
:А:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А:$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╠У
Ш	
while_body_111186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	АB
3while_lstm_cell_3_split_1_readvariableop_resource_0:	А>
+while_lstm_cell_3_readvariableop_resource_0:	 А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	А@
1while_lstm_cell_3_split_1_readvariableop_resource:	А<
)while_lstm_cell_3_readvariableop_resource:	 АИв while/lstm_cell_3/ReadVariableOpв"while/lstm_cell_3/ReadVariableOp_1в"while/lstm_cell_3/ReadVariableOp_2в"while/lstm_cell_3/ReadVariableOp_3в&while/lstm_cell_3/split/ReadVariableOpв(while/lstm_cell_3/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0d
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:f
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?н
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          d
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ж
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:          s
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:░
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0m
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?▄
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell_3/dropout/SelectV2SelectV2*while/lstm_cell_3/dropout/GreaterEqual:z:0!while/lstm_cell_3/dropout/Mul:z:0*while/lstm_cell_3/dropout/Const_1:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:          u
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┤
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0o
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?т
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          h
#while/lstm_cell_3/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$while/lstm_cell_3/dropout_1/SelectV2SelectV2,while/lstm_cell_3/dropout_1/GreaterEqual:z:0#while/lstm_cell_3/dropout_1/Mul:z:0,while/lstm_cell_3/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:          u
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┤
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0o
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?т
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          h
#while/lstm_cell_3/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$while/lstm_cell_3/dropout_2/SelectV2SelectV2,while/lstm_cell_3/dropout_2/GreaterEqual:z:0#while/lstm_cell_3/dropout_2/Mul:z:0,while/lstm_cell_3/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:          u
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┤
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0o
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?т
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          h
#while/lstm_cell_3/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$while/lstm_cell_3/dropout_3/SelectV2SelectV2,while/lstm_cell_3/dropout_3/GreaterEqual:z:0#while/lstm_cell_3/dropout_3/Mul:z:0,while/lstm_cell_3/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	А*
dtype0╘
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitи
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          e
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Щ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╩
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitЮ
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          Р
while/lstm_cell_3/mulMulwhile_placeholder_2+while/lstm_cell_3/dropout/SelectV2:output:0*
T0*'
_output_shapes
:          Ф
while/lstm_cell_3/mul_1Mulwhile_placeholder_2-while/lstm_cell_3/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          Ф
while/lstm_cell_3/mul_2Mulwhile_placeholder_2-while/lstm_cell_3/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          Ф
while/lstm_cell_3/mul_3Mulwhile_placeholder_2-while/lstm_cell_3/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          Н
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0v
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЫ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          q
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          Ж
while/lstm_cell_3/mul_4Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          m
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_5Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          М
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_4:z:0while/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          П
while/lstm_cell_3/mul_6Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_6:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:          x
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:          ▓

while/NoOpNoOp!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
че
▄
C__inference_model_1_layer_call_and_return_conditional_losses_110452

inputsC
0lstm_1_lstm_cell_3_split_readvariableop_resource:	АA
2lstm_1_lstm_cell_3_split_1_readvariableop_resource:	А=
*lstm_1_lstm_cell_3_readvariableop_resource:	 А;
)dense_1_tensordot_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identityИвdense_1/BiasAdd/ReadVariableOpв dense_1/Tensordot/ReadVariableOpв!lstm_1/lstm_cell_3/ReadVariableOpв#lstm_1/lstm_cell_3/ReadVariableOp_1в#lstm_1/lstm_cell_3/ReadVariableOp_2в#lstm_1/lstm_cell_3/ReadVariableOp_3в'lstm_1/lstm_cell_3/split/ReadVariableOpв)lstm_1/lstm_cell_3/split_1/ReadVariableOpвlstm_1/whileB
lstm_1/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : И
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:          Y
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : М
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    З
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:          j
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
lstm_1/transpose	Transposeinputslstm_1/transpose/perm:output:0*
T0*,
_output_shapes
:ш         R
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ╔
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Н
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ї
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥f
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskg
"lstm_1/lstm_cell_3/ones_like/ShapeShapelstm_1/zeros:output:0*
T0*
_output_shapes
:g
"lstm_1/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?░
lstm_1/lstm_cell_3/ones_likeFill+lstm_1/lstm_cell_3/ones_like/Shape:output:0+lstm_1/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          d
"lstm_1/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
'lstm_1/lstm_cell_3/split/ReadVariableOpReadVariableOp0lstm_1_lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	А*
dtype0╫
lstm_1/lstm_cell_3/splitSplit+lstm_1/lstm_cell_3/split/split_dim:output:0/lstm_1/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitЩ
lstm_1/lstm_cell_3/MatMulMatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          Ы
lstm_1/lstm_cell_3/MatMul_1MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          Ы
lstm_1/lstm_cell_3/MatMul_2MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          Ы
lstm_1/lstm_cell_3/MatMul_3MatMullstm_1/strided_slice_2:output:0!lstm_1/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          f
$lstm_1/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Щ
)lstm_1/lstm_cell_3/split_1/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype0═
lstm_1/lstm_cell_3/split_1Split-lstm_1/lstm_cell_3/split_1/split_dim:output:01lstm_1/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitб
lstm_1/lstm_cell_3/BiasAddBiasAdd#lstm_1/lstm_cell_3/MatMul:product:0#lstm_1/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          е
lstm_1/lstm_cell_3/BiasAdd_1BiasAdd%lstm_1/lstm_cell_3/MatMul_1:product:0#lstm_1/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          е
lstm_1/lstm_cell_3/BiasAdd_2BiasAdd%lstm_1/lstm_cell_3/MatMul_2:product:0#lstm_1/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          е
lstm_1/lstm_cell_3/BiasAdd_3BiasAdd%lstm_1/lstm_cell_3/MatMul_3:product:0#lstm_1/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          Н
lstm_1/lstm_cell_3/mulMullstm_1/zeros:output:0%lstm_1/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          П
lstm_1/lstm_cell_3/mul_1Mullstm_1/zeros:output:0%lstm_1/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          П
lstm_1/lstm_cell_3/mul_2Mullstm_1/zeros:output:0%lstm_1/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          П
lstm_1/lstm_cell_3/mul_3Mullstm_1/zeros:output:0%lstm_1/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Н
!lstm_1/lstm_cell_3/ReadVariableOpReadVariableOp*lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0w
&lstm_1/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_1/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_1/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╩
 lstm_1/lstm_cell_3/strided_sliceStridedSlice)lstm_1/lstm_cell_3/ReadVariableOp:value:0/lstm_1/lstm_cell_3/strided_slice/stack:output:01lstm_1/lstm_cell_3/strided_slice/stack_1:output:01lstm_1/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЮ
lstm_1/lstm_cell_3/MatMul_4MatMullstm_1/lstm_cell_3/mul:z:0)lstm_1/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          Э
lstm_1/lstm_cell_3/addAddV2#lstm_1/lstm_cell_3/BiasAdd:output:0%lstm_1/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          s
lstm_1/lstm_cell_3/SigmoidSigmoidlstm_1/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          П
#lstm_1/lstm_cell_3/ReadVariableOp_1ReadVariableOp*lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0y
(lstm_1/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_1/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm_1/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
"lstm_1/lstm_cell_3/strided_slice_1StridedSlice+lstm_1/lstm_cell_3/ReadVariableOp_1:value:01lstm_1/lstm_cell_3/strided_slice_1/stack:output:03lstm_1/lstm_cell_3/strided_slice_1/stack_1:output:03lstm_1/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskв
lstm_1/lstm_cell_3/MatMul_5MatMullstm_1/lstm_cell_3/mul_1:z:0+lstm_1/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          б
lstm_1/lstm_cell_3/add_1AddV2%lstm_1/lstm_cell_3/BiasAdd_1:output:0%lstm_1/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          w
lstm_1/lstm_cell_3/Sigmoid_1Sigmoidlstm_1/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          М
lstm_1/lstm_cell_3/mul_4Mul lstm_1/lstm_cell_3/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:          П
#lstm_1/lstm_cell_3/ReadVariableOp_2ReadVariableOp*lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0y
(lstm_1/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm_1/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   {
*lstm_1/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
"lstm_1/lstm_cell_3/strided_slice_2StridedSlice+lstm_1/lstm_cell_3/ReadVariableOp_2:value:01lstm_1/lstm_cell_3/strided_slice_2/stack:output:03lstm_1/lstm_cell_3/strided_slice_2/stack_1:output:03lstm_1/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskв
lstm_1/lstm_cell_3/MatMul_6MatMullstm_1/lstm_cell_3/mul_2:z:0+lstm_1/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          б
lstm_1/lstm_cell_3/add_2AddV2%lstm_1/lstm_cell_3/BiasAdd_2:output:0%lstm_1/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          o
lstm_1/lstm_cell_3/TanhTanhlstm_1/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          О
lstm_1/lstm_cell_3/mul_5Mullstm_1/lstm_cell_3/Sigmoid:y:0lstm_1/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          П
lstm_1/lstm_cell_3/add_3AddV2lstm_1/lstm_cell_3/mul_4:z:0lstm_1/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          П
#lstm_1/lstm_cell_3/ReadVariableOp_3ReadVariableOp*lstm_1_lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0y
(lstm_1/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   {
*lstm_1/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_1/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╘
"lstm_1/lstm_cell_3/strided_slice_3StridedSlice+lstm_1/lstm_cell_3/ReadVariableOp_3:value:01lstm_1/lstm_cell_3/strided_slice_3/stack:output:03lstm_1/lstm_cell_3/strided_slice_3/stack_1:output:03lstm_1/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskв
lstm_1/lstm_cell_3/MatMul_7MatMullstm_1/lstm_cell_3/mul_3:z:0+lstm_1/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          б
lstm_1/lstm_cell_3/add_4AddV2%lstm_1/lstm_cell_3/BiasAdd_3:output:0%lstm_1/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          w
lstm_1/lstm_cell_3/Sigmoid_2Sigmoidlstm_1/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          q
lstm_1/lstm_cell_3/Tanh_1Tanhlstm_1/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          Т
lstm_1/lstm_cell_3/mul_6Mul lstm_1/lstm_cell_3/Sigmoid_2:y:0lstm_1/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          u
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ═
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥M
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         [
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╫
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_1_lstm_cell_3_split_readvariableop_resource2lstm_1_lstm_cell_3_split_1_readvariableop_resource*lstm_1_lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_1_while_body_110298*$
condR
lstm_1_while_cond_110297*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations И
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╪
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ш          *
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         h
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:к
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:         ш b
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    m
dropout_1/IdentityIdentitylstm_1/transpose_1:y:0*
T0*,
_output_shapes
:         ш К
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       b
dense_1/Tensordot/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : █
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ▀
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: М
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╝
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:С
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Я
dense_1/Tensordot/transpose	Transposedropout_1/Identity:output:0!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:         ш в
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:                  в
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ╟
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ь
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         шВ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Х
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         шl
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:         шЕ
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp"^lstm_1/lstm_cell_3/ReadVariableOp$^lstm_1/lstm_cell_3/ReadVariableOp_1$^lstm_1/lstm_cell_3/ReadVariableOp_2$^lstm_1/lstm_cell_3/ReadVariableOp_3(^lstm_1/lstm_cell_3/split/ReadVariableOp*^lstm_1/lstm_cell_3/split_1/ReadVariableOp^lstm_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2F
!lstm_1/lstm_cell_3/ReadVariableOp!lstm_1/lstm_cell_3/ReadVariableOp2J
#lstm_1/lstm_cell_3/ReadVariableOp_1#lstm_1/lstm_cell_3/ReadVariableOp_12J
#lstm_1/lstm_cell_3/ReadVariableOp_2#lstm_1/lstm_cell_3/ReadVariableOp_22J
#lstm_1/lstm_cell_3/ReadVariableOp_3#lstm_1/lstm_cell_3/ReadVariableOp_32R
'lstm_1/lstm_cell_3/split/ReadVariableOp'lstm_1/lstm_cell_3/split/ReadVariableOp2V
)lstm_1/lstm_cell_3/split_1/ReadVariableOp)lstm_1/lstm_cell_3/split_1/ReadVariableOp2
lstm_1/whilelstm_1/while:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
╨
·
C__inference_dense_1_layer_call_and_return_conditional_losses_111933

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ш К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Д
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         шr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         шd
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:         шz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ш 
 
_user_specified_nameinputs
╬"
▄
while_body_109059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_3_109083_0:	А)
while_lstm_cell_3_109085_0:	А-
while_lstm_cell_3_109087_0:	 А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_3_109083:	А'
while_lstm_cell_3_109085:	А+
while_lstm_cell_3_109087:	 АИв)while/lstm_cell_3/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0о
)while/lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_3_109083_0while_lstm_cell_3_109085_0while_lstm_cell_3_109087_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_109045█
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: П
while/Identity_4Identity2while/lstm_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:          П
while/Identity_5Identity2while/lstm_cell_3/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:          x

while/NoOpNoOp*^while/lstm_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_3_109083while_lstm_cell_3_109083_0"6
while_lstm_cell_3_109085while_lstm_cell_3_109085_0"6
while_lstm_cell_3_109087while_lstm_cell_3_109087_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2V
)while/lstm_cell_3/StatefulPartitionedCall)while/lstm_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
╘
Х
(__inference_dense_1_layer_call_fn_111903

inputs
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_109683t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ш`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ш 
 
_user_specified_nameinputs
╘\
к
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_112149

inputs
states_0
states_10
split_readvariableop_resource:	А.
split_1_readvariableop_resource:	А*
readvariableop_resource:	 А
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вsplit/ReadVariableOpвsplit_1/ReadVariableOpG
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:          R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:          O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:М
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ж
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:          T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:          Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Р
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?м
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          V
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:          Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Р
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?м
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          V
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:          Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Р
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?м
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          V
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	А*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:          \
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:          \
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:          \
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:          S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:          l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:          l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:          l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:          a
mulMulstates_0dropout/SelectV2:output:0*
T0*'
_output_shapes
:          e
mul_1Mulstates_0dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          e
mul_2Mulstates_0dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          e
mul_3Mulstates_0dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maske
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:          d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:          M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:          i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:          h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:          Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:          W
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:          h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:          I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:          U
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          V
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:          i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:          h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:          Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          Y
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          X
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:          Z

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:          Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:          └
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :          :          : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states_0:QM
'
_output_shapes
:          
"
_user_specified_name
states_1
∙	
╧
lstm_1_while_cond_110585*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_110585___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_110585___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_110585___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_110585___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
│
F
*__inference_dropout_1_layer_call_fn_111872

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_109651e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         ш "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш :T P
,
_output_shapes
:         ш 
 
_user_specified_nameinputs
∙	
╧
lstm_1_while_cond_110297*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_110297___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_110297___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_110297___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_110297___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
╡
├
while_cond_111707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_111707___redundant_placeholder04
0while_while_cond_111707___redundant_placeholder14
0while_while_cond_111707___redundant_placeholder24
0while_while_cond_111707___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
╠У
Ш	
while_body_111708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	АB
3while_lstm_cell_3_split_1_readvariableop_resource_0:	А>
+while_lstm_cell_3_readvariableop_resource_0:	 А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	А@
1while_lstm_cell_3_split_1_readvariableop_resource:	А<
)while_lstm_cell_3_readvariableop_resource:	 АИв while/lstm_cell_3/ReadVariableOpв"while/lstm_cell_3/ReadVariableOp_1в"while/lstm_cell_3/ReadVariableOp_2в"while/lstm_cell_3/ReadVariableOp_3в&while/lstm_cell_3/split/ReadVariableOpв(while/lstm_cell_3/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0d
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:f
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?н
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          d
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ж
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:          s
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:░
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0m
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?▄
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell_3/dropout/SelectV2SelectV2*while/lstm_cell_3/dropout/GreaterEqual:z:0!while/lstm_cell_3/dropout/Mul:z:0*while/lstm_cell_3/dropout/Const_1:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:          u
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┤
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0o
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?т
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          h
#while/lstm_cell_3/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$while/lstm_cell_3/dropout_1/SelectV2SelectV2,while/lstm_cell_3/dropout_1/GreaterEqual:z:0#while/lstm_cell_3/dropout_1/Mul:z:0,while/lstm_cell_3/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:          u
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┤
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0o
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?т
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          h
#while/lstm_cell_3/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$while/lstm_cell_3/dropout_2/SelectV2SelectV2,while/lstm_cell_3/dropout_2/GreaterEqual:z:0#while/lstm_cell_3/dropout_2/Mul:z:0,while/lstm_cell_3/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:          u
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┤
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0o
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?т
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          h
#while/lstm_cell_3/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$while/lstm_cell_3/dropout_3/SelectV2SelectV2,while/lstm_cell_3/dropout_3/GreaterEqual:z:0#while/lstm_cell_3/dropout_3/Mul:z:0,while/lstm_cell_3/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	А*
dtype0╘
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitи
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          e
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Щ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╩
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitЮ
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          Р
while/lstm_cell_3/mulMulwhile_placeholder_2+while/lstm_cell_3/dropout/SelectV2:output:0*
T0*'
_output_shapes
:          Ф
while/lstm_cell_3/mul_1Mulwhile_placeholder_2-while/lstm_cell_3/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          Ф
while/lstm_cell_3/mul_2Mulwhile_placeholder_2-while/lstm_cell_3/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          Ф
while/lstm_cell_3/mul_3Mulwhile_placeholder_2-while/lstm_cell_3/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          Н
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0v
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЫ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          q
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          Ж
while/lstm_cell_3/mul_4Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          m
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_5Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          М
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_4:z:0while/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          П
while/lstm_cell_3/mul_6Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_6:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:          x
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:          ▓

while/NoOpNoOp!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
В8
А
B__inference_lstm_1_layer_call_and_return_conditional_losses_109394

inputs%
lstm_cell_3_109312:	А!
lstm_cell_3_109314:	А%
lstm_cell_3_109316:	 А
identityИв#lstm_cell_3/StatefulPartitionedCallвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЁ
#lstm_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_3_109312lstm_cell_3_109314lstm_cell_3_109316*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_109266n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_3_109312lstm_cell_3_109314lstm_cell_3_109316*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_109325*
condR
while_cond_109324*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                   t
NoOpNoOp$^lstm_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2J
#lstm_cell_3/StatefulPartitionedCall#lstm_cell_3/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
д
╟
C__inference_model_1_layer_call_and_return_conditional_losses_109690

inputs 
lstm_1_109639:	А
lstm_1_109641:	А 
lstm_1_109643:	 А 
dense_1_109684: 
dense_1_109686:
identityИвdense_1/StatefulPartitionedCallвlstm_1/StatefulPartitionedCall■
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_109639lstm_1_109641lstm_1_109643*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_109638р
dropout_1/PartitionedCallPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_109651Н
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_109684dense_1_109686*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_109683|
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         шЙ
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
з
╚
C__inference_model_1_layer_call_and_return_conditional_losses_110130
input_2 
lstm_1_110116:	А
lstm_1_110118:	А 
lstm_1_110120:	 А 
dense_1_110124: 
dense_1_110126:
identityИвdense_1/StatefulPartitionedCallвlstm_1/StatefulPartitionedCall 
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinput_2lstm_1_110116lstm_1_110118lstm_1_110120*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_109638р
dropout_1/PartitionedCallPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_109651Н
dense_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_1_110124dense_1_110126*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_109683|
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         шЙ
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:U Q
,
_output_shapes
:         ш
!
_user_specified_name	input_2
╫
ы
(__inference_model_1_layer_call_fn_110196

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	 А
	unknown_2: 
	unknown_3:
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_110085t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ш`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
╠
ы
C__inference_model_1_layer_call_and_return_conditional_losses_110085

inputs 
lstm_1_110071:	А
lstm_1_110073:	А 
lstm_1_110075:	 А 
dense_1_110079: 
dense_1_110081:
identityИвdense_1/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallвlstm_1/StatefulPartitionedCall■
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_110071lstm_1_110073lstm_1_110075*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_110042Ё
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_109733Х
dense_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_1_110079dense_1_110081*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_109683|
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         шн
NoOpNoOp ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
Б
┤
'__inference_lstm_1_layer_call_fn_110812

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	 А
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_109638t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ш `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ш: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
йЭ
▌
B__inference_lstm_1_layer_call_and_return_conditional_losses_111867

inputs<
)lstm_cell_3_split_readvariableop_resource:	А:
+lstm_cell_3_split_1_readvariableop_resource:	А6
#lstm_cell_3_readvariableop_resource:	 А
identityИвlstm_cell_3/ReadVariableOpвlstm_cell_3/ReadVariableOp_1вlstm_cell_3/ReadVariableOp_2вlstm_cell_3/ReadVariableOp_3в lstm_cell_3/split/ReadVariableOpв"lstm_cell_3/split_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ш         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskY
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:`
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          ^
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ф
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:          g
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:д
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0g
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╩
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell_3/dropout/SelectV2SelectV2$lstm_cell_3/dropout/GreaterEqual:z:0lstm_cell_3/dropout/Mul:z:0$lstm_cell_3/dropout/Const_1:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:          i
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:и
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0i
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╨
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          b
lstm_cell_3/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
lstm_cell_3/dropout_1/SelectV2SelectV2&lstm_cell_3/dropout_1/GreaterEqual:z:0lstm_cell_3/dropout_1/Mul:z:0&lstm_cell_3/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:          i
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:и
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0i
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╨
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          b
lstm_cell_3/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
lstm_cell_3/dropout_2/SelectV2SelectV2&lstm_cell_3/dropout_2/GreaterEqual:z:0lstm_cell_3/dropout_2/Mul:z:0&lstm_cell_3/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:          i
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:и
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0i
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╨
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          b
lstm_cell_3/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
lstm_cell_3/dropout_3/SelectV2SelectV2&lstm_cell_3/dropout_3/GreaterEqual:z:0lstm_cell_3/dropout_3/Mul:z:0&lstm_cell_3/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          ]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Л
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	А*
dtype0┬
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitД
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          _
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Л
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype0╕
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitМ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          
lstm_cell_3/mulMulzeros:output:0%lstm_cell_3/dropout/SelectV2:output:0*
T0*'
_output_shapes
:          Г
lstm_cell_3/mul_1Mulzeros:output:0'lstm_cell_3/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          Г
lstm_cell_3/mul_2Mulzeros:output:0'lstm_cell_3/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          Г
lstm_cell_3/mul_3Mulzeros:output:0'lstm_cell_3/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЙ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          И
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          e
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          w
lstm_cell_3/mul_4Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          a
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          y
lstm_cell_3/mul_5Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          z
lstm_cell_3/add_3AddV2lstm_cell_3/mul_4:z:0lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          }
lstm_cell_3/mul_6Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_111708*
condR
while_cond_111707*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ш          *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ш [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ш Р
NoOpNoOp^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ш: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
дl
Ш	
while_body_111447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	АB
3while_lstm_cell_3_split_1_readvariableop_resource_0:	А>
+while_lstm_cell_3_readvariableop_resource_0:	 А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	А@
1while_lstm_cell_3_split_1_readvariableop_resource:	А<
)while_lstm_cell_3_readvariableop_resource:	 АИв while/lstm_cell_3/ReadVariableOpв"while/lstm_cell_3/ReadVariableOp_1в"while/lstm_cell_3/ReadVariableOp_2в"while/lstm_cell_3/ReadVariableOp_3в&while/lstm_cell_3/split/ReadVariableOpв(while/lstm_cell_3/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0d
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:f
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?н
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	А*
dtype0╘
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitи
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          e
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Щ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╩
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitЮ
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          Й
while/lstm_cell_3/mulMulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_1Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_2Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_3Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Н
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0v
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЫ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          q
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          Ж
while/lstm_cell_3/mul_4Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          m
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_5Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          М
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_4:z:0while/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          П
while/lstm_cell_3/mul_6Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_6:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:          x
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:          ▓

while/NoOpNoOp!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
╫
ы
(__inference_model_1_layer_call_fn_110181

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	 А
	unknown_2: 
	unknown_3:
identityИвStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_109690t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ш`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
щ
ї
,__inference_lstm_cell_3_layer_call_fn_111967

inputs
states_0
states_1
unknown:	А
	unknown_0:	А
	unknown_1:	 А
identity

identity_1

identity_2ИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_109266o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:          q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :          :          : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states_0:QM
'
_output_shapes
:          
"
_user_specified_name
states_1
╬y
▀
B__inference_lstm_1_layer_call_and_return_conditional_losses_111052
inputs_0<
)lstm_cell_3_split_readvariableop_resource:	А:
+lstm_cell_3_split_1_readvariableop_resource:	А6
#lstm_cell_3_readvariableop_resource:	 А
identityИвlstm_cell_3/ReadVariableOpвlstm_cell_3/ReadVariableOp_1вlstm_cell_3/ReadVariableOp_2вlstm_cell_3/ReadVariableOp_3в lstm_cell_3/split/ReadVariableOpв"lstm_cell_3/split_1/ReadVariableOpвwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskY
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:`
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          ]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Л
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	А*
dtype0┬
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitД
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          _
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Л
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype0╕
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitМ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          x
lstm_cell_3/mulMulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          z
lstm_cell_3/mul_1Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          z
lstm_cell_3/mul_2Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          z
lstm_cell_3/mul_3Mulzeros:output:0lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЙ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          И
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          e
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          w
lstm_cell_3/mul_4Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          a
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          y
lstm_cell_3/mul_5Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          z
lstm_cell_3/add_3AddV2lstm_cell_3/mul_4:z:0lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          }
lstm_cell_3/mul_6Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110925*
condR
while_cond_110924*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                   *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                   [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                   Р
NoOpNoOp^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
з
╢
'__inference_lstm_1_layer_call_fn_110801
inputs_0
unknown:	А
	unknown_0:	А
	unknown_1:	 А
identityИвStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                   *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_109394|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
┌
ь
(__inference_model_1_layer_call_fn_110113
input_2
unknown:	А
	unknown_0:	А
	unknown_1:	 А
	unknown_2: 
	unknown_3:
identityИвStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         ш*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_110085t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         ш`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":         ш: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:         ш
!
_user_specified_name	input_2
йЭ
▌
B__inference_lstm_1_layer_call_and_return_conditional_losses_110042

inputs<
)lstm_cell_3_split_readvariableop_resource:	А:
+lstm_cell_3_split_1_readvariableop_resource:	А6
#lstm_cell_3_readvariableop_resource:	 А
identityИвlstm_cell_3/ReadVariableOpвlstm_cell_3/ReadVariableOp_1вlstm_cell_3/ReadVariableOp_2вlstm_cell_3/ReadVariableOp_3в lstm_cell_3/split/ReadVariableOpв"lstm_cell_3/split_1/ReadVariableOpвwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:          R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:          c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ш         D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskY
lstm_cell_3/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:`
lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ы
lstm_cell_3/ones_likeFill$lstm_cell_3/ones_like/Shape:output:0$lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          ^
lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ф
lstm_cell_3/dropout/MulMullstm_cell_3/ones_like:output:0"lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:          g
lstm_cell_3/dropout/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:д
0lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0g
"lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╩
 lstm_cell_3/dropout/GreaterEqualGreaterEqual9lstm_cell_3/dropout/random_uniform/RandomUniform:output:0+lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell_3/dropout/SelectV2SelectV2$lstm_cell_3/dropout/GreaterEqual:z:0lstm_cell_3/dropout/Mul:z:0$lstm_cell_3/dropout/Const_1:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
lstm_cell_3/dropout_1/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:          i
lstm_cell_3/dropout_1/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:и
2lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0i
$lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╨
"lstm_cell_3/dropout_1/GreaterEqualGreaterEqual;lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          b
lstm_cell_3/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
lstm_cell_3/dropout_1/SelectV2SelectV2&lstm_cell_3/dropout_1/GreaterEqual:z:0lstm_cell_3/dropout_1/Mul:z:0&lstm_cell_3/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
lstm_cell_3/dropout_2/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:          i
lstm_cell_3/dropout_2/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:и
2lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0i
$lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╨
"lstm_cell_3/dropout_2/GreaterEqualGreaterEqual;lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          b
lstm_cell_3/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
lstm_cell_3/dropout_2/SelectV2SelectV2&lstm_cell_3/dropout_2/GreaterEqual:z:0lstm_cell_3/dropout_2/Mul:z:0&lstm_cell_3/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          `
lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ш
lstm_cell_3/dropout_3/MulMullstm_cell_3/ones_like:output:0$lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:          i
lstm_cell_3/dropout_3/ShapeShapelstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:и
2lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0i
$lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?╨
"lstm_cell_3/dropout_3/GreaterEqualGreaterEqual;lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          b
lstm_cell_3/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╦
lstm_cell_3/dropout_3/SelectV2SelectV2&lstm_cell_3/dropout_3/GreaterEqual:z:0lstm_cell_3/dropout_3/Mul:z:0&lstm_cell_3/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          ]
lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Л
 lstm_cell_3/split/ReadVariableOpReadVariableOp)lstm_cell_3_split_readvariableop_resource*
_output_shapes
:	А*
dtype0┬
lstm_cell_3/splitSplit$lstm_cell_3/split/split_dim:output:0(lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitД
lstm_cell_3/MatMulMatMulstrided_slice_2:output:0lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          Ж
lstm_cell_3/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          _
lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Л
"lstm_cell_3/split_1/ReadVariableOpReadVariableOp+lstm_cell_3_split_1_readvariableop_resource*
_output_shapes	
:А*
dtype0╕
lstm_cell_3/split_1Split&lstm_cell_3/split_1/split_dim:output:0*lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitМ
lstm_cell_3/BiasAddBiasAddlstm_cell_3/MatMul:product:0lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_1BiasAddlstm_cell_3/MatMul_1:product:0lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_2BiasAddlstm_cell_3/MatMul_2:product:0lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          Р
lstm_cell_3/BiasAdd_3BiasAddlstm_cell_3/MatMul_3:product:0lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          
lstm_cell_3/mulMulzeros:output:0%lstm_cell_3/dropout/SelectV2:output:0*
T0*'
_output_shapes
:          Г
lstm_cell_3/mul_1Mulzeros:output:0'lstm_cell_3/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          Г
lstm_cell_3/mul_2Mulzeros:output:0'lstm_cell_3/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          Г
lstm_cell_3/mul_3Mulzeros:output:0'lstm_cell_3/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          
lstm_cell_3/ReadVariableOpReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      з
lstm_cell_3/strided_sliceStridedSlice"lstm_cell_3/ReadVariableOp:value:0(lstm_cell_3/strided_slice/stack:output:0*lstm_cell_3/strided_slice/stack_1:output:0*lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЙ
lstm_cell_3/MatMul_4MatMullstm_cell_3/mul:z:0"lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          И
lstm_cell_3/addAddV2lstm_cell_3/BiasAdd:output:0lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          e
lstm_cell_3/SigmoidSigmoidlstm_cell_3/add:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_1ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_1StridedSlice$lstm_cell_3/ReadVariableOp_1:value:0*lstm_cell_3/strided_slice_1/stack:output:0,lstm_cell_3/strided_slice_1/stack_1:output:0,lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_5MatMullstm_cell_3/mul_1:z:0$lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_1AddV2lstm_cell_3/BiasAdd_1:output:0lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_1Sigmoidlstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          w
lstm_cell_3/mul_4Mullstm_cell_3/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_2ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   t
#lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_2StridedSlice$lstm_cell_3/ReadVariableOp_2:value:0*lstm_cell_3/strided_slice_2/stack:output:0,lstm_cell_3/strided_slice_2/stack_1:output:0,lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_6MatMullstm_cell_3/mul_2:z:0$lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_2AddV2lstm_cell_3/BiasAdd_2:output:0lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          a
lstm_cell_3/TanhTanhlstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          y
lstm_cell_3/mul_5Mullstm_cell_3/Sigmoid:y:0lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          z
lstm_cell_3/add_3AddV2lstm_cell_3/mul_4:z:0lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          Б
lstm_cell_3/ReadVariableOp_3ReadVariableOp#lstm_cell_3_readvariableop_resource*
_output_shapes
:	 А*
dtype0r
!lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   t
#lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ▒
lstm_cell_3/strided_slice_3StridedSlice$lstm_cell_3/ReadVariableOp_3:value:0*lstm_cell_3/strided_slice_3/stack:output:0,lstm_cell_3/strided_slice_3/stack_1:output:0,lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskН
lstm_cell_3/MatMul_7MatMullstm_cell_3/mul_3:z:0$lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          М
lstm_cell_3/add_4AddV2lstm_cell_3/BiasAdd_3:output:0lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          i
lstm_cell_3/Sigmoid_2Sigmoidlstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          c
lstm_cell_3/Tanh_1Tanhlstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          }
lstm_cell_3/mul_6Mullstm_cell_3/Sigmoid_2:y:0lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ╕
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ї
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_3_split_readvariableop_resource+lstm_cell_3_split_1_readvariableop_resource#lstm_cell_3_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :          :          : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_109883*
condR
while_cond_109882*K
output_shapes:
8: : : : :          :          : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"        ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ш          *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:          *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         ш [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         ш Р
NoOpNoOp^lstm_cell_3/ReadVariableOp^lstm_cell_3/ReadVariableOp_1^lstm_cell_3/ReadVariableOp_2^lstm_cell_3/ReadVariableOp_3!^lstm_cell_3/split/ReadVariableOp#^lstm_cell_3/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         ш: : : 28
lstm_cell_3/ReadVariableOplstm_cell_3/ReadVariableOp2<
lstm_cell_3/ReadVariableOp_1lstm_cell_3/ReadVariableOp_12<
lstm_cell_3/ReadVariableOp_2lstm_cell_3/ReadVariableOp_22<
lstm_cell_3/ReadVariableOp_3lstm_cell_3/ReadVariableOp_32D
 lstm_cell_3/split/ReadVariableOp lstm_cell_3/split/ReadVariableOp2H
"lstm_cell_3/split_1/ReadVariableOp"lstm_cell_3/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
щ
ї
,__inference_lstm_cell_3_layer_call_fn_111950

inputs
states_0
states_1
unknown:	А
	unknown_0:	А
	unknown_1:	 А
identity

identity_1

identity_2ИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:          :          :          *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_109045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:          q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:          q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :          :          : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states_0:QM
'
_output_shapes
:          
"
_user_specified_name
states_1
╨
·
C__inference_dense_1_layer_call_and_return_conditional_losses_109683

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвTensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ╗
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ┐
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:         ш К
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:                  К
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:         [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : з
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Д
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:         шr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:         шd
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:         шz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:         ш 
 
_user_specified_nameinputs
╡
├
while_cond_111185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_111185___redundant_placeholder04
0while_while_cond_111185___redundant_placeholder14
0while_while_cond_111185___redundant_placeholder24
0while_while_cond_111185___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :          :          : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
:
дl
Ш	
while_body_109511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	АB
3while_lstm_cell_3_split_1_readvariableop_resource_0:	А>
+while_lstm_cell_3_readvariableop_resource_0:	 А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	А@
1while_lstm_cell_3_split_1_readvariableop_resource:	А<
)while_lstm_cell_3_readvariableop_resource:	 АИв while/lstm_cell_3/ReadVariableOpв"while/lstm_cell_3/ReadVariableOp_1в"while/lstm_cell_3/ReadVariableOp_2в"while/lstm_cell_3/ReadVariableOp_3в&while/lstm_cell_3/split/ReadVariableOpв(while/lstm_cell_3/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0d
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:f
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?н
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	А*
dtype0╘
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitи
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          e
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Щ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╩
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitЮ
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          Й
while/lstm_cell_3/mulMulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_1Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_2Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_3Mulwhile_placeholder_2$while/lstm_cell_3/ones_like:output:0*
T0*'
_output_shapes
:          Н
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0v
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЫ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          q
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          Ж
while/lstm_cell_3/mul_4Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          m
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_5Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          М
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_4:z:0while/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          П
while/lstm_cell_3/mul_6Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_6:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:          x
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:          ▓

while/NoOpNoOp!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: 
°>
к
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_112042

inputs
states_0
states_10
split_readvariableop_resource:	А.
split_1_readvariableop_resource:	А*
readvariableop_resource:	 А
identity

identity_1

identity_2ИвReadVariableOpвReadVariableOp_1вReadVariableOp_2вReadVariableOp_3вsplit/ReadVariableOpвsplit_1/ReadVariableOpG
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:          Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	А*
dtype0Ю
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:          \
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:          \
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:          \
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:          S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:А*
dtype0Ф
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:          l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:          l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:          l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:          Z
mulMulstates_0ones_like:output:0*
T0*'
_output_shapes
:          \
mul_1Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:          \
mul_2Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:          \
mul_3Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:          g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ы
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maske
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:          d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:          M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:          i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:          h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:          Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:          W
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:          i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:          h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:          I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:          U
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:          V
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:          i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	 А*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ї
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maski
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:          h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:          Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:          K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:          Y
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:          X
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:          Z

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:          Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:          └
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :          :          : : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:          
"
_user_specified_name
states_0:QM
'
_output_shapes
:          
"
_user_specified_name
states_1
╠У
Ш	
while_body_109883
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_3_split_readvariableop_resource_0:	АB
3while_lstm_cell_3_split_1_readvariableop_resource_0:	А>
+while_lstm_cell_3_readvariableop_resource_0:	 А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_3_split_readvariableop_resource:	А@
1while_lstm_cell_3_split_1_readvariableop_resource:	А<
)while_lstm_cell_3_readvariableop_resource:	 АИв while/lstm_cell_3/ReadVariableOpв"while/lstm_cell_3/ReadVariableOp_1в"while/lstm_cell_3/ReadVariableOp_2в"while/lstm_cell_3/ReadVariableOp_3в&while/lstm_cell_3/split/ReadVariableOpв(while/lstm_cell_3/split_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0d
!while/lstm_cell_3/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:f
!while/lstm_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?н
while/lstm_cell_3/ones_likeFill*while/lstm_cell_3/ones_like/Shape:output:0*while/lstm_cell_3/ones_like/Const:output:0*
T0*'
_output_shapes
:          d
while/lstm_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @ж
while/lstm_cell_3/dropout/MulMul$while/lstm_cell_3/ones_like:output:0(while/lstm_cell_3/dropout/Const:output:0*
T0*'
_output_shapes
:          s
while/lstm_cell_3/dropout/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:░
6while/lstm_cell_3/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_3/dropout/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0m
(while/lstm_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?▄
&while/lstm_cell_3/dropout/GreaterEqualGreaterEqual?while/lstm_cell_3/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell_3/dropout/SelectV2SelectV2*while/lstm_cell_3/dropout/GreaterEqual:z:0!while/lstm_cell_3/dropout/Mul:z:0*while/lstm_cell_3/dropout/Const_1:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
while/lstm_cell_3/dropout_1/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_1/Const:output:0*
T0*'
_output_shapes
:          u
!while/lstm_cell_3/dropout_1/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┤
8while/lstm_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_1/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0o
*while/lstm_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?т
(while/lstm_cell_3/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          h
#while/lstm_cell_3/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$while/lstm_cell_3/dropout_1/SelectV2SelectV2,while/lstm_cell_3/dropout_1/GreaterEqual:z:0#while/lstm_cell_3/dropout_1/Mul:z:0,while/lstm_cell_3/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
while/lstm_cell_3/dropout_2/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_2/Const:output:0*
T0*'
_output_shapes
:          u
!while/lstm_cell_3/dropout_2/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┤
8while/lstm_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_2/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0o
*while/lstm_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?т
(while/lstm_cell_3/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          h
#while/lstm_cell_3/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$while/lstm_cell_3/dropout_2/SelectV2SelectV2,while/lstm_cell_3/dropout_2/GreaterEqual:z:0#while/lstm_cell_3/dropout_2/Mul:z:0,while/lstm_cell_3/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:          f
!while/lstm_cell_3/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @к
while/lstm_cell_3/dropout_3/MulMul$while/lstm_cell_3/ones_like:output:0*while/lstm_cell_3/dropout_3/Const:output:0*
T0*'
_output_shapes
:          u
!while/lstm_cell_3/dropout_3/ShapeShape$while/lstm_cell_3/ones_like:output:0*
T0*
_output_shapes
:┤
8while/lstm_cell_3/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_3/dropout_3/Shape:output:0*
T0*'
_output_shapes
:          *
dtype0o
*while/lstm_cell_3/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?т
(while/lstm_cell_3/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_3/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_3/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:          h
#while/lstm_cell_3/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    у
$while/lstm_cell_3/dropout_3/SelectV2SelectV2,while/lstm_cell_3/dropout_3/GreaterEqual:z:0#while/lstm_cell_3/dropout_3/Mul:z:0,while/lstm_cell_3/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:          c
!while/lstm_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Щ
&while/lstm_cell_3/split/ReadVariableOpReadVariableOp1while_lstm_cell_3_split_readvariableop_resource_0*
_output_shapes
:	А*
dtype0╘
while/lstm_cell_3/splitSplit*while/lstm_cell_3/split/split_dim:output:0.while/lstm_cell_3/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(: : : : *
	num_splitи
while/lstm_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:0*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:1*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:2*
T0*'
_output_shapes
:          к
while/lstm_cell_3/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0 while/lstm_cell_3/split:output:3*
T0*'
_output_shapes
:          e
#while/lstm_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Щ
(while/lstm_cell_3/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_3_split_1_readvariableop_resource_0*
_output_shapes	
:А*
dtype0╩
while/lstm_cell_3/split_1Split,while/lstm_cell_3/split_1/split_dim:output:00while/lstm_cell_3/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_splitЮ
while/lstm_cell_3/BiasAddBiasAdd"while/lstm_cell_3/MatMul:product:0"while/lstm_cell_3/split_1:output:0*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_1BiasAdd$while/lstm_cell_3/MatMul_1:product:0"while/lstm_cell_3/split_1:output:1*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_2BiasAdd$while/lstm_cell_3/MatMul_2:product:0"while/lstm_cell_3/split_1:output:2*
T0*'
_output_shapes
:          в
while/lstm_cell_3/BiasAdd_3BiasAdd$while/lstm_cell_3/MatMul_3:product:0"while/lstm_cell_3/split_1:output:3*
T0*'
_output_shapes
:          Р
while/lstm_cell_3/mulMulwhile_placeholder_2+while/lstm_cell_3/dropout/SelectV2:output:0*
T0*'
_output_shapes
:          Ф
while/lstm_cell_3/mul_1Mulwhile_placeholder_2-while/lstm_cell_3/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:          Ф
while/lstm_cell_3/mul_2Mulwhile_placeholder_2-while/lstm_cell_3/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:          Ф
while/lstm_cell_3/mul_3Mulwhile_placeholder_2-while/lstm_cell_3/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:          Н
 while/lstm_cell_3/ReadVariableOpReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0v
%while/lstm_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell_3/strided_sliceStridedSlice(while/lstm_cell_3/ReadVariableOp:value:0.while/lstm_cell_3/strided_slice/stack:output:00while/lstm_cell_3/strided_slice/stack_1:output:00while/lstm_cell_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЫ
while/lstm_cell_3/MatMul_4MatMulwhile/lstm_cell_3/mul:z:0(while/lstm_cell_3/strided_slice:output:0*
T0*'
_output_shapes
:          Ъ
while/lstm_cell_3/addAddV2"while/lstm_cell_3/BiasAdd:output:0$while/lstm_cell_3/MatMul_4:product:0*
T0*'
_output_shapes
:          q
while/lstm_cell_3/SigmoidSigmoidwhile/lstm_cell_3/add:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_1ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_1StridedSlice*while/lstm_cell_3/ReadVariableOp_1:value:00while/lstm_cell_3/strided_slice_1/stack:output:02while/lstm_cell_3/strided_slice_1/stack_1:output:02while/lstm_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_5MatMulwhile/lstm_cell_3/mul_1:z:0*while/lstm_cell_3/strided_slice_1:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_1AddV2$while/lstm_cell_3/BiasAdd_1:output:0$while/lstm_cell_3/MatMul_5:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_1Sigmoidwhile/lstm_cell_3/add_1:z:0*
T0*'
_output_shapes
:          Ж
while/lstm_cell_3/mul_4Mulwhile/lstm_cell_3/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_2ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   z
)while/lstm_cell_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_2StridedSlice*while/lstm_cell_3/ReadVariableOp_2:value:00while/lstm_cell_3/strided_slice_2/stack:output:02while/lstm_cell_3/strided_slice_2/stack_1:output:02while/lstm_cell_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_6MatMulwhile/lstm_cell_3/mul_2:z:0*while/lstm_cell_3/strided_slice_2:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_2AddV2$while/lstm_cell_3/BiasAdd_2:output:0$while/lstm_cell_3/MatMul_6:product:0*
T0*'
_output_shapes
:          m
while/lstm_cell_3/TanhTanhwhile/lstm_cell_3/add_2:z:0*
T0*'
_output_shapes
:          Л
while/lstm_cell_3/mul_5Mulwhile/lstm_cell_3/Sigmoid:y:0while/lstm_cell_3/Tanh:y:0*
T0*'
_output_shapes
:          М
while/lstm_cell_3/add_3AddV2while/lstm_cell_3/mul_4:z:0while/lstm_cell_3/mul_5:z:0*
T0*'
_output_shapes
:          П
"while/lstm_cell_3/ReadVariableOp_3ReadVariableOp+while_lstm_cell_3_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0x
'while/lstm_cell_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    `   z
)while/lstm_cell_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╧
!while/lstm_cell_3/strided_slice_3StridedSlice*while/lstm_cell_3/ReadVariableOp_3:value:00while/lstm_cell_3/strided_slice_3/stack:output:02while/lstm_cell_3/strided_slice_3/stack_1:output:02while/lstm_cell_3/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:  *

begin_mask*
end_maskЯ
while/lstm_cell_3/MatMul_7MatMulwhile/lstm_cell_3/mul_3:z:0*while/lstm_cell_3/strided_slice_3:output:0*
T0*'
_output_shapes
:          Ю
while/lstm_cell_3/add_4AddV2$while/lstm_cell_3/BiasAdd_3:output:0$while/lstm_cell_3/MatMul_7:product:0*
T0*'
_output_shapes
:          u
while/lstm_cell_3/Sigmoid_2Sigmoidwhile/lstm_cell_3/add_4:z:0*
T0*'
_output_shapes
:          o
while/lstm_cell_3/Tanh_1Tanhwhile/lstm_cell_3/add_3:z:0*
T0*'
_output_shapes
:          П
while/lstm_cell_3/mul_6Mulwhile/lstm_cell_3/Sigmoid_2:y:0while/lstm_cell_3/Tanh_1:y:0*
T0*'
_output_shapes
:          ─
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_3/mul_6:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_3/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:          x
while/Identity_5Identitywhile/lstm_cell_3/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:          ▓

while/NoOpNoOp!^while/lstm_cell_3/ReadVariableOp#^while/lstm_cell_3/ReadVariableOp_1#^while/lstm_cell_3/ReadVariableOp_2#^while/lstm_cell_3/ReadVariableOp_3'^while/lstm_cell_3/split/ReadVariableOp)^while/lstm_cell_3/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_3_readvariableop_resource+while_lstm_cell_3_readvariableop_resource_0"h
1while_lstm_cell_3_split_1_readvariableop_resource3while_lstm_cell_3_split_1_readvariableop_resource_0"d
/while_lstm_cell_3_split_readvariableop_resource1while_lstm_cell_3_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :          :          : : : : : 2D
 while/lstm_cell_3/ReadVariableOp while/lstm_cell_3/ReadVariableOp2H
"while/lstm_cell_3/ReadVariableOp_1"while/lstm_cell_3/ReadVariableOp_12H
"while/lstm_cell_3/ReadVariableOp_2"while/lstm_cell_3/ReadVariableOp_22H
"while/lstm_cell_3/ReadVariableOp_3"while/lstm_cell_3/ReadVariableOp_32P
&while/lstm_cell_3/split/ReadVariableOp&while/lstm_cell_3/split/ReadVariableOp2T
(while/lstm_cell_3/split_1/ReadVariableOp(while/lstm_cell_3/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:          :-)
'
_output_shapes
:          :

_output_shapes
: :

_output_shapes
: "Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┤
serving_defaultа
@
input_25
serving_default_input_2:0         ш@
dense_15
StatefulPartitionedCall:0         шtensorflow/serving/predict:▀╕
╦
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
╝
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
╗
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
C
&0
'1
(2
$3
%4"
trackable_list_wrapper
C
&0
'1
(2
$3
%4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
╒
.trace_0
/trace_1
0trace_2
1trace_32ъ
(__inference_model_1_layer_call_fn_109703
(__inference_model_1_layer_call_fn_110181
(__inference_model_1_layer_call_fn_110196
(__inference_model_1_layer_call_fn_110113┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z.trace_0z/trace_1z0trace_2z1trace_3
┴
2trace_0
3trace_1
4trace_2
5trace_32╓
C__inference_model_1_layer_call_and_return_conditional_losses_110452
C__inference_model_1_layer_call_and_return_conditional_losses_110779
C__inference_model_1_layer_call_and_return_conditional_losses_110130
C__inference_model_1_layer_call_and_return_conditional_losses_110147┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z2trace_0z3trace_1z4trace_2z5trace_3
╠B╔
!__inference__wrapped_model_108935input_2"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┤
6
_variables
7_iterations
8_learning_rate
9_index_dict
:_velocities
;
_momentums
<_average_gradients
=_update_step_xla"
experimentalOptimizer
,
>serving_default"
signature_map
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

?states
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ц
Etrace_0
Ftrace_1
Gtrace_2
Htrace_32√
'__inference_lstm_1_layer_call_fn_110790
'__inference_lstm_1_layer_call_fn_110801
'__inference_lstm_1_layer_call_fn_110812
'__inference_lstm_1_layer_call_fn_110823╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zEtrace_0zFtrace_1zGtrace_2zHtrace_3
╥
Itrace_0
Jtrace_1
Ktrace_2
Ltrace_32ч
B__inference_lstm_1_layer_call_and_return_conditional_losses_111052
B__inference_lstm_1_layer_call_and_return_conditional_losses_111345
B__inference_lstm_1_layer_call_and_return_conditional_losses_111574
B__inference_lstm_1_layer_call_and_return_conditional_losses_111867╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zItrace_0zJtrace_1zKtrace_2zLtrace_3
"
_generic_user_object
°
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
S_random_generator
T
state_size

&kernel
'recurrent_kernel
(bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┼
Ztrace_0
[trace_12О
*__inference_dropout_1_layer_call_fn_111872
*__inference_dropout_1_layer_call_fn_111877│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zZtrace_0z[trace_1
√
\trace_0
]trace_12─
E__inference_dropout_1_layer_call_and_return_conditional_losses_111882
E__inference_dropout_1_layer_call_and_return_conditional_losses_111894│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z\trace_0z]trace_1
"
_generic_user_object
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ь
ctrace_02╧
(__inference_dense_1_layer_call_fn_111903в
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
 zctrace_0
З
dtrace_02ъ
C__inference_dense_1_layer_call_and_return_conditional_losses_111933в
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
 zdtrace_0
 : 2dense_1/kernel
:2dense_1/bias
,:*	А2lstm_1/lstm_cell_3/kernel
6:4	 А2#lstm_1/lstm_cell_3/recurrent_kernel
&:$А2lstm_1/lstm_cell_3/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
5
e0
f1
g2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
(__inference_model_1_layer_call_fn_109703input_2"┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
(__inference_model_1_layer_call_fn_110181inputs"┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
(__inference_model_1_layer_call_fn_110196inputs"┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
(__inference_model_1_layer_call_fn_110113input_2"┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
C__inference_model_1_layer_call_and_return_conditional_losses_110452inputs"┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
C__inference_model_1_layer_call_and_return_conditional_losses_110779inputs"┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
C__inference_model_1_layer_call_and_return_conditional_losses_110130input_2"┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
C__inference_model_1_layer_call_and_return_conditional_losses_110147input_2"┐
╢▓▓
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

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
J
70
h1
i2
j3
k4
l5"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
h0
i1
j2
k3
l4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
┐2╝╣
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
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
 0
╦B╚
$__inference_signature_wrapper_110166input_2"Ф
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
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПBМ
'__inference_lstm_1_layer_call_fn_110790inputs_0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
'__inference_lstm_1_layer_call_fn_110801inputs_0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
'__inference_lstm_1_layer_call_fn_110812inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
'__inference_lstm_1_layer_call_fn_110823inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
кBз
B__inference_lstm_1_layer_call_and_return_conditional_losses_111052inputs_0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
кBз
B__inference_lstm_1_layer_call_and_return_conditional_losses_111345inputs_0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
иBе
B__inference_lstm_1_layer_call_and_return_conditional_losses_111574inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
иBе
B__inference_lstm_1_layer_call_and_return_conditional_losses_111867inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
н
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
╙
rtrace_0
strace_12Ь
,__inference_lstm_cell_3_layer_call_fn_111950
,__inference_lstm_cell_3_layer_call_fn_111967╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zrtrace_0zstrace_1
Й
ttrace_0
utrace_12╥
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_112042
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_112149╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zttrace_0zutrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
яBь
*__inference_dropout_1_layer_call_fn_111872inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
*__inference_dropout_1_layer_call_fn_111877inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_1_layer_call_and_return_conditional_losses_111882inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
КBЗ
E__inference_dropout_1_layer_call_and_return_conditional_losses_111894inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
▄B┘
(__inference_dense_1_layer_call_fn_111903inputs"в
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
ўBЇ
C__inference_dense_1_layer_call_and_return_conditional_losses_111933inputs"в
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
N
v	variables
w	keras_api
	xtotal
	ycount"
_tf_keras_metric
^
z	variables
{	keras_api
	|total
	}count
~
_fn_kwargs"
_tf_keras_metric
b
	variables
А	keras_api

Бtotal

Вcount
Г
_fn_kwargs"
_tf_keras_metric
;:9	А2*RMSprop/velocity/lstm_1/lstm_cell_3/kernel
E:C	 А24RMSprop/velocity/lstm_1/lstm_cell_3/recurrent_kernel
5:3А2(RMSprop/velocity/lstm_1/lstm_cell_3/bias
/:- 2RMSprop/velocity/dense_1/kernel
):'2RMSprop/velocity/dense_1/bias
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
ПBМ
,__inference_lstm_cell_3_layer_call_fn_111950inputsstates_0states_1"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
,__inference_lstm_cell_3_layer_call_fn_111967inputsstates_0states_1"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
кBз
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_112042inputsstates_0states_1"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
кBз
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_112149inputsstates_0states_1"╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
x0
y1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
:  (2total
:  (2count
.
|0
}1"
trackable_list_wrapper
-
z	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Б0
В1"
trackable_list_wrapper
-
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЫ
!__inference__wrapped_model_108935v&('$%5в2
+в(
&К#
input_2         ш
к "6к3
1
dense_1&К#
dense_1         ш┤
C__inference_dense_1_layer_call_and_return_conditional_losses_111933m$%4в1
*в'
%К"
inputs         ш 
к "1в.
'К$
tensor_0         ш
Ъ О
(__inference_dense_1_layer_call_fn_111903b$%4в1
*в'
%К"
inputs         ш 
к "&К#
unknown         ш╢
E__inference_dropout_1_layer_call_and_return_conditional_losses_111882m8в5
.в+
%К"
inputs         ш 
p 
к "1в.
'К$
tensor_0         ш 
Ъ ╢
E__inference_dropout_1_layer_call_and_return_conditional_losses_111894m8в5
.в+
%К"
inputs         ш 
p
к "1в.
'К$
tensor_0         ш 
Ъ Р
*__inference_dropout_1_layer_call_fn_111872b8в5
.в+
%К"
inputs         ш 
p 
к "&К#
unknown         ш Р
*__inference_dropout_1_layer_call_fn_111877b8в5
.в+
%К"
inputs         ш 
p
к "&К#
unknown         ш ╪
B__inference_lstm_1_layer_call_and_return_conditional_losses_111052С&('OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к "9в6
/К,
tensor_0                   
Ъ ╪
B__inference_lstm_1_layer_call_and_return_conditional_losses_111345С&('OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к "9в6
/К,
tensor_0                   
Ъ └
B__inference_lstm_1_layer_call_and_return_conditional_losses_111574z&('@в=
6в3
%К"
inputs         ш

 
p 

 
к "1в.
'К$
tensor_0         ш 
Ъ └
B__inference_lstm_1_layer_call_and_return_conditional_losses_111867z&('@в=
6в3
%К"
inputs         ш

 
p

 
к "1в.
'К$
tensor_0         ш 
Ъ ▓
'__inference_lstm_1_layer_call_fn_110790Ж&('OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к ".К+
unknown                   ▓
'__inference_lstm_1_layer_call_fn_110801Ж&('OвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к ".К+
unknown                   Ъ
'__inference_lstm_1_layer_call_fn_110812o&('@в=
6в3
%К"
inputs         ш

 
p 

 
к "&К#
unknown         ш Ъ
'__inference_lstm_1_layer_call_fn_110823o&('@в=
6в3
%К"
inputs         ш

 
p

 
к "&К#
unknown         ш р
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_112042Ф&('Ав}
vвs
 К
inputs         
KвH
"К
states_0          
"К
states_1          
p 
к "ЙвЕ
~в{
$К!

tensor_0_0          
SЪP
&К#
tensor_0_1_0          
&К#
tensor_0_1_1          
Ъ р
G__inference_lstm_cell_3_layer_call_and_return_conditional_losses_112149Ф&('Ав}
vвs
 К
inputs         
KвH
"К
states_0          
"К
states_1          
p
к "ЙвЕ
~в{
$К!

tensor_0_0          
SЪP
&К#
tensor_0_1_0          
&К#
tensor_0_1_1          
Ъ │
,__inference_lstm_cell_3_layer_call_fn_111950В&('Ав}
vвs
 К
inputs         
KвH
"К
states_0          
"К
states_1          
p 
к "xвu
"К
tensor_0          
OЪL
$К!

tensor_1_0          
$К!

tensor_1_1          │
,__inference_lstm_cell_3_layer_call_fn_111967В&('Ав}
vвs
 К
inputs         
KвH
"К
states_0          
"К
states_1          
p
к "xвu
"К
tensor_0          
OЪL
$К!

tensor_1_0          
$К!

tensor_1_1          └
C__inference_model_1_layer_call_and_return_conditional_losses_110130y&('$%=в:
3в0
&К#
input_2         ш
p 

 
к "1в.
'К$
tensor_0         ш
Ъ └
C__inference_model_1_layer_call_and_return_conditional_losses_110147y&('$%=в:
3в0
&К#
input_2         ш
p

 
к "1в.
'К$
tensor_0         ш
Ъ ┐
C__inference_model_1_layer_call_and_return_conditional_losses_110452x&('$%<в9
2в/
%К"
inputs         ш
p 

 
к "1в.
'К$
tensor_0         ш
Ъ ┐
C__inference_model_1_layer_call_and_return_conditional_losses_110779x&('$%<в9
2в/
%К"
inputs         ш
p

 
к "1в.
'К$
tensor_0         ш
Ъ Ъ
(__inference_model_1_layer_call_fn_109703n&('$%=в:
3в0
&К#
input_2         ш
p 

 
к "&К#
unknown         шЪ
(__inference_model_1_layer_call_fn_110113n&('$%=в:
3в0
&К#
input_2         ш
p

 
к "&К#
unknown         шЩ
(__inference_model_1_layer_call_fn_110181m&('$%<в9
2в/
%К"
inputs         ш
p 

 
к "&К#
unknown         шЩ
(__inference_model_1_layer_call_fn_110196m&('$%<в9
2в/
%К"
inputs         ш
p

 
к "&К#
unknown         шк
$__inference_signature_wrapper_110166Б&('$%@в=
в 
6к3
1
input_2&К#
input_2         ш"6к3
1
dense_1&К#
dense_1         ш