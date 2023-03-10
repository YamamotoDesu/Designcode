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


