//
//  AppState.swift
//  ReduxSample
//
//  Created by HironobuIga on 2018/09/17.
//  Copyright © 2018年 iganin. All rights reserved.
//

import Foundation
import ReSwift

struct AppState: StateType {
    var countState: CounterState
}

struct CounterState: StateType {
    var count: Int = 0
    var imageUrlString = ""
}
