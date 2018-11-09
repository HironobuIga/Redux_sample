#!/bin/bash

#  making_carthage_filelist.sh
#  ReduxSample
#
#  Created by HironobuIga on 2018/10/21.
#  Copyright © 2018年 iganin. All rights reserved.

# GitRootの定義
GitRoot=$(git rev-parse --show-toplevel)

# 除外対象のファイルを含んだ状態でTempのインプット用のfileListを作成する
ls $GitRoot/ReduxSample/Carthage/Build/iOS | grep -e .framework$ | sed 's/.*/$(SRCROOT)\/Carthage\/Build\/iOS\/&/' > $GitRoot/ReduxSample/ReduxSample/Support/TempCarthageInput.xcfilelist

# 除外対象のライブラリを行から取り除く
TempInputFileList=$GitRoot/ReduxSample/ReduxSample/Support/TempCarthageInput.xcfilelist
InputFilterFileList=$GitRoot/ReduxSample/ReduxSample/Support/PrivateCarthageInput.xcfilelist
join -v 1 <(cat $TempInputFileList|sort -u) <(cat $InputFilterFileList|sort -u) > $GitRoot/ReduxSample/ReduxSample/Support/CarthageInput.xcfilelist

# 除外対象のファイルを含んだ状態でTempのアウトプット用のfilelistを作成する
ls $GitRoot/ReduxSample/Carthage/Build/iOS | grep -e .framework$ | sed 's/.*/$(BUILT_PRODUCTS_DIR)\/$(FRAMEWORKS_FOLDER_PATH)\/&/' > $GitRoot/ReduxSample/ReduxSample/Support/TempCarthageOutput.xcfilelist

# 除外対象のライブラリを行から取り除く
TempOutputFileList=$GitRoot/ReduxSample/ReduxSample/Support/TempCarthageOutput.xcfilelist
OutputFilterFileList=$GitRoot/ReduxSample/ReduxSample/Support/PrivateCarthageOutput.xcfilelist
join -v 1 <(cat $TempOutputFileList|sort -u) <(cat $OutputFilterFileList|sort -u) > $GitRoot/ReduxSample/ReduxSample/Support/CarthageOutput.xcfilelist

# tempのfilelistを除外する
rm $TempInputFileList
rm $TempOutputFileList
