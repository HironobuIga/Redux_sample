#!/bin/sh

#  making_carthage_filelist.sh
#  ReduxSample
#
#  Created by HironobuIga on 2018/10/21.
#  Copyright © 2018年 iganin. All rights reserved.

GitRoot=$(git rev-parse --show-toplevel)

ls $GitRoot/ReduxSample/Carthage/Build/iOS | grep -e .framework$ | sed 's/.*/$(SRCROOT)\/Carthage\/Build\/iOS\/&/' > $GitRoot/ReduxSample/ReduxSample/Support/CarthageInput.xcfilelist
ls $GitRoot/ReduxSample/Carthage/Build/iOS | grep -e .framework$ | sed 's/.*/$(BUILT_PRODUCTS_DIR)\/$(FRAMEWORKS_FOLDER_PATH)\/&/' > $GitRoot/ReduxSample/ReduxSample/Support/CarthageOutput.xcfilelist
