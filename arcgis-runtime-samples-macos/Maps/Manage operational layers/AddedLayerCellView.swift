//
// Copyright 2017 Esri.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import Cocoa

protocol AddedLayerCellViewDelegate:class {
    
    func addedLayerCellViewWantsToDelete(_ addedLayerCellView:AddedLayerCellView)
}

class AddedLayerCellView: NSTableCellView {
    
    var index:Int = 0
    
    weak var delegate:AddedLayerCellViewDelegate?
    
    @IBAction func deleteAction(_ sender:NSButton) {
        self.delegate?.addedLayerCellViewWantsToDelete(self)
    }

}
