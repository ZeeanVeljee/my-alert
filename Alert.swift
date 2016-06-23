import UIKIT

@objc(Alert) class Alert: CDVPlugin {
    func alert(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR)
    
    
    let alertController: UIAlertController = UIAlertController(title: "My First plugin", message: "Plugin working successfully", preferredStyle: .Alert)
    
    self.viewController?.presentViewController(alertController, animated: true, completion: nil)
    
    let duration = Double(NSEC_PER_SEC)*3.0
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(duration)),
        dispatch_get_main_queue(),
    {
    alertController.dismissViewControllerAnimated(true, completion:nil)
    })
    
    pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAsString: "Plugin working successfully")
    
    self.commandDelegate!.sendPluginResult(pluginResult, callbackId: command.callbackId)
    }
}