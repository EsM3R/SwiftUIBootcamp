//
//  ObserverableView.swift
//  SwiftUIBootcamp
//
//  Created by Mehmet Vural on 18.05.2024.
//

import SwiftUI

@Observable 
class ObserverableViewModel  {
    
    var title : String = "Mehmet"
}

struct ObserverableView: View {
    
    @State private var viewModel = ObserverableViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                Text(viewModel.title)
                ObserverableView2(viewModel: viewModel)
                ObserverableView3()
            }
            .environment(viewModel)
        }
        
    }
}

struct ObserverableView2 : View{
    
    @Bindable var viewModel : ObserverableViewModel
    
    var body: some View{
        Text(viewModel.title.lowercased())
    }
    
    
}
struct ObserverableView3 : View{
    
    @Environment(ObserverableViewModel.self) private var viewModel
    
    var body: some View{
        Text(viewModel.title.uppercased())
    }
    
    
}

#Preview {
    ObserverableView()
}
