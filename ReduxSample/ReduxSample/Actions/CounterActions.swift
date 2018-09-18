//
//  Actions.swift
//  ReduxSample
//
//  Created by HironobuIga on 2018/09/17.
//  Copyright © 2018年 iganin. All rights reserved.
//

import Foundation
import ReSwift

extension CounterState {
    enum Action: ReSwift.Action {
        case CounterActionIncrease
        case CounterActionDecrease
    }
}
