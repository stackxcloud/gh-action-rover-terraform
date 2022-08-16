FROM im2nguyen/rover:v0.3.3

# To convert the SVG from rover to PNG
RUN apk add --no-cache librsvg

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
