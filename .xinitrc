$HOME/.villefort/villefort &
xrdb $HOME/.xResources &
redshift -l 30.26:-97.74 &
python $HOME/spotify/spot.py >>plog &
feh --bg-fill ~/dotfiles/back.jpg
exec i3
