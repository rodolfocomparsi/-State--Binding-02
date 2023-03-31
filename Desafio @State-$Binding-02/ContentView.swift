//
//  ContentView.swift
//  Desafio @State-$Binding-02
//
//  Created by Axel Franco on 03/03/23.
//

import SwiftUI
//----------
struct ContentView: View {
    
    @State var buscarInput: String = ""
    @State var toggleAirPlaneMode = false
    
    @State private var isActiveVoceMeAma = false
    
    @State var amaMuito = false
    
    @State var nao = false
    @State var bemPouquinho = false
    @State var afu = false
    @State var afuzinho = false
    @State var afuzao = false
    
    
    var body: some View {
        
        
        NavigationStack{
            VStack(spacing: -4){
                Text("Ajustes")
                    .bold()
                    .font(.system(size: 40))
                    .padding(.trailing, 210)
                    .padding(.top, 10)
                    //.background(.green)
                    
                
                Form{
                    Section(){
                        TextField("",
                                  text: $buscarInput
                                  //prompt: Text("Buscar")
                        )
                        .textFieldStyle(.plain)
                        .overlay(Image(systemName: "magnifyingglass"))
                        .padding(.trailing, 300)
                        .foregroundColor(Color(.systemGray2))
                    }
                    
                    Section(){
                        Button {
                            ///action
                        } label: {
                            HStack{
                                Image("babynha4")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 65, height: 65)
                                    .clipShape(Circle())
                                VStack(alignment: .leading){
                                    Text("Aline Pianesso Baccarin")
                                        .fontWeight(.regular)
                                        .foregroundColor(.black)
                                        .font(.system(size: 19))
                                    
                                    Text("ID Apple, iCloud+, Mídia e Compras")
                                        .font(.system(size:11))
                                        .foregroundColor(.black)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)

                            }
                        }
                        .frame(height: 55)

                        Button {
                            //
                        } label: {
                            HStack {
                                Text("Sugestões de Apple ID")
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    Section(){
                        Button {
                            //
                        } label: {
                            HStack {
                                ZStack{
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(7)
                                        .foregroundColor(.orange)
                                    Image(systemName: "airplane")
                                        .foregroundColor(.white)
                                }
                                Text("Modo Avião")
                                    .foregroundColor(.black)
                                Toggle(isOn: $toggleAirPlaneMode) {
                                    //
                                }
                            }
                           
                        }
                        
                        Button {
                            //
                        } label: {
                            
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(7)
                                        .foregroundColor(.blue)
                                    
                                    Image(systemName: "wifi")
                                        .foregroundColor(.white)
                                }
                                
                                Text("Wi-Fi")
                                    .foregroundColor(.black)
                                Spacer()
                                Group{
                                    Text("Chiroarq")
                                    Image(systemName: "chevron.right")
                                }
                                .foregroundColor(.gray)
                                
                            }
                            
                        }
                        
                        Button {
                            //
                        } label: {
                            
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(7)
                                        .foregroundColor(.blue)
                                    
                                    Image("bt2")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.white)
                                }
                                
                                Text("Bluetooth")
                                    .foregroundColor(.black)
                                Spacer()
                                Group{
                                    Text("Não Conectado")
                                    Image(systemName: "chevron.right")
                                }
                                .foregroundColor(.gray)
                                
                            }
                            
                        }
                        
                        Button {
                            //
                        } label: {
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(7)
                                        .foregroundColor(.green)
                                    
                                    Image(systemName: "antenna.radiowaves.left.and.right")
                                        .foregroundColor(.white)
                                }
                                Text("Celular")
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        
                        Button {
                            //
                        } label: {
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(7)
                                        .foregroundColor(.green)
                                    
                                    Image(systemName: "personalhotspot")
                                        .foregroundColor(.white)
                                        
                                }
                                Text("Acesso Pessoal")
                                    .foregroundColor(.black)
                                Spacer()
                                Group{
                                    Text("Desativado")
                                    Image(systemName: "chevron.right")
                                        
                                }
                                .foregroundColor(.gray)
                                
                            }
                            
                        }
                    }
                    
                    Section{
                        
                        Group{
                            Button {
                                //
                            } label: {
                                HStack{
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(7)
                                            .foregroundColor(.red)
                                        Image(systemName: "bell.badge.fill")
                                            .foregroundStyle(.white, .white)
                                    }
                                    
                                    Text("Notificações")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                                
                                
                            }
                        }
                        
                        Group{
                            Button {
                                //
                            } label: {
                                HStack{
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(7)
                                            .foregroundColor(.red)
                                        Image(systemName: "speaker.wave.3.fill")
                                            .foregroundStyle(.white, .white)
                                    }
                                    
                                    Text("Som e Tato")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                                
                                
                            }
                        }
                        
                        Group{
                            Button {
                                //
                            } label: {
                                HStack{
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(7)
                                            .foregroundColor(Color("deepPurple"))
                                        Image(systemName: "moon.fill")
                                            .foregroundStyle(.white, .white)
                                    }
                                    
                                    Text("Sono")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                                
                                
                            }
                        }
                        
                        Group{
                            Button {
                                //
                            } label: {
                                HStack{
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(7)
                                            .foregroundColor(Color("deepPurple"))
                                        Image(systemName: "hourglass")
                                            .foregroundStyle(.white, .white)
                                    }
                                    
                                    Text("Foco")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                                
                                
                            }
                        }
                        
                        
                        
                    }
                    Section{
                        Group{
                            Button {
                                //
                            } label: {
                                HStack{
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(7)
                                            .foregroundColor(.gray)
                                        Image(systemName: "gear")
                                            .frame(width: 30, height: 30)
                                            .foregroundStyle(.white, .white)
                                    }
                                    
                                    Text("Geral")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                        Group{
                            Button {
                                //
                            } label: {
                                HStack{
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(7)
                                            .foregroundColor(.gray)
                                        Image(systemName: "switch.2")
                                            .frame(width: 30, height: 30)
                                            .foregroundStyle(.white, .white)
                                    }
                                    
                                    Text("Central de Controle")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                        Group{
                            Button {
                                //
                            } label: {
                                HStack{
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(7)
                                            .foregroundColor(.blue)
                                        Image(systemName: "textformat.size")
                                            .frame(width: 30, height: 30)
                                            .foregroundStyle(.white, .white)
                                    }
                                    
                                    Text("Tela e Brilho")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                        Group{
                            Button {
                                //
                            } label: {
                                HStack{
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 30, height: 30)
                                            .cornerRadius(7)
                                            .foregroundColor(.blue)
                                        Image(systemName: "window.ceiling.closed")
                                            .frame(width: 30, height: 30)
                                            .foregroundStyle(.gray, .white)
                                    }
                                    
                                    Text("Tela de Início")
                                        .foregroundColor(.black)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                        NavigationLink(destination: VoceMeAmaAinda(), isActive: $isActiveVoceMeAma, label: {
                                    HStack{
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 30, height: 30)
                                                .cornerRadius(7)
                                                .foregroundColor(.red)
                                            Image(systemName: "heart.fill")
                                                .frame(width: 30, height: 30)
                                                .foregroundColor(.white)
                                        }

                                        Text("Você me ama ainda?")
                                            .foregroundColor(.black)
                                    }
                                })
                        }
                    }
                }
            }
            .background(Color("cinza"))
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
