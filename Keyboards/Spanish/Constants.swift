//
//  Constants.swift
//

import UIKit

extension UIColor {
    static let defaultSpecialKeyGrey = UIColor(red: 180.0/255.0, green: 184.0/255.0, blue: 193.0/255.0, alpha: 1.0)
    static let scribeBlue = UIColor(red: 97.0/255.0, green: 200.0/255.0, blue: 245.0/255.0, alpha: 1.0)

    static let previewRedLight = UIColor(red: 153.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let previewBlueLight = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 153.0/255.0, alpha: 1.0)
    static let previewOrangeLight = UIColor(red: 153.0/255.0, green: 76.0/255.0, blue: 0.0/255.0, alpha: 1.0)
}

enum Constants{

	static let keyColor: UIColor = .white
	static let keyPressedColor: UIColor = .lightText
    static let specialKeyColor: UIColor = .defaultSpecialKeyGrey
    static let previewLabelColor: UIColor = .defaultSpecialKeyGrey

    static let previewRedLightTheme: UIColor = .previewRedLight
    static let previewBlueLightTheme: UIColor = .previewBlueLight
    static let previewOrangeLightTheme: UIColor = .previewOrangeLight

	static let letterKeys = [
		["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
		["a", "s", "d", "f", "g","h", "j", "k", "l", "ñ"],
		["⇧", "z", "x", "c", "v", "b", "n", "m", "⌫"],
		["123", "🌐", "espacio", "↵"]
	]

	static let numberKeys = [
		["1", "2", "3", "4", "5", "6", "7", "8", "9", "0",],
		["-", "/", ":", ";", "(", ")" ,"$", "&", "@", "\""],
		["#+=", ".", ",", "?", "!", "\'", "⌫"],
		["ABC", "🌐", "espacio", "↵"]
	]

	static let symbolKeys = [
		["[", "]", "{", "}", "#", "%", "^", "*", "+", "="],
		["_", "\\", "|", "~", "<", ">", "€", "£", "¥", "·"],
		["123", ".", ",", "?", "!", "\'", "⌫"],
		["ABC", "🌐", "espacio", "↵"]
	]
}
