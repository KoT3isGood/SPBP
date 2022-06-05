import SwiftUI
import UIKit
extension View {
    func previewDevice(_ value: String) -> some View {
        modifier(Devices(value: value))
    }
}
extension View {
    func extendSafeArea(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right:CGFloat = 0) -> some View {
        modifier(ExtendedSafeAreaModifier(top: top,left: left,bottom: bottom,right:right))
    }
}
struct ExtendedSafeAreaModifier: ViewModifier {
    @State var top:CGFloat
    @State var left:CGFloat
    @State var bottom:CGFloat
    @State var right:CGFloat
    func body(content: Content) -> some View {
        Container(content: content, top: top, left: left, bottom: bottom, right: right)
            .edgesIgnoringSafeArea(.all)
    }
    private struct Container: UIViewRepresentable {
        let content: Content
        @State var top:CGFloat
        @State var left:CGFloat
        @State var bottom:CGFloat
        @State var right:CGFloat
        typealias UIViewType = UIView
        func makeUIView(context: Context) -> UIViewType {
            let hostingController = UIHostingController(rootView: content)
            hostingController.additionalSafeAreaInsets = .init(top: top, left: left, bottom: bottom, right: right)
            context.coordinator.container = hostingController
            return hostingController.view
        }
        func updateUIView(_ uiView: UIViewType, context: Context) {
            uiView.setNeedsLayout()
        }
        func makeCoordinator() -> Coordinator {
            .init()
        }
        class Coordinator {
            var container: UIViewController!
        }
    }
}
struct Devices: ViewModifier {
    var value:String
    func body(content: Content) -> some View {
        switch value {
        case "iPhone SE (1st generation)":
            ZStack {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .cornerRadius(37.5)
                    .frame(width: 231, height: 487)
                    .foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                
                content
                    .extendSafeArea(top:20, bottom:0)
                    .frame(width:320, height:568)
                    .clipped()
                    .scaleEffect(348/568)
            }
        case "iPhone SE (2nd generation)","iPhone SE (3rd generation)","iPhone 6","iPhone 6S","iPhone 7","iPhone 8":
            ZStack {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .cornerRadius(37.5)
                    .frame(width: 265, height: 545)
                    .foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                
                content
                    .extendSafeArea(top:20, bottom:0)
                    .frame(width:375, height:667)
                    .clipped()
                    .scaleEffect(410/667)
            }
        case "iPhone 6 Plus","iPhone 6S Plus","iPhone 7 Plus","iPhone 8 Plus":
            ZStack {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .cornerRadius(37.5)
                    .frame(width: 307, height: 623)
                    .foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                
                content
                    .extendSafeArea(top:20, bottom:0)
                    .frame(width:414, height:736)
                    .clipped()
                    .scaleEffect(478/736)
            }
        case "iPhone 11","iPhone XR":
            ZStack {
                content
                    .extendSafeArea(top:44, bottom:34)
                    .frame(width:414, height:896)
                    .mask(RoundedRectangle(cornerRadius: 41.5, style: .continuous))
                    .padding(10/549*896)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 41.5+10/549*896, style: .continuous))
                    .scaleEffect(549/896)
                ZStack {
                    RoundedRectangle(cornerRadius: 16.5,style: .continuous)
                        .frame(width: 138, height: 42)
                        .mask(Rectangle().frame(width: 140, height: 21).offset(x: 0, y: 10.5))
                        .offset(x: 0, y: -275)
                    
                    ZStack {
                        Rectangle().frame(width: 5, height: 5)
                        Circle().frame(width: 10, height: 10)
                            .offset(x: 2.5, y: 2.5)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: 71.5, y: -272.5)
                    
                    ZStack {
                        Rectangle().frame(width: 5, height: 5)
                        Circle().frame(width: 10, height: 10)
                            .offset(x: -2.5, y: 2.5)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: -71.5, y: -272.5)
                }.foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
            }
            
        case "iPhone 11 Pro","iPhone X","iPhone XS":
            ZStack {
                content
                    .extendSafeArea(top:44, bottom:34)
                    .frame(width:375, height:812)
                    .mask(RoundedRectangle(cornerRadius: 39, style: .continuous))
                    .padding(10/532*812)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 39+10/532*812, style: .continuous))
                    .scaleEffect(532/812)
                ZStack {
                    RoundedRectangle(cornerRadius: 16.5,style: .continuous)
                        .frame(width: 138, height: 42)
                        .mask(Rectangle().frame(width: 140, height: 21).offset(x: 0, y: 10.5))
                    
                    ZStack {
                        Rectangle().frame(width: 5, height: 5)
                        Circle().frame(width: 10, height: 10)
                            .offset(x: 2.5, y: 2.5)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: 71.5, y: 2.5)
                    
                    ZStack {
                        Rectangle().frame(width: 5, height: 5)
                        Circle().frame(width: 10, height: 10)
                            .offset(x: -2.5, y: 2.5)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: -71.5, y: 2.5)
                }.foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .offset(x: 0, y: -266.5)
            }
        case "iPhone 11 Pro Max","iPhone XS Max" :
            ZStack {
                content
                    .extendSafeArea(top:44, bottom:34)
                    .frame(width:414, height:896)
                    .mask(RoundedRectangle(cornerRadius: 39, style: .continuous))
                    .padding(10/587*896)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 39+10/587*896, style: .continuous))
                    .scaleEffect(587/896)
                ZStack {
                    RoundedRectangle(cornerRadius: 16.5,style: .continuous)
                        .frame(width: 138, height: 42)
                        .mask(Rectangle().frame(width: 140, height: 21).offset(x: 0, y: 10.5))
                    
                    ZStack {
                        Rectangle().frame(width: 5, height: 5)
                        Circle().frame(width: 10, height: 10)
                            .offset(x: 2.5, y: 2.5)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: 71.5, y: 2.5)
                    
                    ZStack {
                        Rectangle().frame(width: 5, height: 5)
                        Circle().frame(width: 10, height: 10)
                            .offset(x: -2.5, y: 2.5)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: -71.5, y: 2.5)
                }.foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .offset(x: 0, y: -275-18.5)
            }
        case "iPhone 12", "iPhone 12 Pro":
            ZStack {
                content
                    .extendSafeArea(top:47, bottom:34)
                    .frame(width:390, height:844)
                    .mask(RoundedRectangle(cornerRadius: 47.33, style: .continuous))
                    .padding(10/550*884)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 47.33+10/550*884, style: .continuous))
                    .scaleEffect(550/844)
                ZStack {
                    RoundedRectangle(cornerRadius: 16.5,style: .continuous)
                        .frame(width: 134, height: 42)
                        .mask(Rectangle().frame(width: 140, height: 21).offset(x: 0, y: 10.5))
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: 2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: 69, y: 2)
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: -2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: -69, y: 2)
                }.foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .offset(x: 0, y: -275)
            }
        case "iPhone 12 mini" :
            ZStack {
                content
                    .extendSafeArea(top:50, bottom:34)
                    .frame(width:375, height:812)
                    .mask(RoundedRectangle(cornerRadius: 44, style: .continuous))
                    .padding(10/492*812)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 44+10/607*926, style: .continuous))
                    .scaleEffect(492/812)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 16.5,style: .continuous)
                        .frame(width: 134, height: 42)
                        .mask(Rectangle().frame(width: 140, height: 21).offset(x: 0, y: 10.5))
                    
                    ZStack {
                        Rectangle().frame(width: 2, height: 2)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: 2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: 69, y: 2)
                    
                    ZStack {
                        Rectangle().frame(width: 5, height: 5)
                        Circle().frame(width: 10, height: 10)
                            .offset(x: -2.5, y: 2.5)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: -69.5, y: 2.5)
                }.foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .offset(x: 0, y: -245.76)
            }
        case "iPhone 12 Pro Max":
            ZStack {
                content
                    .extendSafeArea(top:47, bottom:34)
                    .frame(width:428, height:926)
                    .mask(RoundedRectangle(cornerRadius: 53.33, style: .continuous))
                    .padding(10/607*926)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 53.33+10/607*926, style: .continuous))
                    .scaleEffect(607/926)
                ZStack {
                    RoundedRectangle(cornerRadius: 16.5,style: .continuous)
                        .frame(width: 134, height: 42)
                        .mask(Rectangle().frame(width: 140, height: 21).offset(x: 0, y: 10.5))
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: 2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: 69, y: 2)
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: -2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: -69, y: 2)
                }.foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .offset(x: 0, y: -303.3)
            }
        case "iPhone 13", "iPhone 13 Pro":
            ZStack {
                content
                    .extendSafeArea(top:47, bottom:34)
                    .frame(width:390, height:844)
                    .mask(RoundedRectangle(cornerRadius: 47.33, style: .continuous))
                    .padding(10/550*884)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 47.33+10/550*884, style: .continuous))
                    .scaleEffect(550/844)
                ZStack {
                    RoundedRectangle(cornerRadius: 16.5,style: .continuous)
                        .frame(width: 99, height: 43)
                        .mask(Rectangle().frame(width: 140, height: 21.5).offset(x: 0, y: 10.75))
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: 2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: 51.5, y: 2)
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: -2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: -51.5, y: 2)
                }.foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .offset(x: 0, y: -275)
            }
        case "iPhone 13 mini":
            ZStack {
                content
                    .extendSafeArea(top:50, bottom:34)
                    .frame(width:375, height:812)
                    .mask(RoundedRectangle(cornerRadius: 44, style: .continuous))
                    .padding(10/492*812)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 44+10/607*926, style: .continuous))
                    .scaleEffect(492/812)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 16.5,style: .continuous)
                        .frame(width: 99, height: 43)
                        .mask(Rectangle().frame(width: 140, height: 21.5).offset(x: 0, y: 10.75))
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: 2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: 51.5, y: 2)
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: -2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: -51.5, y: 2)
                }.foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .offset(x: 0, y: -245.76)
            }
        case "iPhone 13 Pro Max":
            ZStack {
                content
                    .extendSafeArea(top:47, bottom:34)
                    .frame(width:428, height:926)
                    .mask(RoundedRectangle(cornerRadius: 53.33, style: .continuous))
                    .padding(10/607*926)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 53.33+10/607*926, style: .continuous))
                    .scaleEffect(607/926)
                ZStack {
                    RoundedRectangle(cornerRadius: 16.5,style: .continuous)
                        .frame(width: 99, height: 43)
                        .mask(Rectangle().frame(width: 140, height: 21.5).offset(x: 0, y: 10.75))
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: 2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: 51.5, y: 2)
                    
                    ZStack {
                        Rectangle().frame(width: 4, height: 4)
                        Circle().frame(width: 8, height: 8)
                            .offset(x: -2, y: 2)
                            .blendMode(.destinationOut)
                    }.compositingGroup()
                        .offset(x: -51.5, y: 2)
                }.foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .offset(x: 0, y: -303.3)
            }
        case "iPad Pro (11-inch)":
            ZStack {
                content
                    .extendSafeArea(top:24, bottom:20)
                    .mask(RoundedRectangle(cornerRadius: 18, style: .continuous))
                    .frame(width:1194, height:834)
                    .padding(35/632*834)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 18+35/632*834, style: .continuous))
                    .scaleEffect(632/834)
            }
        case "iPad Pro (12.9-inch)":
            ZStack {
                content
                    .extendSafeArea(top:24, bottom:20)
                    .mask(RoundedRectangle(cornerRadius: 18, style: .continuous))
                    .frame(width:1366, height:1024)
                    .padding(35/776*834)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 18+35/776*1024, style: .continuous))
                    .scaleEffect(776/1024/1.1)
            }
        case "iPad Air (10.5-inch)":
            ZStack {
                content
                    .extendSafeArea(top:24, bottom:20)
                    .mask(RoundedRectangle(cornerRadius: 18, style: .continuous))
                    .frame(width:1112, height:834)
                    .padding(35/631*834)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 18+35/631*834, style: .continuous))
                    .scaleEffect(631/834)
            }
        case "iPad mini (8.3-inch)":
            ZStack {
                content
                    .extendSafeArea(top:24, bottom:20)
                    .mask(RoundedRectangle(cornerRadius: 18, style: .continuous))
                    .frame(width:1024, height:768)
                    .padding(35/456*768)
                    .background(Color(red: 20/255, green: 20/255, blue: 20/255))
                    .mask(RoundedRectangle(cornerRadius: 18+35/456*768, style: .continuous))
                    .scaleEffect(456/768)
            }
        case "iPad Pro (10.5-inch)":
            ZStack {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .cornerRadius(37.5)
                    .frame(width: 980, height: 680)
                    .foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                
                content
                    .extendSafeArea(top:20, bottom:0)
                    .frame(width:1112, height:834)
                    .clipped()
                    .scaleEffect(632/834)
            }
        case "iPad Pro (9.7-inch)","iPad Air (9.7-inch)","iPad (9.7-inch)":
            ZStack {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .cornerRadius(37.5)
                    .frame(width: 940, height: 660)
                    .foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                
                content
                    .extendSafeArea(top:20, bottom:0)
                    .frame(width:1024, height:768)
                    .clipped()
                    .scaleEffect(582/768)
            }
        case "iPad (10.2-inch)":
            ZStack {
                RoundedRectangle(cornerRadius: 0, style: .continuous)
                    .cornerRadius(37.5)
                    .frame(width: 980, height: 680)
                    .foregroundColor(Color(red: 20/255, green: 20/255, blue: 20/255))
                
                content
                    .extendSafeArea(top:20, bottom:0)
                    .frame(width:1080, height:810)
                    .clipped()
                    .scaleEffect(612/810)
            }
        default:
            Text("None")
        }
    }
}
