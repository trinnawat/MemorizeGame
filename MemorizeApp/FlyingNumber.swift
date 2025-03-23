//
//  FlyingNumber.swift
//  MemorizeApp
//
//  Created by Trinnawat Charoenpradubsilp on 23/3/2568 BE.
//


import SwiftUI



struct FlyingNumber: View {
    let number: Int
    var body: some View {
        if number != 0 {
            Text(number, format: .number)
        }
    }
}


