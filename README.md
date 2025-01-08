# canvas-attachment-download

Download attachments from a Canvas course assignment

## Getting Started

### Installing

Run these once to install:
* open a terminal
* `git clone https://github.com/danmalone326/canvas-attachment-download.git`
    * If you are asked to install command line tools, you will need allow these to install, then run this command again.
* `cd canvas-attachment-download`
* `make install`

To update to the latest version in the future:
* `make update`

### Executing program

In the `canvas-attachment-download` directory, do the following:
* edit the file `setup.ini` to set Canvas API parameters
* run `./canvas-attachment-download -c "course name"`
    * there is also an optional assignment name parameter if needed
    * e.g. `./canvas-attachment-download -c "course name" -a "assignment name"`
    * you can use wildcards for the course name and assignment
        * e.g. `./canvas-attachment-download -c "BSKT-101-*-2228" -a "Picnic*"`
* downloads, if any, will be placed in the `downloads` directory

### Cleaning Up

In the `canvas-attachment-download` directory, do the following:
* run `make clean`
* the `downloads` directory and any files will be deleted

## Authors

Contributors names and contact info

Dan Malone

## Version History

* 0.1
    * Initial Release
* 0.2
    * Moved search fields to parameters

## License

This project is licensed under the GNU General Public License License - see the LICENSE file for details
