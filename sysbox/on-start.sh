#!/bin/bash

# dockerd start
dockerd > /var/log/dockerd.log 2>&1 &
sleep 2

# pull solang image 
# docker pull ghcr.io/hyperledger/solang@sha256:e6f687910df5dd9d4f5285aed105ae0e6bcae912db43e8955ed4d8344d49785d 

cargo make run


# #!/bin/bash

# # Just run the compiled backend binary (make sure it exists in final image)
# exec /app/target/release/backend --frontend_folder /app/packages/app/dist --port ${PORT}
