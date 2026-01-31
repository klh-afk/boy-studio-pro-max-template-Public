#!/bin/bash

TEMPLATE=$1
SITENAME=$2

if [ -z "$TEMPLATE" ] || [ -z "$SITENAME" ]; then
  echo "❌ ใช้แบบนี้:"
  echo "./create-site.sh ellylash myshop"
  exit 1
fi

SRC="template-$TEMPLATE"
DEST="clients/$SITENAME"

if [ ! -d "$SRC" ]; then
  echo "❌ ไม่เจอ template: $SRC"
  exit 1
fi

mkdir -p "$DEST"
cp -r $SRC/* $DEST/

echo "✅ สร้างเว็บ $SITENAME จาก $SRC สำเร็จ"
