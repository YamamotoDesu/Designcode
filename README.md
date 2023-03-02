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
