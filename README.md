# Pscan and Pscan GUI

Pscan is a software tool that scans a set of sequences (e.g. promoters) from co-regulated or co-expressed genes with motifs describing the binding specificity of known transcription factors and assesses which motifs are significantly over- or under-represented, providing thus hints on which transcription factors could be common regulators of the genes studied, together with the location of their candidate binding sites in the sequences. Pscan does not resort to comparisons with orthologous sequences and experimental results show that it compares favorably to other tools for the same task in terms of false positive predictions and computation time.     

Address: (http://www.beaconlab.it/pscan)

**Reference**:  
F.Zambelli, G.Pesole, G.Pavesi     
[Pscan: Finding Over-represented Transcription Factor Binding Site Motifs in Sequences from Co-Regulated or Co-Expressed Genes.](https://academic.oup.com/nar/article/37/suppl_2/W247/1156104)     
*Nucleic Acids Research* 2009 37(Web Server issue):W247-W252. 

For more info see: [Beacon Lab](http://159.149.160.56/beacon/)  
If you need HELP click [*here*](http://159.149.160.88/pscan/help.html)

The Dockerfile is written to build a docker image of the Pscan tool             
The image is based on centOS 7 and run the tool on Apache/2.4.6.    
It contains both the binary code and the graphic interface of the Pscan Tool.  

Once you have downloaded the image, you can run the pscan docker with the minimal command:

*docker run -d -p 8080:80 pscanimage*

The image expose the docker on the port 8080, so after running the docker you can access to the graphic interface of pscan by using *host
IP address:8080*
