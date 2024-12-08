
 
FROM alpine:latest

# Create /structure folder and set permissions
RUN mkdir -p /structure && chmod 777 /structure

# Create files with specific owners
RUN touch /structure/sync-work && chown sync:sync /structure/sync-work
RUN touch /structure/nobody-work && chown nobody:nobody /structure/nobody-work

# Add a user "collin" with UID 5000
RUN adduser -u 5000 -D collin

# Default command
CMD ["sh", "-c", "while true; do echo users; done"]
