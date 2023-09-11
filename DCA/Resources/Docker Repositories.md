# Content trust in Docker

When transferring data among networked systems, _trust_ is a central concern. In particular, when communicating over an untrusted medium such as the internet, it is critical to ensure the integrity and the publisher of all the data a system operates on. You use the Docker Engine to push and pull images (data) to a public or private registry. Content trust gives you the ability to verify both the integrity and the publisher of all the data received from a registry over any channel.

## [About Docker Content Trust (DCT)](https://docs.docker.com/engine/security/trust/#about-docker-content-trust-dct) 

Docker Content Trust (DCT) provides the ability to use digital signatures for data sent to and received from remote Docker registries. These signatures allow client-side or runtime verification of the integrity and publisher of specific image tags.

Through DCT, image publishers can sign their images and image consumers can ensure that the images they pull are signed. Publishers could be individuals or organizations manually signing their content or automated software supply chains signing content as part of their release process.

### [Image tags and DCT](https://docs.docker.com/engine/security/trust/#image-tags-and-dct) 

An individual image record has the following identifier: