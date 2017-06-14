## A flexible document organization process 

### Sobre

Na pesquisa apresentada nesta monografia, foi investigado e apresentado o processo de organizar
uma coleção de documentos textuais de maneira flexível. Esse processo conforme ficou evidenciado
durante esse texto, é um procedimento de aquisição de conhecimento bastante intensivo, no qual é
necessário se aplicar um diversificado conjunto de técnicas para mitigar os diversos desafios que
circundam esta árdua tarefa. Sendo que boa parte das técnicas que são empregadas, derivam da
mineração de dados e consequentemente também da mineração de textos. Foi também pontuado ao longo do
texto, os desafios existentes nesta área de pesquisa, como por exemplo, os impactos negativos da
elevada dimensionalidade da matriz documentos x termos, que é naturalmente bastante esparsa em
coleções textuais. Onde por sua vez, dificultam bastante a tarefa de se calcular a similaridade
entre dois documentos quaisquer. Outro ponto crucial, está no processo de agrupamento, onde se é
esperado que os grupos resultantes, consigam capturar a estrutura natural das coleções, de maneira
que os grupos resultantes possuam relevância para os usuários, e consequentemente cumprir o papel
de aquisição e descoberta de conhecimento. Coleções textuais, podem também conter documentos
ruidosos, que destoam do restante da coleção, portanto se é esperado que o processo de organização
flexível, não seja prejudicado pela presença desses documentos. E com o aumento massivo da
quantidade de dados produzidos pela humanidade, se faz também necessário que todo o processo, seja
capaz de adequar para coleções com grande volumes de dados.

### [Source Code](https://github.com/niltonvasques/fuzzy-text-clustering)

#### Features 

* Clustering methods (FCM, PCM, PFCM) 
* Distance norms (Euclidian, Cosine, Jaccard)
* Cluster labelling/Descriptor extractor methods (SoftO-FDCL, PDCL, Mixed-PFDCL)
* Generate ARFF file after process, thus its possible just submit for classification benchmarks in WEKA tool
* Parameters selection
* Input data should be in programming contest problems format


#### Setup

    make all  

#### Run

Show help

    ./clustering --help 

Executing process

    ./clustering -x -m 1.2 -n 1.2 -k < X12.in 


#### Input format

**N** is the number of terms<br> 
**M** is the number of documents


    N M
    term1
    term2
    ...
    termN
    value11 value12 ... value1N
    value21 value22 ... value2N
    ...
    valueM1 valueM2 ... valueMN
    
#### Ploting results with Sammon's Mapping

    Rscript sammons.r samples/X12.frequencys X12 .
    
![X12 clustered](https://github.com/niltonvasques/fuzzy-text-clustering/blob/master/samples/X12.png)
