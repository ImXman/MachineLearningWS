ЄК
▒К
:
Add
x"T
y"T
z"T"
Ttype:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
ы
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
D
Relu
features"T
activations"T"
Ttype:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.5.02v1.5.0-0-g37aa430d84уу

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
П
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
v
PlaceholderPlaceholder* 
shape:         *
dtype0*+
_output_shapes
:         
f
Reshape/shapeConst*
dtype0*
_output_shapes
:*%
valueB"             
v
ReshapeReshapePlaceholderReshape/shape*
T0*
Tshape0*/
_output_shapes
:         
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"             * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *nзо╜* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *nзо=* 
_class
loc:@conv2d/kernel*
dtype0
Ё
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: *

seed *
T0* 
_class
loc:@conv2d/kernel*
seed2 
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
│
conv2d/kernel
VariableV2*
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: 
╙
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
А
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
К
conv2d/bias/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Ч
conv2d/bias
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: 
╢
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(
n
conv2d/bias/readIdentityconv2d/bias*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
▄
conv2d/Conv2DConv2DReshapeconv2d/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:          
Л
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*/
_output_shapes
:          *
T0*
data_formatNHWC
]
conv2d/ReluReluconv2d/BiasAdd*/
_output_shapes
:          *
T0
╣
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*
ksize
*
paddingSAME*/
_output_shapes
:          *
T0*
strides
*
data_formatNHWC
н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"          @   *"
_class
loc:@conv2d_1/kernel
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *═╠L╜*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *═╠L=*"
_class
loc:@conv2d_1/kernel*
dtype0
Ў
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: @*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
╖
conv2d_1/kernel
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape: @
█
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*&
_output_shapes
: @*
T0*"
_class
loc:@conv2d_1/kernel
О
conv2d_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    * 
_class
loc:@conv2d_1/bias
Ы
conv2d_1/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
╛
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
t
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ю
conv2d_2/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:         @
С
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_1/bias/read*
data_formatNHWC*/
_output_shapes
:         @*
T0
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:         @
╜
max_pooling2d/MaxPool_1MaxPoolconv2d_2/Relu*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME*/
_output_shapes
:         @
d
flatten/ShapeShapemax_pooling2d/MaxPool_1*
_output_shapes
:*
T0*
out_type0
e
flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
б
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
b
flatten/Reshape/shape/1Const*
valueB :
         *
dtype0*
_output_shapes
: 
З
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
Л
flatten/ReshapeReshapemax_pooling2d/MaxPool_1flatten/Reshape/shape*(
_output_shapes
:         └*
T0*
Tshape0
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"@     *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *ИО╜*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *ИО=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ч
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
seed2 *
dtype0* 
_output_shapes
:
└А*

seed 
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
_class
loc:@dense/kernel* 
_output_shapes
:
└А*
T0
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
└А
е
dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
└А*
shared_name *
_class
loc:@dense/kernel*
	container *
shape:
└А
╔
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform* 
_output_shapes
:
└А*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
w
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel* 
_output_shapes
:
└А*
T0
К
dense/bias/Initializer/zerosConst*
valueBА*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:А
Ч

dense/bias
VariableV2*
shared_name *
_class
loc:@dense/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
│
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
_class
loc:@dense/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
l
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
У
dense/MatMulMatMulflatten/Reshapedense/kernel/read*
T0*(
_output_shapes
:         А*
transpose_a( *
transpose_b( 
Б
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:         А
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
[
dropout/IdentityIdentity
dense/Relu*
T0*(
_output_shapes
:         А
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"   
   *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *шЬ╜*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *шЬ=*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
ь
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
seed2 *
dtype0*
_output_shapes
:	А
*

seed 
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel
щ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А

█
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
:	А

з
dense_1/kernel
VariableV2*
	container *
shape:	А
*
dtype0*
_output_shapes
:	А
*
shared_name *!
_class
loc:@dense_1/kernel
╨
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes
:	А

|
dense_1/kernel/readIdentitydense_1/kernel*
_output_shapes
:	А
*
T0*!
_class
loc:@dense_1/kernel
М
dense_1/bias/Initializer/zerosConst*
valueB
*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
:

Щ
dense_1/bias
VariableV2*
_class
loc:@dense_1/bias*
	container *
shape:
*
dtype0*
_output_shapes
:
*
shared_name 
║
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@dense_1/bias
q
dense_1/bias/readIdentitydense_1/bias*
_output_shapes
:
*
T0*
_class
loc:@dense_1/bias
Ч
dense_2/MatMulMatMuldropout/Identitydense_1/kernel/read*
T0*'
_output_shapes
:         
*
transpose_a( *
transpose_b( 
Ж
dense_2/BiasAddBiasAdddense_2/MatMuldense_1/bias/read*'
_output_shapes
:         
*
T0*
data_formatNHWC
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
А
ArgMaxArgMaxdense_2/BiasAddArgMax/dimension*
output_type0	*#
_output_shapes
:         *

Tidx0*
T0
U
SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:         

P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_672908e0551e430fb4ce02f2bc99bac3/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Є
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:	*Ц
valueМBЙ	Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step
Д
save/SaveV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
М
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernel
dense/biasdense/kerneldense_1/biasdense_1/kernelglobal_step"/device:CPU:0*
dtypes
2		
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
м
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
_output_shapes
: *
T0
o
save/RestoreV2/tensor_namesConst* 
valueBBconv2d/bias*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
а
save/AssignAssignconv2d/biassave/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
s
save/RestoreV2_1/tensor_namesConst*"
valueBBconv2d/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
┤
save/Assign_1Assignconv2d/kernelsave/RestoreV2_1*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
s
save/RestoreV2_2/tensor_namesConst*"
valueBBconv2d_1/bias*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
и
save/Assign_2Assignconv2d_1/biassave/RestoreV2_2*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
u
save/RestoreV2_3/tensor_namesConst*$
valueBBconv2d_1/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save/Assign_3Assignconv2d_1/kernelsave/RestoreV2_3*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0
p
save/RestoreV2_4/tensor_namesConst*
_output_shapes
:*
valueBB
dense/bias*
dtype0
j
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
г
save/Assign_4Assign
dense/biassave/RestoreV2_4*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*
_class
loc:@dense/bias
r
save/RestoreV2_5/tensor_namesConst*!
valueBBdense/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save/Assign_5Assigndense/kernelsave/RestoreV2_5* 
_output_shapes
:
└А*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
r
save/RestoreV2_6/tensor_namesConst*!
valueBBdense_1/bias*
dtype0*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
_output_shapes
:*
dtypes
2
ж
save/Assign_6Assigndense_1/biassave/RestoreV2_6*
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
t
save/RestoreV2_7/tensor_namesConst*
dtype0*
_output_shapes
:*#
valueBBdense_1/kernel
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
п
save/Assign_7Assigndense_1/kernelsave/RestoreV2_7*
validate_shape(*
_output_shapes
:	А
*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
q
save/RestoreV2_8/tensor_namesConst*
_output_shapes
:* 
valueBBglobal_step*
dtype0
j
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2	
а
save/Assign_8Assignglobal_stepsave/RestoreV2_8*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
и
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_all_tables^init_1
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_37d3096f117f4e0284224eea7f113201/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
Ї
save_1/SaveV2/tensor_namesConst"/device:CPU:0*Ц
valueМBЙ	Bconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_step*
dtype0*
_output_shapes
:	
Ж
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
Ф
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernel
dense/biasdense/kerneldense_1/biasdense_1/kernelglobal_step"/device:CPU:0*
dtypes
2		
и
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
q
save_1/RestoreV2/tensor_namesConst* 
valueBBconv2d/bias*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ш
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2
д
save_1/AssignAssignconv2d/biassave_1/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(
u
save_1/RestoreV2_1/tensor_namesConst*"
valueBBconv2d/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ю
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
╕
save_1/Assign_1Assignconv2d/kernelsave_1/RestoreV2_1* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0
u
save_1/RestoreV2_2/tensor_namesConst*"
valueBBconv2d_1/bias*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
_output_shapes
:*
dtypes
2
м
save_1/Assign_2Assignconv2d_1/biassave_1/RestoreV2_2*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:@
w
save_1/RestoreV2_3/tensor_namesConst*$
valueBBconv2d_1/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
_output_shapes
:*
dtypes
2
╝
save_1/Assign_3Assignconv2d_1/kernelsave_1/RestoreV2_3*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0
r
save_1/RestoreV2_4/tensor_namesConst*
valueBB
dense/bias*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
_output_shapes
:*
dtypes
2
з
save_1/Assign_4Assign
dense/biassave_1/RestoreV2_4*
_output_shapes	
:А*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
t
save_1/RestoreV2_5/tensor_namesConst*!
valueBBdense/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueB
B 
Ю
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes
:*
dtypes
2
░
save_1/Assign_5Assigndense/kernelsave_1/RestoreV2_5*
validate_shape(* 
_output_shapes
:
└А*
use_locking(*
T0*
_class
loc:@dense/kernel
t
save_1/RestoreV2_6/tensor_namesConst*!
valueBBdense_1/bias*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
к
save_1/Assign_6Assigndense_1/biassave_1/RestoreV2_6*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:

v
save_1/RestoreV2_7/tensor_namesConst*#
valueBBdense_1/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
_output_shapes
:*
valueB
B *
dtype0
Ю
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes
:*
dtypes
2
│
save_1/Assign_7Assigndense_1/kernelsave_1/RestoreV2_7*
validate_shape(*
_output_shapes
:	А
*
use_locking(*
T0*!
_class
loc:@dense_1/kernel
s
save_1/RestoreV2_8/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:
Ю
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
_output_shapes
:*
dtypes
2	
д
save_1/Assign_8Assignglobal_stepsave_1/RestoreV2_8*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step
╝
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"П
	variablesБ■
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0" 
legacy_init_op


group_deps"┐
trainable_variablesзд
i
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:0
X
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:0
q
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:0
`
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:0
e
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:0
T
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:0
m
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:0
\
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:0" 
global_step

global_step:0*╖
classifyк
1
image(
Placeholder:0         1
probabilities 
	Softmax:0         
&
classes
ArgMax:0	         tensorflow/serving/predict*╛
serving_defaultк
1
image(
Placeholder:0         1
probabilities 
	Softmax:0         
&
classes
ArgMax:0	         tensorflow/serving/predict