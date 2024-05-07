#!/bin/bash

# # 方案一
# # 源目录和目标目录
# source_dir="/data/vitsGPT/vits/sem_vits/logs/emovdb_sem_mat_text_pretrained16/G_150000/model_test_wav"  # 替换为您的源目录路径
# target_dir="/data/Llama-VITS_demo"  # 替换为您的目标目录路径
# rename="llama-tex"  # 为重命名的前缀赋值

# # 检查目标目录是否存在，如果不存在则创建
# if [ ! -d "$target_dir" ]; then
#     mkdir -p "$target_dir"
# fi

# # 查找特定文件，并复制到目标目录，文件名添加前缀
# find "$source_dir" -type f -name '*amused_57-84_0070*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;
# find "$source_dir" -type f -name '*angry_29-56_0047*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;
# find "$source_dir" -type f -name '*disgustededed_113-140_0114*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;
# find "$source_dir" -type f -name '*neutral_57-84_0069*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;
# find "$source_dir" -type f -name '*sleepy_29-56_0049*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;

# echo "Files copied and renamed successfully."


# # 方案二
# 源目录和目标目录
target_dir="/data/Llama-VITS_demo"  # 替换为您的目标目录路径

#########################################################################################################
source_dir="/data/vitsGPT/vits/ori_vits/logs/ljs_base/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="ori"  # 为重命名的前缀赋值

source_dir="/data/vitsGPT/vits/emo_vits/logs/ljs_emo_add_ave/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="llama-ave"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/ljs_emo_add_bert_cls/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="bert-cls"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/ljs_emo_add_eis_sentence/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="llama-sentence"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/ljs_emo_add_eis_word/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="llama-word"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/ljs_emo_add_last/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="llama-last"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/ljs_emo_add_pca/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="llama-pca"  # 为重命名的前缀赋值

source_dir="/data/vitsGPT/vits/sem_vits/logs/ljs_sem_mat_bert_phone/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="bert-pho"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/sem_vits/logs/ljs_sem_mat_bert_text/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="bert-tex"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/sem_vits/logs/ljs_sem_mat_phone/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="llama-pho"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/sem_vits/logs/ljs_sem_mat_text/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="llama-tex"  # 为重命名的前缀赋值
#########################################################################################################
source_dir="/data/vitsGPT/vits/ori_vits/logs/onehour_ljs_base/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_ori"  # 为重命名的前缀赋值

source_dir="/data/vitsGPT/vits/emo_vits/logs/onehour_ljs_emo_add_ave/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_llama-ave"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/onehour_ljs_emo_add_bert_cls/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_bert-cls"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/onehour_ljs_emo_add_eis_sentence/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_llama-sentence"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/onehour_ljs_emo_add_eis_word/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_llama-word"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/onehour_ljs_emo_add_last/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_llama-last"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/emo_vits/logs/onehour_ljs_emo_add_pca/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_llama-pca"  # 为重命名的前缀赋值

source_dir="/data/vitsGPT/vits/sem_vits/logs/onehour_ljs_sem_mat_bert_phone/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_bert-pho"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/sem_vits/logs/onehour_ljs_sem_mat_bert_text/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_bert-tex"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/sem_vits/logs/onehour_ljs_sem_mat_phone/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_llama-pho"  # 为重命名的前缀赋值
source_dir="/data/vitsGPT/vits/sem_vits/logs/onehour_ljs_sem_mat_text/G_100000/model_test_wav"  # 替换为您的源目录路径
rename="1h_llama-tex"  # 为重命名的前缀赋值

# 检查目标目录是否存在，如果不存在则创建
if [ ! -d "$target_dir" ]; then
    mkdir -p "$target_dir"
fi

# 查找特定文件，并检查目标文件是否存在，存在则重命名，再复制到目标目录，文件名添加前缀
find "$source_dir" -type f -name '*LJ001-0015*' -exec sh -c '
target_file="$2/'"$rename"'_$(basename "$1")"
if [ -f "$target_file" ]; then
    mv "$target_file" "${target_file}bk"
fi
cp "$1" "$target_file"
' _ {} "$target_dir" \;

find "$source_dir" -type f -name '*LJ001-0096*' -exec sh -c '
target_file="$2/'"$rename"'_$(basename "$1")"
if [ -f "$target_file" ]; then
    mv "$target_file" "${target_file}bk"
fi
cp "$1" "$target_file"
' _ {} "$target_dir" \;

find "$source_dir" -type f -name '*LJ004-0036*' -exec sh -c '
target_file="$2/'"$rename"'_$(basename "$1")"
if [ -f "$target_file" ]; then
    mv "$target_file" "${target_file}bk"
fi
cp "$1" "$target_file"
' _ {} "$target_dir" \;

find "$source_dir" -type f -name '*LJ006-0043*' -exec sh -c '
target_file="$2/'"$rename"'_$(basename "$1")"
if [ -f "$target_file" ]; then
    mv "$target_file" "${target_file}bk"
fi
cp "$1" "$target_file"
' _ {} "$target_dir" \;

find "$source_dir" -type f -name '*LJ011-0048*' -exec sh -c '
target_file="$2/'"$rename"'_$(basename "$1")"
if [ -f "$target_file" ]; then
    mv "$target_file" "${target_file}bk"
fi
cp "$1" "$target_file"
' _ {} "$target_dir" \;

echo "Files checked, backup created if necessary, copied and renamed successfully."
