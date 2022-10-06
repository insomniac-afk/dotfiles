#/bin/sh
rm $HOME/scripts/PMM.log && cd $HOME/Plex-Meta-Manager && python3 plex_meta_manager.py --run --run-libraries "Anime, Anime - Movies, Movies, Movies - 4K, Movies - 4K DolbyVision, 4K - Remux, Series, Series 4K, Series - 4K DolbyVision" >> $HOME/scripts/PMM.log
