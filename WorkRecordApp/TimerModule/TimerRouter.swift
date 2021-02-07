//
//  TimerRouter.swift
//  WorkRecordApp
//
//  Created by kazunari.ueeda on 2021/01/23.
//

import SwiftUI

class TimerRouter {
    func makeDetailView(for workedEntity: WorkedEntity, model: DataModel) -> some View {
        let presenter = TimerDetailPresenter()
        
        return TimerDetailView(presenter: presenter)
    }
    
    func makeTimerComponents(hour: Binding<String>, minute: Binding<String>, seconds: Binding<String>) -> some View {
        return TimerComponents(hour: hour, minute: minute, seconds: seconds)
    }
}
