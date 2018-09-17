//
//  CounterReducer.swift
//  ReduxSample
//
//  Created by HironobuIga on 2018/09/17.
//  Copyright © 2018年 iganin. All rights reserved.
//

import Foundation
import ReSwift

func counterReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState()
    
    switch action {
    case _ as CounterActionIncrease: state.counter += 1
    case _ as CounterActionDecrease: state.counter -= 1
    default: break
    }
    
    return state
}
