#!/bin/bash

# 源目录和目标目录
source_dir="/data/vitsGPT/vits/sem_vits/logs/onehour_ljs_sem_mat_phone/G_100000/model_test_wav"  # 替换为您的源目录路径
target_dir="/data/Llama-VITS_demo"  # 替换为您的目标目录路径

# 检查目标目录是否存在，如果不存在则创建
if [ ! -d "$target_dir" ]; then
    mkdir -p "$target_dir"
fi

# 查找包含 'x' 的文件，并复制到目标目录，文件名添加前缀 'y'
find "$source_dir" -type f -name '*LJ001-0015*' -exec sh -c 'cp "$1" "$2/1h_llama-pho_$(basename "$1")"' _ {} "$target_dir" \;
find "$source_dir" -type f -name '*LJ001-0096*' -exec sh -c 'cp "$1" "$2/1h_llama-pho_$(basename "$1")"' _ {} "$target_dir" \;
find "$source_dir" -type f -name '*LJ004-0036*' -exec sh -c 'cp "$1" "$2/1h_llama-pho_$(basename "$1")"' _ {} "$target_dir" \;
find "$source_dir" -type f -name '*LJ006-0043*' -exec sh -c 'cp "$1" "$2/1h_llama-pho_$(basename "$1")"' _ {} "$target_dir" \;
find "$source_dir" -type f -name '*LJ011-0048*' -exec sh -c 'cp "$1" "$2/1h_llama-pho_$(basename "$1")"' _ {} "$target_dir" \;

echo "Files copied and renamed successfully."
