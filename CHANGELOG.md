## 1.0.3

- Remove a few bad attributes

- Increase text configurability


## 1.0.4

- add @immutable to fbutton.dart

- minSDK 2.2

## 1.1.0

- Add  **style**  parameter to configure text style. The following parameters will be removed in subsequent versions:
    - `textColor`
    - `fontSize`
    - `fontStyle`
    - `fontHeight`
    - `textWeight`

- Add the  **alignment**  parameter to cancel the default centering

- Remove default Padding

- Remove the default background color

- `onPress' is no longer a required parameter

## 2.0.0

- Delete the following parameters and use **style** instead:
    - `textColor`
    - `fontSize`
    - `fontStyle`
    - `fontHeight`
    - `textWeight`

- Delete the following parameters:
    - `splashColor`
    - `focusNode`
    - `autofocus`
    
- Delete the `effect` parameter
    
- Delete `disabledTextColor` and use `disableStyle` instead

- **FButtonCorner**  changed to **FCorner**

- **FButtonCornerStyle**  changed to  **FornerStyle** 

- Add the `activeMaskColor` parameter. The color of the mask when the button is pressed. Adjust the alpha of the color value to ensure that the view behind can be displayed.

- Add **Hover** support.
    - The color in **hover** state can be configured through `hoverColor`.
    - `onHover` can help developers perceive **hover** state changes.
    
- Add `onPressedDown` and `onPressedUp` and `onPressedCancel` to help developers to make corresponding changes when pressing, lifting or canceling the press.

- Add `loadingWidget` parameter, so that developers can define their own loading style

- Add Neumorphism style support.
    - Neumorphism style support can be turned on/off through the `isSupportNeumorphism` parameter
    - The `highlightShadowColor` parameter can configure the bright shadow color after enabling the Neumorphism style  

- Add `surfaceStyle` parameter to support the definition of surface style.
    - Flat
    - Convex
    - Concave
   
