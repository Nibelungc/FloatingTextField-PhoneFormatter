# FloatingTextField-PhoneFormatter

`FloatingTextField-PhoneFormatter` is the [JVFloatLabeledTextField](https://github.com/jverdi/JVFloatLabeledTextField) joined with [SHSPhoneComponent](https://github.com/Serheo/SHSPhoneComponent).

You can turn on/off the phone number formatter for a `JVFloatLabeledTextField` through Interface Builder or Code. <br />
It implements `IB_DESIGNABLE` and `IBInspectable` so you can fully customize it in Interface Builder.

## Installation

Copy /FloatingTextField+PhoneFormatter/Library folder to your project.

And import `JVFloatLabeledTextField.h` in your Controller.

## Usage

### Interface Builder:
- Add `UITextField` on your `UIViewController`
- Change `UITextField` class to `JVFloatLabeledTextField`
- Customize your field:
<p align="left">
  <img src="https://cloud.githubusercontent.com/assets/12380482/10905181/6f4bdf3a-823a-11e5-9874-8bce68516cd0.png" alt="Interface builder inspector"/>
</p>

### Programatically:

``` objective-c
JVFloatLabeledTextField* phoneField = [[JVFloatLabeledTextField alloc] initWithFrame:frame]; 
[self.view addSubview: phoneField];
phoneField.phoneNumberField = YES;
phoneField.placeholder = @"Phone number";
[phoneField.formatter setDefaultOutputPattern:@"(###) ###-##-##"];
phoneField.formatter.prefix = @"+7 ";
```
You can find more about the phone formatter on the [owner page](https://github.com/Serheo/SHSPhoneComponent)

## Example

Through the Demo project you can find out how it works, and tune it as you wish:

<p align="left">
  <img src="https://cloud.githubusercontent.com/assets/12380482/10905182/6f4e3096-823a-11e5-8749-8a7c333e948a.png" alt="Example"/>
</p>

## Requirements
ARC Enabled.
iOS 7+

