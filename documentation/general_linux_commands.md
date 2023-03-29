> `xsel` - Reading stdin to stdout or other.
For example: `xsel -i -b` will read from stdin [-i] and place it into the clipboard [-b]
**Note:** This command line utility is required to be installed for use.

> `feh {IMAGE_PATH}` to open an image on the command line.


[example: "hello"]
cut -b 1,3,5
[result: bytes at position 1,3,5 == "hlo"]

[example: "hello"]
cut -b 1-4
[result: bytes at position 1-4 == "hell"]

[example: "hello"]
cut -c 1,3,5
[result: Characters at position 1,3,5 == "hlo"]

[example: "hello"]
cut -c 1-4
[result: Characters at position 1-4 == "hell"]

[example:  
    """
    ID, title, description
    1, gardening show, flowers with Greg.
    2, showtime, film creators.
    """
]
cut -d "," -f 2
[result: 
    """
    title
    gardening show
    showtime
    """
]
