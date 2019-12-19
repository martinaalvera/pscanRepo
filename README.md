# Pscan-ChIP and Pscan-ChIP GUI

PscanChIP is a web server that, starting from a collection of genomic regions derived from a ChIP-Seq experiment, scans them using motif descriptors like JASPAR or TRANSFAC position-specific frequency matrices, or descriptors uploaded by users, and it evaluates both motif enrichment and positional bias within the regions according to different measures and criteria. PscanChIP can successfully identify not only the actual binding sites for the TF investigated by a ChIP-Seq experiment but also secondary motifs corresponding to other TFs that tend to bind the same regions, and, if present, precise positional correlations among their respective sites.   

Address: (http://www.beaconlab.it/pscan_chip_dev)

**Reference**  
F.Zambelli, G.Pesole, G.Pavesi    
[PscanChIP: finding over-represented transcription factor-binding site motifs and their correlations in sequences from ChIP-Seq experiments.](https://academic.oup.com/nar/article/41/W1/W535/1105963)    
*Nucleic Acids Research 2013; doi: 10.1093/nar/gkt448*


For more info see: [Beacon Lab](http://159.149.160.56/beacon/)     
If you need HELP click [*here*](http://159.149.160.88/pscan_chip_dev/help.html)

The Dockerfile is written to build a docker image of the Pscan tool
The image is based on centOS 7 and run the tool on Apache/2.4.6    
It contains both the binary code and the graphic interface of the Pscan-ChIP Tool.   

Once you have downloaded the image, you can run the Pscan-ChIP docker with the minimal command:

*docker run -d -p 8080:80 pscan_chip_image*

The image expose the docker on the port 8080, so after running the docker you can access to the graphic interface of Pscan-ChIP by using *host IP address:8080*
