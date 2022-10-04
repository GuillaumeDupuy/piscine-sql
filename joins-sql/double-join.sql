SELECT DISTINCT tracks.Name as TrackName, playlists.Name as PlaylistName
from playlist_track
Inner JOIN playlists On playlist_track."PlaylistId" = playlists."PlaylistId"
Inner JOIN tracks On playlist_track."TrackId" = tracks."TrackId"
Where playlists.Name = 'TV Shows'
Limit 100