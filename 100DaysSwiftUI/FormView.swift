//
//  FormView.swift
//  100DaysSwiftUI
//
//  Created by Dylan Le Hir on 13/08/2024.
//

import SwiftUI

struct FormView: View {
    let family = ["Dylan", "Camille", "Bichette"]
    @State private var selectMemberFamilyName = "Dylan"

    var body: some View {
        NavigationStack {
            Form {
                Picker("Choisi ton personnage", selection: $selectMemberFamilyName) {
                    ForEach(family, id: \.self) { name in
                        Text("\(name)")
                    }
                }
            }
            .navigationTitle("LE HIR FAMILY")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FormView()
}
