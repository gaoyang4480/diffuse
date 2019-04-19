module UI.Reply exposing (Reply(..))

import Alien
import Authentication
import Common exposing (Switch(..))
import Coordinates exposing (Coordinates)
import Json.Decode as Json
import Notifications exposing (Notification)
import Queue
import Sources exposing (Source)
import Tracks exposing (IdentifiedTrack)
import UI.Page exposing (Page)



-- 🌳


type Reply
    = ActiveQueueItemChanged (Maybe Queue.Item)
    | AddSourceToCollection Source
    | DismissNotification { id : Int }
    | ExternalAuth Authentication.Method String
    | FillQueue
    | GoToPage Page
    | InsertDemo
    | PlayTrack IdentifiedTrack
    | ProcessSources
    | RemoveTracksWithSourceId String
    | ResetQueue
    | ShiftQueue
    | SaveEnclosedUserData
    | SaveFavourites
    | SaveSettings
    | SaveSources
    | SaveTracks
    | ShowErrorNotification String
    | ShowMoreAuthenticationOptions Coordinates
    | ShowSuccessNotification String
    | ShowWarningNotification String
    | ShowTracksContextMenu Coordinates (List IdentifiedTrack)
    | ToggleLoadingScreen Switch
