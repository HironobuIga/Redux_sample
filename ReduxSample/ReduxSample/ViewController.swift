//
//  ViewController.swift
//  ReduxSample
//
//  Created by HironobuIga on 2018/09/16.
//  Copyright © 2018年 iganin. All rights reserved.
//

import UIKit
import ReSwift

final class ViewController: UIViewController, StoreSubscriber {
    typealias StoreSubscriberStateType = AppState
    
    // MARK: - IBOutlet
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var imageView: UIImageView!
    
    @IBAction private func plusButtonDidTapped(_ sender: UIButton) {
        let action = CounterState.Action.CounterActionIncrease
        mainStore.dispatch(action)
    }
    
    @IBAction private func minusButtonDidTapped(_ sender: UIButton) {
        let action = CounterState.Action.CounterActionDecrease
        mainStore.dispatch(action)
    }
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        mainStore.subscribe(self)
    }
    
    // MARK: - Method
    func newState(state: AppState) {
        counterLabel.text = "\(mainStore.state.countState.count)"
    }
}

