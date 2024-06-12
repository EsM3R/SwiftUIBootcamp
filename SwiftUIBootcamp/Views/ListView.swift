//
//  ListView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 4.06.2024.
//

import SwiftUI

@Observable
class ListViewModel {
    
    var names : [String] = ["mehmet", "Ali","Ayse"]

    func addNewName(){
        self.names.append("Empty")
    }
    func deleteNamesWithIndex(_ indexSet : IndexSet) {
        self.names.remove(atOffsets: indexSet)
    }
    func deleteFirstItem(){
        self.names.removeFirst()
    }
    func onMove(indexSet : IndexSet ,toOffset : Int){
        self.names.move(fromOffsets: indexSet,
                        toOffset: toOffset)
    }
    var countNames : Int {
        return self.names.count
    }
}

struct ListView: View {
    
    @State private var  viewModel : ListViewModel = ListViewModel()
    
    var body: some View {
        
        NavigationStack{
            List {
                Section {
                    ForEach(viewModel.names , id : \.self) { name in
                        Text(name)
                    }
//                    .onDelete(perform: viewModel.deleteNamesWithIndex)
//                    .onMove(perform: viewModel.onMove)
                    .swipeActions(edge: .trailing , allowsFullSwipe: true) {
                        Button {
                            viewModel.deleteFirstItem()
                        } label: {
                            Text("Delete")
                        }
                        .tint(.red)
                        Button {
                            viewModel.addNewName()
                        }label: {
                            Text("add new names")
                        }
                        .tint(.blue)

                    }
                    
                } header: {
                    HStack{
                        Text("Names : \(viewModel.countNames)")
                        Image(systemName: "person")
                        
                    }
                    .font(.title2)
                    
                } footer: {
                    Text("Coopyright")
                        .frame(maxWidth: .infinity )
                }
                

                
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    
                    Button(action: viewModel.addNewName, label: {
                        Image(systemName: "plus")
                            .font(.title2)
                    })
                }
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            })
        }
 
        
//        List(viewModel.names.indices) { index in
//            Text(viewModel.names[index])
//        }
       
    }
}

#Preview {
    ListView()
}
