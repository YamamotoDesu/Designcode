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
