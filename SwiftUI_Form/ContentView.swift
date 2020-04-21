//
//  ContentView.swift
//  SwiftUI_Form
//
//  Created by Ivan Ivanov on 21.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scheduled: Bool = false
    @State private var manuallyEnabledTillTomorrow: Bool = false
    @State private var colorTemperature: CGFloat = 0.5
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("Night shift automatically shift colors. Night shift automatically shift colors. Night shift automatically shift colors. Night shift automatically shift colors. Night shift automatically shift colors.")
                    .padding(5)
                    .lineLimit(nil)
                ) {
                    Toggle(isOn: $scheduled) {
                        Text("Scheduled")
                    }
                    
                    HStack {
                        VStack {
                            Text("From")
                            Text("To")
                        }
                        Spacer()
                        NavigationLink(destination: Text("Scheduled Settings")) {
                            VStack {
                                Text("Sunset").foregroundColor(.blue)
                                Text("Sunrise").foregroundColor(.blue)
                            }
                        }
                    .fixedSize()
                    }
                }
                
                Section(header: Text("").padding(1)) {
                    Toggle(isOn: $manuallyEnabledTillTomorrow) {
                        Text("Manually enable untill tomorrow")
                    }
                }
                
                Section(header: Text("Color temperature").padding()) {
                    HStack {
                        Text("Less warm").offset(y: -10)
                        Slider(value: $colorTemperature)
                        Text("More warm").offset(y: -10)
                    }
                }
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
