import AgoraUIKit
import UIKit

// Fill the App ID of your project generated on Agora Console.
let appId: String = "972705b19cfb4dfbbebbe806d39128e3"

// Fill the temp token generated on Agora Console.
let token: String? = "007eJxTYGAJjuiR1mFSWzJZbcXj9GdK76MS+PaqLObKdZO9aV6+U1eBwdLcyNzANMnQMjktySQlLSkpFYgsDMxSjC0NjSxSjWccF0xrCGRk4PbnYGJkgEAQn5MhKDErscQjtSifgQEAyMQdVQ=="

// Fill the channel name.
let channelName: String = "RajatHero"

// Create the view object.
var agoraView: AgoraVideoViewer!

class ViewController: UIViewController {
    override func viewDidLoad() {
        initializeAndJoinChannel()
    }

    override func viewDidDisappear(_ animated: Bool) {
        agoraView.exit()
    }

    func initializeAndJoinChannel() {
        agoraView = AgoraVideoViewer(
            connectionData: AgoraConnectionData(
                appId: appId,
                rtcToken: token
            )
        )
        agoraView.fills(view: view)

        agoraView.join(
            channel: channelName,
            with: token,
            as: .broadcaster
        )
    }
}
