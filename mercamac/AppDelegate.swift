import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItem: NSStatusItem
    let statusItemView: StatusItemView
    let menu: NSMenu
    let autoLaunchMenu: NSMenuItem

    override init() {
        statusItem = NSStatusBar.system.statusItem(withLength: 72)

        menu = NSMenu()
        autoLaunchMenu = NSMenuItem()
        autoLaunchMenu.title = NSLocalizedString("start", comment: "")
        if AutoLaunchHelper.isLaunchWhenLogin() {
            autoLaunchMenu.state = .on
        } else {
            autoLaunchMenu.state = .off
        }
        autoLaunchMenu.action = #selector(menuItemAutoLaunchClick)
        // menu.addItem(autoLaunchMenu)
        // menu.addItem(NSMenuItem.separator())
        menu.addItem(withTitle: NSLocalizedString("about", comment: ""), action: #selector(menuItemAboutClick), keyEquivalent: "")
        menu.addItem(NSMenuItem.separator())
        menu.addItem(withTitle: NSLocalizedString("quit", comment: ""), action: #selector(menuItemQuitClick), keyEquivalent: "q")

        statusItemView = StatusItemView(statusItem: statusItem, menu: menu)
        statusItem.view = statusItemView
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        NetworkMonitor(statusItemView: statusItemView).start()
    }
}

extension AppDelegate {
    @objc func menuItemQuitClick() {
        NSApp.terminate(nil)
    }

    @objc func menuItemAboutClick() {
        let alert = NSAlert()
        alert.messageText = NSLocalizedString("about", comment: "")
        alert.addButton(withTitle: "Github")
        alert.addButton(withTitle: NSLocalizedString("close", comment: ""))
        alert.informativeText = NSLocalizedString("about_content", comment: "")
        let result = alert.runModal()
        switch result {
        case NSApplication.ModalResponse.alertFirstButtonReturn:
            //open Github page
            NSWorkspace.shared.open(URL(string: "https://github.com/Mercandj/mercamac")!)
            break
        default:
            //close alert window
            break
        }
    }

    @objc func menuItemAutoLaunchClick() {
        AutoLaunchHelper.toggleLaunchWhenLogin()
        if AutoLaunchHelper.isLaunchWhenLogin() {
            autoLaunchMenu.state = .on
        } else {
            autoLaunchMenu.state = .off
        }
    }
}
