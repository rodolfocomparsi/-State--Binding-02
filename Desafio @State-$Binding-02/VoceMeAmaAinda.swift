//
//  VoceMeAmaAinda.swift
//  Desafio @State-$Binding-02
//
//  Created by Axel Franco on 23/03/23.
//

import Foundation
import SwiftUI


struct VoceMeAmaAinda: View {
    
    @State var nao = false
    @State var bemPouquinho = false
    @State var afu = false
    @State var afuzinho = false
    @State var afuzao = false
    @State var voceMeAmaAindaToggle = false
    @State private var voceMeAmaAinda = false
    
    
    var body: some View {
        
        
        NavigationStack{
            Section("VOCÊ ME AMA AINDA?"){
                Form{

                    HStack{
                        Text("NÃO")
                        Spacer()
                        Toggle(isOn: $nao) {
                            //
                        }
                    }

                    HStack{
                        Text("BEM POUQUINHO")
                        Spacer()
                        Toggle(isOn: $bemPouquinho) {
                            //
                        }
                    }

                    HStack{
                        Text("AFUUUUU")
                        Spacer()
                        Toggle(isOn: $afu) {
                            //
                        }
                    }

                    HStack{
                        Text("AFUZINHO")
                        Spacer()
                        Toggle(isOn: $afuzinho) {
                            //
                        }
                    }

                    HStack{
                        Text("AFUZÃO")
                        Spacer()
                        Toggle(isOn: $afuzao) {
                            //
                        }
                    }

                    Section() {
                        Button {
                            voceMeAmaAindaToggle = false
                        } label: {
                            HStack{
                                Image(systemName: "heart.fill")
                                Spacer()
                                Text("TE AMO")
                                Spacer()
                                Image(systemName: "heart.fill")
                            }


                        }
                        .buttonStyle(.bordered)

                    }

                }
            }
        }
            
        }
    }



struct VoceMeAmaAinda_Preview: PreviewProvider {
    static var previews: some View {
        VoceMeAmaAinda()
    }
}
