# Swift-example
Swift example


## Change Main storeboard to custom ViewController
### Set it to SceneDelegate file

```
guard let scene = (scene as? UIWindowScene) else { return }
window = UIWindow(frame: scene.coordinateSpace.bounds)
window?.windowScene=scene
window?.rootViewController = ViewController()
window?.makeKeyAndVisible()
```

## Get input value from TextField in iOS alert in Swift

### Create the alert controller.

```
let alert = UIAlertController(title: "Some Title", message: "Enter a text", preferredStyle: .alert)
```

### Add the text field. You can configure it however you need.

```
alert.addTextField { (textField) in
    textField.text = "Some default text"
}
```
### Grab the value from the text field, and print it when the user clicks OK.

```
alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
    let textField = alert.textFields![0] // Force unwrapping because we know it exists.
    print("Text field: \(textField.text)")
}))
```
### Present the alert.

```
self.present(alert, animated: true, completion: nil)
```
