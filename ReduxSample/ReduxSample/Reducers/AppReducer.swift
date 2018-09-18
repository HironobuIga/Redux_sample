//
//  AppReducer.swift
//  ReduxSample
//
//  Created by HironobuIga on 2018/09/19.
//  Copyright © 2018年 iganin. All rights reserved.
//

import Foundation
import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState(countState: CounterState())
    
    state.countState = CounterState.counterReducer(
        action: action,
        state: state.countState
    )
    
    return state
}
