import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            Preview()
        }
    }
    
}
struct Preview: View {
    @AppStorage("darkMode") private var darkmode = false
    var body: some View {
            ZStack {
                Color.white
                GeometryReader { geometry in
                    SceneDelegatePreview()
                        .ignoresSafeArea()
                        .safeAreaInset(edge: .bottom, content: { 
                            RoundedRectangle(cornerRadius: 5).frame(width: geometry.size.width/2.82, height: 5.5)
                                .foregroundColor(darkmode ? Color(red: 58/255, green: 58/255, blue: 58/255) : Color(UIColor.black))
                                .offset(x: 0, y: 25.5)
                            
                            
                        })
                        .background(darkmode ? .black : .white)
                        .foregroundColor(darkmode ? .white : .black)
                        .environment(\.colorScheme, darkmode ? .dark : .light)
                }
                .previewDevice("iPhone 11") //Your phone here
                    
              
                
                Button(" ", action: {
                    darkmode.toggle()
                }).keyboardShortcut("A", modifiers: [.shift,.command])
                    .offset(x: 1000, y: 1000) // Darkmode keybind
            }
        
        
    }
    struct SceneDelegatePreview: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> UIViewController {
            return yourViewController // Your vc
        }
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
            
        }
    }
}


