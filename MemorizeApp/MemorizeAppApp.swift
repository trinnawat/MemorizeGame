//
//  MemorizeAppApp.swift
//  MemorizeApp
//
//  Created by Trinnawat.c on 10/03/2025.
//

import SwiftUI

@main
struct MemorizeAppApp: App {
    @StateObject var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
