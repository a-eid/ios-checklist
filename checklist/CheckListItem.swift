import UIKit


struct CheckListItem {
  var checked = false
  // the content never changes once it's set.  No need to be a var
  let content: String
}
