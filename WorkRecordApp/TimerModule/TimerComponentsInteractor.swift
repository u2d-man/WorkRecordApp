//
//  TimerComponentsInteractor.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/02/07.
//

import Combine

class TimerComponentsInteractor: ObservableObject {
    private let timer: TimerEntity
    
    private var cancellables = Set<AnyCancellable>()
    
    var timerHour: String { timer.hour }
    var timerMinute: String { timer.minute }
    var timerSeconds: String { timer.seconds }
    
    var timerHourPublisher: Published<String>.Publisher { timer.$hour }
    var timerMinutePublisher: Published<String>.Publisher { timer.$minute }
    var timerSecondsPublisher: Published<String>.Publisher { timer.$seconds }
    
    init(timer: TimerEntity) {
        self.timer = timer
    }
    
    func setTimerHour(_ hour: String) {
        timer.hour = hour
    }

    func setTimerMinute(_ minute: String) {
        timer.minute = minute
    }

    func setTimerSeconds(_ seconds: String) {
        timer.seconds = seconds
    }
}
