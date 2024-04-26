#!/bin/bash

# 源目录和目标目录
source_dir="/data/vitsGPT/vits/sem_vits/logs/emovdb_sem_mat_text_pretrained16/G_50000/model_test_wav"  # 替换为您的源目录路径
target_dir="/data/Llama-VITS_demo"  # 替换为您的目标目录路径
rename="llama-tex"  # 为重命名的前缀赋值

# 检查目标目录是否存在，如果不存在则创建
if [ ! -d "$target_dir" ]; then
    mkdir -p "$target_dir"
fi

# 查找特定文件，并复制到目标目录，文件名添加前缀
find "$source_dir" -type f -name '*amused_57-84_0070*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;
find "$source_dir" -type f -name '*angry_29-56_0047*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;
find "$source_dir" -type f -name '*disgustededed_113-140_0114*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;
find "$source_dir" -type f -name '*neutral_57-84_0069*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;
find "$source_dir" -type f -name '*sleepy_29-56_0049*' -exec sh -c 'cp "$1" "$2/'"$rename"'_$(basename "$1")"' _ {} "$target_dir" \;

echo "Files copied and renamed successfully."
