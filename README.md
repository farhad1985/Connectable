# Connectable

I write a protocol for connect a uiview to xib file .

```
import UIKit

protocol Connectable {}

extension Connectable where Self: UIView {
    func commit() {
        let nib = UINib(nibName: String(describing: Self.self), bundle: nil)
        let views = nib.instantiate(withOwner: self, options: nil)
        guard let view = views.first as? UIView else {return}
        view.frame = bounds
        addSubview(view)
    }
}
```

you must use this protocol inherit to every UIView.
