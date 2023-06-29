#!/bin/bash

images_folder=/home/dilee/Desktop/val-5000-resized224

##predict_arr=() #예측 결과값


#16비트
#폴더 내 이미지파일들을 읽고 예측하는 for 루프
for image_path in $images_folder/*
do
	#예측할 이미지의 경로
	echo $image_path

	#모델 실행
	result1=`/home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/bvlcalexnet-9 /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/network.weights.bin /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/imagenet.means /home/dilee/Desktop/pico-cnn/data/imageNet_labels/LOC_synset_mapping.txt $image_path 32`

	result2=`/home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/bvlcalexnet-9 /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/network.weights.bin /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/imagenet.means /home/dilee/Desktop/pico-cnn/data/imageNet_labels/LOC_synset_mapping.txt $image_path 24`

	result3=`/home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/bvlcalexnet-9 /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/network.weights.bin /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/imagenet.means /home/dilee/Desktop/pico-cnn/data/imageNet_labels/LOC_synset_mapping.txt $image_path 16`

	result4=`/home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/bvlcalexnet-9 /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/network.weights.bin /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/imagenet.means /home/dilee/Desktop/pico-cnn/data/imageNet_labels/LOC_synset_mapping.txt $image_path 12`

	result5=`/home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/bvlcalexnet-9 /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/network.weights.bin /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/imagenet.means /home/dilee/Desktop/pico-cnn/data/imageNet_labels/LOC_synset_mapping.txt $image_path 11`

	result6=`/home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/bvlcalexnet-9 /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/network.weights.bin /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/imagenet.means /home/dilee/Desktop/pico-cnn/data/imageNet_labels/LOC_synset_mapping.txt $image_path 10`

	result7=`/home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/bvlcalexnet-9 /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/network.weights.bin /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/imagenet.means /home/dilee/Desktop/pico-cnn/data/imageNet_labels/LOC_synset_mapping.txt $image_path 9`

	result8=`/home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/bvlcalexnet-9 /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/network.weights.bin /home/dilee/Desktop/pico-cnn/onnx_import/generated_code/bvlcalexnet-9/imagenet.means /home/dilee/Desktop/pico-cnn/data/imageNet_labels/LOC_synset_mapping.txt $image_path 8`

	##predict_arr+=("$result")
	echo $result1 >> predict_label_32bit.txt
	echo $result2 >> predict_label_24bit.txt
	echo $result3 >> predict_label_16bit.txt
	echo $result4 >> predict_label_12bit.txt
	echo $result5 >> predict_label_11bit.txt
	echo $result6 >> predict_label_10bit.txt
	echo $result7 >> predict_label_9bit.txt
	echo $result8 >> predict_label_8bit.txt
done


##
#predict.txt에 저장
#for predict in "${predict_arr[@]}"; do
#		echo $predict >> predicted.txt
#done
