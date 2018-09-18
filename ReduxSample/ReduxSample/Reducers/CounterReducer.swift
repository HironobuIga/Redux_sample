//
//  CounterReducer.swift
//  ReduxSample
//
//  Created by HironobuIga on 2018/09/17.
//  Copyright © 2018年 iganin. All rights reserved.
//

import Foundation
import ReSwift

extension CounterState {
    static func counterReducer(action: ReSwift.Action, state: CounterState?) -> CounterState {
        var state = state ?? CounterState()
        
        guard let action = action as? CounterState.Action else { return state }
        
        switch action {
        case .CounterActionIncrease: state.count += 1
        case .CounterActionDecrease: state.count -= 1
        }
        
        return state
    }
}
