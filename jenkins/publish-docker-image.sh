sbt -Dversion=$Version universal:packageZipTarball

cp target/universal/${Service}-${Version}.tgz ${Service}_2.12-${Version}.tgz

mkdir -p opt/docker

tar -xvf ${Service}_2.12-${Version}.tgz -C opt/docker --strip-components=1

cp $HOME/docker-image-creation/Dockerfile Dockerfile

sed -i -e "s|SERVICE|${Service}|g" Dockerfile

