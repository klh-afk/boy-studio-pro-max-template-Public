#!/bin/bash

NAME=$1
TYPE=$2

if [ -z "$NAME" ]; then
  echo "กรุณาใส่ชื่อเว็บ เช่น ./create-site.sh phuket"
  exit 1
fi

if [ "$TYPE" = "white" ]; then
  cp -r template-white clients/$NAME
else
  cp -r template clients/$NAME
fi

echo "สร้างเว็บ $NAME สำเร็จ"
