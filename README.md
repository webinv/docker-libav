# Docker libav

## Usage

### Convert flv to mp4

`docker run --rm -v $PWD -w $PWD webinventions/libav avconv -i video.flv video.mp4`

### Convert all files flv to mp4

`docker run --rm -v $PWD -w $PWD webinventions/libav bash -c 'for i in *.flv ; do avconv -i $i "${i%.*}.mp4"; done'`

### Read video info

`docker run --rm -v $PWD -w $PWD webinventions/libav avprobe -v quiet -show_format -show_streams -of json video.mp4`