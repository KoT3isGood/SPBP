import SwiftUI
import WidgetKit

struct WidgetPreview: ViewModifier {
    var supportedFamilies:[WidgetFamily]?
    func body(content: Content) -> some View {
        GeometryReader { geometry in
            let deviceResolutionHeight = geometry.size.height + geometry.safeAreaInsets.top + geometry.safeAreaInsets.bottom
            HStack {
                VStack {
                    if supportedFamilies?.contains(.systemSmall) == true || supportedFamilies == nil {
                        ZStack {
                            switch deviceResolutionHeight {
                            case 896:
                                content.frame(width: 169, height: 169).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 736:
                                content.frame(width: 159, height: 159).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 844:
                                content.frame(width: 158, height: 158).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 667:
                                content.frame(width: 148, height: 148).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 768,568:
                                content.frame(width: 141, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 810:
                                content.frame(width: 146, height: 146).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 780,820: 
                                content.frame(width: 155, height: 155).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 834:
                                content.frame(width: 150, height: 150).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            case 1024,926: 
                                content.frame(width: 170, height: 170).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            default:
                                content.frame(width: 141, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                            }
                        }
                    }
                    if supportedFamilies?.contains(.systemMedium) == true || supportedFamilies == nil {
                    ZStack {
                        switch deviceResolutionHeight {
                        case 926:
                            content.frame(width: 364, height: 170).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 896:
                            content.frame(width: 360, height: 169).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 736:
                            content.frame(width: 348, height: 157).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 844:
                            content.frame(width: 338, height: 158).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 812:
                            content.frame(width: 329, height: 155).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 667:
                            content.frame(width: 321, height: 148).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 780:
                            content.frame(width: 329, height: 155).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 568:
                            content.frame(width: 292, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 768:
                            content.frame(width: 305.5, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 810:
                            content.frame(width: 320.5, height: 146).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 820: 
                            content.frame(width: 342, height: 155).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 834: 
                            content.frame(width: 327.5, height: 150).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 1024: 
                            content.frame(width: 378.5, height: 170).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        default:
                            content.frame(width: 292, height: 141).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        }
                    }
                    }
                    if supportedFamilies?.contains(.systemLarge) == true || supportedFamilies == nil{
                    ZStack {
                        switch deviceResolutionHeight {
                        case 926:
                            content.frame(width: 364, height: 382).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 896:
                            content.frame(width: 360, height: 379).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 736:
                            content.frame(width: 348, height: 357).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 844:
                            content.frame(width: 338, height: 354).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 812:
                            content.frame(width: 329, height: 345).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 667:
                            content.frame(width: 321, height: 324).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 780:
                            content.frame(width: 329, height: 345).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 568:
                            content.frame(width: 292, height: 311).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 768:
                            content.frame(width: 305.5, height: 305.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 810:
                            content.frame(width: 320.5, height: 320.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 820: 
                            content.frame(width: 342, height: 342).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 834: 
                            content.frame(width: 327.5, height: 327.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        case 1024: 
                            content.frame(width: 378.5, height: 378.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        default:
                            content.frame(width: 292, height: 311).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                        }
                    }
                }
                }
                if supportedFamilies?.contains(.systemExtraLarge) == true || supportedFamilies == nil {
                ZStack {
                    switch deviceResolutionHeight {
                    case 768:
                        content.frame(width: 634.5, height: 305.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                    case 810:
                        content.frame(width: 669, height: 320.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                    case 834: 
                        content.frame(width: 682, height: 327.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                    case 820: 
                        content.frame(width: 715.5, height: 342).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                    case 1024: 
                        content.frame(width: 795, height: 378.5).mask(RoundedRectangle(cornerRadius: 21.25, style: .continuous))
                    default:
                        Text("")
                    }
                }
                }
            }
            .onAppear {
                print(deviceResolutionHeight)
            }
            .frame(width: geometry.size.width, height: deviceResolutionHeight)
        }
    }
}
