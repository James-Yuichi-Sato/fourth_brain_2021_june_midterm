?	??/???F@??/???F@!??/???F@	b9?k6??b9?k6??!b9?k6??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??/???F@5D??@1W\?5B@AiV?y˵?I
1?Tm@Y?.ޏ?/??rEagerKernelExecute 0*B?l???x@)      0=2]
&Iterator::Model::MaxIntraOpParallelism?oa?xw??!#?KI?CX@)?!7????1~?)
??T@:Preprocessing2g
0Iterator::Model::MaxIntraOpParallelism::Prefetch?mR?X???!*M?A?+@)?mR?X???1*M?A?+@:Preprocessing2F
Iterator::Model;?/K;5??!      Y@)?6ǹM???1???6?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 13.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9a9?k6??I?;(???2@Q)?e?-?S@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	5D??@5D??@!5D??@      ??!       "	W\?5B@W\?5B@!W\?5B@*      ??!       2	iV?y˵?iV?y˵?!iV?y˵?:	
1?Tm@
1?Tm@!
1?Tm@B      ??!       J	?.ޏ?/???.ޏ?/??!?.ޏ?/??R      ??!       Z	?.ޏ?/???.ޏ?/??!?.ޏ?/??b      ??!       JGPUYa9?k6??b q?;(???2@y)?e?-?S@?	"~
Rgradient_tape/sato_4B_MLOps_2021_June_midterm/conv2d_1/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?+?b>P??!?+?b>P??0"S
1sato_4B_MLOps_2021_June_midterm/activation_9/Relu_FusedConv2D??W?????!tx?T$??"T
2sato_4B_MLOps_2021_June_midterm/activation_10/Relu_FusedConv2D???[`???!(?+???"}
Rgradient_tape/sato_4B_MLOps_2021_June_midterm/conv2d_12/Conv2D/Conv2DBackpropInputConv2DBackpropInput??Q:???!???????0"S
1sato_4B_MLOps_2021_June_midterm/activation_8/Relu_FusedConv2D?>ї?!g???"T
2sato_4B_MLOps_2021_June_midterm/activation_11/Relu_FusedConv2D? ??彗?!,K??????"|
Qgradient_tape/sato_4B_MLOps_2021_June_midterm/conv2d_9/Conv2D/Conv2DBackpropInputConv2DBackpropInputL???????!??U?????0"
Sgradient_tape/sato_4B_MLOps_2021_June_midterm/conv2d_12/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter??m????!fS?X???0"}
Rgradient_tape/sato_4B_MLOps_2021_June_midterm/conv2d_10/Conv2D/Conv2DBackpropInputConv2DBackpropInput4[Bb????!̞ZyW???0"
Sgradient_tape/sato_4B_MLOps_2021_June_midterm/conv2d_10/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter??/ts??!D`S?????0Q      Y@Y?^?z??@a*T?PX@q???-@y????Or??"?
both?Your program is POTENTIALLY input-bound because 13.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?14.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Pascal)(: B 