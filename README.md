# Designcode

[Max Width and Frame Alignment](https://designcode.io/swiftui-handbook-max-width-and-frame-alignment)

<img width="184" alt="スクリーンショット 2023-03-02 22 36 50" src="https://user-images.githubusercontent.com/47273077/222443899-8a11a3c8-f104-4a07-854d-1b9399db4667.png">

As It Is
```swift
VStack {
	HStack {
		Image(systemName: "xmark")
			.frame(width: 32, height: 32)
			.background(Circle().stroke())
		Spacer()
	}
	Spacer()
}
.padding()
```

To Be
```swift
 VStack {
            Rectangle().fill(Color.blue)
        }
        .overlay(
            Image(systemName: "xmark")
                .frame(width: 32, height: 32)
                .background(Circle().stroke())
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
        )
```

[Shadows and Color Opacity](https://designcode.io/swiftui-handbook-shadows-and-color-opacity)

<img width="159" alt="スクリーンショット 2023-03-02 22 52 28" src="https://user-images.githubusercontent.com/47273077/222447514-8049d407-0d0e-4950-a6f7-8fcc91c53815.png">

```swift
        VStack {
            Text("App of the day")
                .font(.title).bold()
        }
        .frame(width: 300, height: 400)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 20)
```

<img width="234" alt="スクリーンショット 2023-03-02 23 00 18" src="https://user-images.githubusercontent.com/47273077/222449686-dd9abe97-9631-41f8-9cbc-1f81be4d6d07.png">

```swift
 VStack {
            Text("App of the day")
                .font(.title).bold()
                .foregroundColor(.white)
                .shadow(radius: 10)
        }
        .frame(width: 300, height: 400)
        .background(Color.pink)
        .cornerRadius(20)
        .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0.0, y: 10.0)
        .shadow(color: Color.pink.opacity(0.2), radius: 5, x: 0.0, y: 2.0)
```

[Mask and Transparency](https://designcode.io/swiftui-handbook-mask-and-transparency)

<img width="233" alt="スクリーンショット 2023-03-03 20 14 22" src="https://user-images.githubusercontent.com/47273077/222706468-4788565c-04df-4788-a021-08d08d0acf45.png">

```swift
ZStack {
            Color.blue.ignoresSafeArea()

            VStack {
                ForEach(0 ..< 5) { item in
                    Text("Mask and Transparency")
                        .font(.title3).bold()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                }
            }
            .frame(height: 300, alignment: .top)
            .padding()
            .background(Color.white)
            ///.mask(Color.black.opacity(0.3))
            .mask(LinearGradient(gradient: Gradient(colors: [Color.red, Color.red, Color.blue.opacity(0.2)]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(30)
            .padding()
        }
```

[Clip Shape and Smooth Corners](https://designcode.io/swiftui-handbook-clip-shape)

<img width="171" alt="スクリーンショット 2023-03-03 20 46 06" src="https://user-images.githubusercontent.com/47273077/222712504-fe7812bd-e625-4786-b8d8-f47846d7b8b3.png">

```swift
ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                Text("SwiftUI for iOS 14")
                    .bold()
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        }
```

[Tab View Pagination](https://designcode.io/swiftui-handbook-tab-view-pagination)

<img width="300" alt="スクリーンショット 2023-03-03 21 49 05" src="https://user-images.githubusercontent.com/47273077/222724373-fdc17e51-5d04-4c89-94b9-4613b2747ef5.png">

```swift

        TabView {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.blue)
                .padding()
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.red)
                .padding()
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.purple)
                .padding()
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
```

[View Transition](https://designcode.io/swiftui-handbook-view-transition)
## transition(.slide)
<img width="300" alt="スクリーンショット 2023-03-03 20 46 06" src="https://user-images.githubusercontent.com/47273077/224218270-1d13ab4f-ad7b-4534-bd77-98d91ed40f41.gif">

## transition(.move(edge: .bottom))
<img width="300" alt="スクリーンショット 2023-03-03 20 46 06" src="https://user-images.githubusercontent.com/47273077/224218915-3d362c55-87d6-4229-906b-ff6644eb2cf5.gif">

## transition(.scale(scale: 0.1, anchor: .bottomTrailing))
<img width="300" alt="スクリーンショット 2023-03-03 20 46 06" src="https://user-images.githubusercontent.com/47273077/224220019-58c5ffbf-3371-46bf-bc4e-4ce401c29f25.gif">

[Animation Modifier and Timing](https://designcode.io/swiftui-handbook-animation-modifier-and-timing)

<img width="300" alt="スクリーンショット 2023-03-03 20 46 06" src="https://user-images.githubusercontent.com/47273077/224224812-07554296-649e-486c-906a-3ac2ef9272c9.gif">

```swift
var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
                .opacity(show ? 0.5 : 0.2)
                .animation(.linear(duration: 0.8))
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(height: 300)
                .opacity(show ? 1.0 : 0.5)
                .padding(show ? 16 : 32)
                .offset(y: show ? 0 : 30)
                .animation(.spring(response: 0.4, dampingFraction: 0.4))
            RoundedRectangle(cornerRadius: 20)
                .offset(y: show ? 600 : 0)
                .foregroundColor(.white)
                .frame(height: 300)
                .shadow(radius: 40)
                .padding(32)
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
            
        }
        .onTapGesture {
            show.toggle()
        }
  }
```

[Transform Animations](https://designcode.io/swiftui-handbook-transform-animations)

<img width="300" alt="スクリーンショット 2023-03-03 20 46 06" src="https://user-images.githubusercontent.com/47273077/224245608-4ff6da7a-67a4-4d9a-9862-82a6c80717f6.gif">

```swift
    @State var show = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 260, height: 200)
                .offset(y: 20)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 200)
                .foregroundColor(Color.purple)
                .offset(y: show ? -200 : 0)
                .scaleEffect(show ? 1.2 : 1)
                .rotationEffect(Angle(degrees: show ? 30 : 0))
                .rotation3DEffect(
                    Angle(degrees: show ? 30 : 0),
                    axis: (x: 1, y: 0, z: 0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 1
                )
                .onTapGesture {
                    withAnimation {
                        show.toggle()
                    }
                   
                }
        }
    }
 ```

[Tap Animation with Delay](https://designcode.io/swiftui-handbook-tap-animation-with-delay)

<img width="300" alt="スクリーンショット 2023-03-03 20 46 06" src="https://user-images.githubusercontent.com/47273077/224252722-c768e795-d612-4383-a56f-cf8519454084.gif">

```swift
 @State var tap = false

    var body: some View {
        VStack {
            Text("View more").foregroundColor(.white)
        }
        .frame(width: 200, height: 200)
        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30))
        .shadow(color: Color.blue.opacity(tap ? 0.6 : 0.3), radius: tap ? 20 : 10, x:0, y: tap ? 10: 20)
        .scaleEffect(tap ? 1.2 : 1)
        .animation(.spring(response: 0.4, dampingFraction: 0.6))
        .onTapGesture {
            tap = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                tap = false
            }
        }
    }
 ```
 
### [Long Press Gesture](https://designcode.io/swiftui-handbook-long-press)
 
<img width="300" src="https://user-images.githubusercontent.com/47273077/226092217-00a33c6c-60ba-49cb-aca1-9fe63ae3abf2.gif">

```swift
struct ContentView: View {
    @GestureState var press = false
    @State var show = false
    
    var body: some View {
        Image(systemName: "camera.fill")
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .background(show ? Color.black : Color.blue)
            .mask(Circle())
            .scaleEffect(press ? 2 : 1)
            .animation(.spring())
            .gesture(
                LongPressGesture(minimumDuration: 0.6).updating($press) { currentState, gestureState, transaction in
                    gestureState = currentState
                }.onEnded { value in
                    show.toggle()
                }
            )
    }
}
```
 
### [Drag Gesture](https://designcode.io/swiftui-handbook-drag-gesture)

<img width="300" src="https://user-images.githubusercontent.com/47273077/226093864-5a9d2a12-0f0b-42d4-898a-7b82116b2719.gif">

```swift
struct ContentView: View {
    @State var viewState = CGSize.zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.blue)
            .frame(width: 300, height: 400)
            .offset(x: viewState.width, y: viewState.height)
            .animation(.spring(response: 0.4, dampingFraction: 0.6))
            .gesture(
                DragGesture().onChanged { value in
                    viewState = value.translation
                }.onEnded { value in
                    viewState = .zero
                }
            )
    }
}
```

### [Matched Geometry Effect](https://designcode.io/swiftui-handbook-matched-geometry-effect)

<img width="300" src="https://user-images.githubusercontent.com/47273077/226466880-c2edb03b-112b-46c3-bdc9-a2aa5b5536fd.gif">

```swift
struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !show {
                ScrollView {
                    HStack {
                        VStack {
                            Text("Title")
                                .foregroundColor(.white)
                                .matchedGeometryEffect(id: "title", in: namespace)
                        }
                        .frame(width: 100, height: 100)
                        .background(
                            Rectangle()
                                .matchedGeometryEffect(id: "shape", in: namespace)
                        )
                        Rectangle()
                            .frame(width: 100, height: 100)
                        Spacer()
                    }
                }
            } else {
                VStack {
                    Text("Title").foregroundColor(.white)
                        .matchedGeometryEffect(id: "title", in: namespace)
                }
                .frame(maxWidth: .infinity, maxHeight: 400)
                .background(
                    Rectangle()
                        .matchedGeometryEffect(id: "shape", in: namespace)
                )
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                show.toggle()
            }
        }
    }
}
```

### [Advanced Matched Geometry Effect](https://designcode.io/swiftui-handbook-advanced-matched-geometry)

<img width="300" src="https://user-images.githubusercontent.com/47273077/227383432-01a2ca4f-a628-496c-9371-24037624a6ad.gif">

ContentView.swift
```swift
struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 10)
                            .matchedGeometryEffect(id: "shape", in: namespace)
                            .frame(width: 44)
                        Text("Fever")
                            .matchedGeometryEffect(id: "text", in: namespace)
                        Spacer()
                        Image(systemName: "play.fill")
                            .matchedGeometryEffect(id: "play", in: namespace)
                            .font(.title)
                        Image(systemName: "forward.fill")
                            .matchedGeometryEffect(id: "forward", in: namespace)
                            .font(.title)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 44)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 0)
                        .fill(Color.accentColor)
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .frame(maxHeight: .infinity, alignment: .bottom)
            } else {
                PlayView(namespace: namespace)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
        
    }
}
```

PlayView.swift
```swift
import SwiftUI

struct PlayView: View {
    var namespace: Namespace.ID
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 30)
                .matchedGeometryEffect(id: "shape", in: namespace)
                .frame(height: 300)
                .padding()
            Text("Fever")
                .matchedGeometryEffect(id: "text", in: namespace)
            HStack {
                Image(systemName: "play.fill")
                    .matchedGeometryEffect(id: "play", in: namespace)
                    .font(.title)
                Image(systemName: "forward.fill")
                    .matchedGeometryEffect(id: "forward", in: namespace)
                    .font(.title)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.accentColor)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .ignoresSafeArea()
    }
}

struct PlayView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        PlayView(namespace: namespace)
    }
}
```

### [Background Blur](https://designcode.io/swiftui-handbook-background-blur)
```swift

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .padding()
            VisualEffectBlur(blurStyle: .systemMaterial)
                .ignoresSafeArea()
        }
    }
}
```

```swift
import SwiftUI

// MARK: - VisualEffectBlur

struct VisualEffectBlur<Content: View>: View {
    var blurStyle: UIBlurEffect.Style
    var vibrancyStyle: UIVibrancyEffectStyle?
    var content: Content
    
    init(blurStyle: UIBlurEffect.Style = .systemMaterial, vibrancyStyle: UIVibrancyEffectStyle? = nil, @ViewBuilder content: () -> Content) {
        self.blurStyle = blurStyle
        self.vibrancyStyle = vibrancyStyle
        self.content = content()
    }
    
    var body: some View {
        Representable(blurStyle: blurStyle, vibrancyStyle: vibrancyStyle, content: ZStack { content })
            .accessibility(hidden: Content.self == EmptyView.self)
    }
}

// MARK: - Representable

extension VisualEffectBlur {
    struct Representable<Content: View>: UIViewRepresentable {
        var blurStyle: UIBlurEffect.Style
        var vibrancyStyle: UIVibrancyEffectStyle?
        var content: Content
        
        func makeUIView(context: Context) -> UIVisualEffectView {
            context.coordinator.blurView
        }
        
        func updateUIView(_ view: UIVisualEffectView, context: Context) {
            context.coordinator.update(content: content, blurStyle: blurStyle, vibrancyStyle: vibrancyStyle)
        }
        
        func makeCoordinator() -> Coordinator {
            Coordinator(content: content)
        }
    }
}

// MARK: - Coordinator

extension VisualEffectBlur.Representable {
    class Coordinator {
        let blurView = UIVisualEffectView()
        let vibrancyView = UIVisualEffectView()
        let hostingController: UIHostingController<Content>
        
        init(content: Content) {
            hostingController = UIHostingController(rootView: content)
            hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            hostingController.view.backgroundColor = nil
            blurView.contentView.addSubview(vibrancyView)
            blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            vibrancyView.contentView.addSubview(hostingController.view)
            vibrancyView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
        
        func update(content: Content, blurStyle: UIBlurEffect.Style, vibrancyStyle: UIVibrancyEffectStyle?) {
            hostingController.rootView = content
            let blurEffect = UIBlurEffect(style: blurStyle)
            blurView.effect = blurEffect
            if let vibrancyStyle = vibrancyStyle {
                vibrancyView.effect = UIVibrancyEffect(blurEffect: blurEffect, style: vibrancyStyle)
            } else {
                vibrancyView.effect = nil
            }
            hostingController.view.setNeedsDisplay()
        }
    }
}

// MARK: - Content-less Initializer

extension VisualEffectBlur where Content == EmptyView {
    init(blurStyle: UIBlurEffect.Style = .systemMaterial) {
        self.init( blurStyle: blurStyle, vibrancyStyle: nil) {
            EmptyView()
        }
    }
}

// MARK: - Previews

struct VisualEffectBlur_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.red, .blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            
            VisualEffectBlur(blurStyle: .systemUltraThinMaterial, vibrancyStyle: .fill) {
                Text("Hello World!")
                    .frame(width: 200, height: 100)
            }
        }
        .previewLayout(.sizeThatFits)
    }
}

```
