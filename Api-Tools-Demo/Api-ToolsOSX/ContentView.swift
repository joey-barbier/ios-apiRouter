//
//  ContentView.swift
//  Api-ToolsOSX
//
//  Created by Joey BARBIER on 12/10/2022.
//

import SwiftUI
import OrkaApiRouter

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            // Automatic decoding
            ApiRouter.Todo.list.call { (result: Result<[Todo], Error>) in
                switch result {
                case .failure(let error):
                    print("call -> Todo ([R]) : \(error.localizedDescription)")
                case .success(let todo):
                    print("Todo List count : \(todo.count) todo(s)")
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
