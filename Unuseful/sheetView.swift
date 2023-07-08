//
//  sheetView.swift
//  Unuseful
//
//  Created by T Krobot on 7/7/23.
//

import SwiftUI
class GameSettings: ObservableObject {
    @Published var score:Int = 0
}
struct sheetView: View {
    @EnvironmentObject var settings: GameSettings
    var body: some View {
        Text("Score: \(settings.score)")
    }
}

struct sheetView_Previews: PreviewProvider {
    static var previews: some View {
        sheetView()
            .environmentObject(GameSettings())
    }
}
