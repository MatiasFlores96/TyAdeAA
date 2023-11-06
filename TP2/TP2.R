#PUNTO 1
library(jpeg)
imagen=readJPEG("imagen.jpg")

#PUNTO 2
gris=(imagen[,,1]+imagen[,,2]+imagen[,,3])/3 
plot(as.raster(gris))
writeJPEG(gris,"gris.jpg")

#PUNTO 3
rojo=as.vector(imagen[,,1]) 
verde=as.vector(imagen[,,2]) 
azul=as.vector(imagen[,,3]) 
base=data.frame(rojo,verde,azul) 
set.seed(39549911);km=kmeans(base,3)

km$centers

#PUNTO 4
plot(10,10,pch=19,cex=10,col=rgb(km$center[1,1],km$center[1,2],km$center[1,3]))
points(11,11,pch=19,cex=10,col=rgb(km$center[2,1],km$center[2,2],km$center[2,3]))
points(12,12,pch=19,cex=10,col=rgb(km$center[3,1],km$center[3,2],km$center[3,3]))

#PUNTO 5
#Reconstruir imagen
segmR=rojo
segmV=verde
segmA=azul
segmR[km$cluster==1]=km$center[1,1]
segmV[km$cluster==1]=km$center[1,2]
segmA[km$cluster==1]=km$center[1,3]
segmR[km$cluster==2]=km$center[2,1]
segmV[km$cluster==2]=km$center[2,2]
segmA[km$cluster==2]=km$center[2,3]
segmR[km$cluster==3]=km$center[3,1]
segmV[km$cluster==3]=km$center[3,2]
segmA[km$cluster==3]=km$center[3,3]
segmentada=imagen
segmentada[,,1]=segmR
segmentada[,,2]=segmV
segmentada[,,3]=segmA
plot(as.raster(segmentada))

writeJPEG(segmentada,"segmentada.jpg")

#PUNTO 6
rojo=as.vector(imagen[,,1])
verde=as.vector(imagen[,,2])
azul=as.vector(imagen[,,3])
base=data.frame(rojo,verde,azul)
set.seed(39549911);km=kmeans(base,4)

#Reconstruir imagen
#4 colores
segmR=rojo
segmV=verde
segmA=azul
segmR[km$cluster==1]=km$center[1,1]
segmV[km$cluster==1]=km$center[1,2]
segmA[km$cluster==1]=km$center[1,3]
segmR[km$cluster==2]=km$center[2,1]
segmV[km$cluster==2]=km$center[2,2]
segmA[km$cluster==2]=km$center[2,3]
segmR[km$cluster==3]=km$center[3,1]
segmV[km$cluster==3]=km$center[3,2]
segmA[km$cluster==3]=km$center[3,3]
segmR[km$cluster==4]=km$center[4,1]
segmV[km$cluster==4]=km$center[4,2]
segmA[km$cluster==4]=km$center[4,3]
segmentada=imagen
segmentada[,,1]=segmR
segmentada[,,2]=segmV
segmentada[,,3]=segmA
plot(as.raster(segmentada))
writeJPEG(segmentada,"segmentada4.jpg")


#5 colores
set.seed(39549911);km=kmeans(base,5)

segmR=rojo
segmV=verde
segmA=azul
segmR[km$cluster==1]=km$center[1,1]
segmV[km$cluster==1]=km$center[1,2]
segmA[km$cluster==1]=km$center[1,3]
segmR[km$cluster==2]=km$center[2,1]
segmV[km$cluster==2]=km$center[2,2]
segmA[km$cluster==2]=km$center[2,3]
segmR[km$cluster==3]=km$center[3,1]
segmV[km$cluster==3]=km$center[3,2]
segmA[km$cluster==3]=km$center[3,3]
segmR[km$cluster==4]=km$center[4,1]
segmV[km$cluster==4]=km$center[4,2]
segmA[km$cluster==4]=km$center[4,3]
segmR[km$cluster==5]=km$center[5,1]
segmV[km$cluster==5]=km$center[5,2]
segmA[km$cluster==5]=km$center[5,3]
segmentada=imagen
segmentada[,,1]=segmR
segmentada[,,2]=segmV
segmentada[,,3]=segmA
plot(as.raster(segmentada))
writeJPEG(segmentada,"segmentada5.jpg")


#Punto 7
set.seed(39549911);km=kmeans(base,8)

segmR=rojo
segmV=verde
segmA=azul
segmR[km$cluster==1]=km$center[1,1]
segmV[km$cluster==1]=km$center[1,2]
segmA[km$cluster==1]=km$center[1,3]
segmR[km$cluster==2]=km$center[2,1]
segmV[km$cluster==2]=km$center[2,2]
segmA[km$cluster==2]=km$center[2,3]
segmR[km$cluster==3]=km$center[3,1]
segmV[km$cluster==3]=km$center[3,2]
segmA[km$cluster==3]=km$center[3,3]
segmR[km$cluster==4]=km$center[4,1]
segmV[km$cluster==4]=km$center[4,2]
segmA[km$cluster==4]=km$center[4,3]
segmR[km$cluster==5]=km$center[5,1]
segmV[km$cluster==5]=km$center[5,2]
segmA[km$cluster==5]=km$center[5,3]
segmR[km$cluster==6]=km$center[6,1]
segmV[km$cluster==6]=km$center[6,2]
segmA[km$cluster==6]=km$center[6,3]
segmR[km$cluster==7]=km$center[7,1]
segmV[km$cluster==7]=km$center[7,2]
segmA[km$cluster==7]=km$center[7,3]
segmR[km$cluster==8]=km$center[8,1]
segmV[km$cluster==8]=km$center[8,2]
segmA[km$cluster==8]=km$center[8,3]
segmentada=imagen
segmentada[,,1]=segmR
segmentada[,,2]=segmV
segmentada[,,3]=segmA
plot(as.raster(segmentada))
writeJPEG(segmentada,"segmentada8.jpg")

