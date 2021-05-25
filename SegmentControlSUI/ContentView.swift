//
//  ContentView.swift
//  SegmentControlSUI
//
//  Created by apple on 5/19/21.
//

import SwiftUI


struct ContentView: View {
    @State var segmentIndex = 0
    @State var colorSegmentIndex = 0
    @State var modifSegmentIndex = 0
    var company = ["Model S", "Model 3", "Model X",  "Model Y"]
    var colors = ["⚪️", "⚫️", "🔴", "🔵", "🔘"]
    var m3Colors = ["3w", "3bl", "3r", "3b", "3g"]
    var mxColors = ["xw", "xbl", "xr", "xb", "xg"]
    var msColors = ["sw", "sbl", "sr", "sb", "sg"]
    var myColors = ["yw", "ybl", "yr", "yb", "yg"]
    
    
    
    var body: some View {
        
        VStack {
            HStack {
                
                Image("tesla logo")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding()
                Image("logo")
                    .resizable()
                    .frame(width: 188, height: 25)
                    .padding()
            }
            
            //Text("Tesla \(company[segmentIndex])")
            //   .font(.title)
            
            Picker(selection: $segmentIndex, label: Text(""), content: {
                ForEach(0..<company.count) {
                    Text(self.company[$0])
                }
            }).pickerStyle(SegmentedPickerStyle())
            .padding()
            
            ZStack {
                
                switch segmentIndex {
                case 0: Image(msColors[colorSegmentIndex])
                    .resizable()
                    .frame(width: 360, height: 158)
                    .padding()
                case 1: Image(m3Colors[colorSegmentIndex])
                    .resizable()
                    .frame(width: 360, height: 158)
                    .padding()
                case 2: Image(mxColors[colorSegmentIndex])
                    .resizable()
                    .frame(width: 360, height: 158)
                    .padding()
                case 3:  Image(myColors[colorSegmentIndex])
                    .resizable()
                    .frame(width: 360, height: 158)
                    .padding()
                default:
                    Text("")
                }
                
            }
            Picker(selection: $colorSegmentIndex, label: Text(""), content: { ForEach(0..<colors.count) {
                Text(self.colors[$0]).tag(0)
            }
            })
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Text("What modification are you want?")
                .font(.title3)
            
            ZStack {
                
                if segmentIndex == 0 {
                    Picker(selection: $modifSegmentIndex, label: Text(""), content: {
                        Text("Long Range").tag(0)
                        Text("Plaid").tag(1)
                        Text("Plaid+").tag(2)
                    })
                } else if segmentIndex == 1 {
                    Picker(selection: $modifSegmentIndex, label: Text(""), content: {
                        Text("Standart Range+").tag(0)
                        Text("Long Range").tag(1)
                        Text("Performance").tag(2)
                    })
                } else if segmentIndex == 2 {
                    Picker(selection: $modifSegmentIndex, label: Text(""), content: {
                        Text("Long Range").tag(0)
                        Text("Plaid").tag(1)
                    })
                } else if segmentIndex == 3 {
                    Picker(selection: $modifSegmentIndex, label: Text(""), content: {
                        Text("Long Range").tag(0)
                        Text("Performance").tag(1)
                    })
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Text("Technical specifications")
                .font(.title2)
            
            
            switch segmentIndex {
            case 0:
                switch modifSegmentIndex {
                case 0: VStack {
                    Text("")
                    HStack {
                        VStack {
                            Text("375 mi")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Range")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                        VStack {
                            Text("155 mph")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Top Speed")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                        VStack {
                            Text("3.1 sec")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("0-60 mph")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                    }
                    Text("")
                    Text("Price from 79,990$")
                        .fontWeight(.bold)
        
                }
                case 1:
                    VStack {
                        Text("")
                        HStack {
                            VStack {
                                Text("350 mi")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Range")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("200 mph")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Top Speed")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("1.99 sec")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("0-60 mph")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        Text("")
                        Text("Price from 119,990$")
                            .fontWeight(.bold)
                    }
                case 2:
                    VStack {
                        Text("")
                        HStack {
                            VStack {
                                Text("520+ mi")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Range")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("200 mph")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Top Speed")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("<1.99 sec")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("0-60 mph")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        Text("")
                        Text("Price from 149,990$")
                            .fontWeight(.bold)
                    }
                default: Text("Please, choose modification")
                }
            case 1:
                switch modifSegmentIndex {
                case 0: VStack {
                    Text("")
                    HStack {
                        VStack {
                            Text("263 mi")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Range")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                        VStack {
                            Text("140 mph")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Top Speed")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                        VStack {
                            Text("5.3 sec")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("0-60 mph")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                    }
                    Text("")
                    Text("Price from 39,490$")
                        .fontWeight(.bold)
                }
                case 1:
                    VStack {
                        Text("")
                        HStack {
                            VStack {
                                Text("353 mi")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Range")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("145 mph")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Top Speed")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("4.2 sec")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("0-60 mph")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                                
                            }
                        }
                        Text("")
                        Text("Price from 48,490$")
                            .fontWeight(.bold)
                    }
                case 2:
                    VStack {
                        Text("")
                        HStack {
                            VStack {
                                Text("315 mi")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Range")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("162 mph")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Top Speed")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("3.1 sec")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("0-60 mph")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        Text("")
                        Text("Price from 56,990$")
                            .fontWeight(.bold)
                    }
                default: Text("Please, choose modification")
                }
            case 2:
                switch modifSegmentIndex {
                case 0: VStack {
                    Text("")
                    HStack {
                        VStack {
                            Text("360 mi")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Range")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                        VStack {
                            Text("155 mph")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Top Speed")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                        VStack {
                            Text("3.8 sec")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("0-60 mph")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                    }
                    Text("")
                    Text("Price from 89,990$")
                        .fontWeight(.bold)
                }
                case 1:
                    VStack {
                        Text("")
                        HStack {
                            VStack {
                                Text("340 mi")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Range")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("163 mph")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Top Speed")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("2.6 sec")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("0-60 mph")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        Text("")
                        Text("Price from 119,990$")
                            .fontWeight(.bold)
                    }
                default: Text("Please, choose modification")
                }
            case 3:
                switch modifSegmentIndex {
                case 0: VStack {
                    Text("")
                    HStack {
                        VStack {
                            Text("326 mi")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Range")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                        VStack {
                            Text("135 mph")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Top Speed")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                        VStack {
                            Text("4.8 sec")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("0-60 mph")
                                .fontWeight(.light)
                                .foregroundColor(Color.gray)
                        }
                    }
                    Text("")
                    Text("Price from 51,490$")
                        .fontWeight(.bold)
                }
                case 1:
                    VStack {
                        Text("")
                        HStack {
                            VStack {
                                Text("303 mi")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Range")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("155 mph")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("Top Speed")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                            VStack {
                                Text("3.5 sec")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("0-60 mph")
                                    .fontWeight(.light)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        Text("")
                        Text("Price from 60,990$")
                            .fontWeight(.bold)
                    }
                default: Text("Please, choose modification")
                }
            default:
                Text("Please, choose modification")
                
            }
            /*VStack {
                Text("")
                Text(" Buy ")
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            
            }*/
            VStack {
                Text("")
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text(" Buy ")
                }.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.white)
                //.font(.title2)
                .border(cornerRadius: 5)
            }
            Spacer()
        } 
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

