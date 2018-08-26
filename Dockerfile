# Ubuntu
FROM ubuntu

# Updating Ubuntu packages
RUN apt-get update && yes|apt-get upgrade

# Adding wget and bzip2
RUN apt-get install -y wget bzip2

# For OpenCV
RUN apt-get install libgtk2.0-dev --yes

# Anaconda
RUN wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
RUN bash Anaconda3-5.0.1-Linux-x86_64.sh -b
RUN rm Anaconda3-5.0.1-Linux-x86_64.sh

# Set path to anaconda
ENV PATH /root/anaconda3/bin:$PATH

# Miniconda
#RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
#RUN bash Miniconda3-latest-Linux-x86_64.sh -b
#RUN rm Miniconda3-latest-Linux-x86_64.sh

# Set path to conda
#ENV PATH /root/miniconda3/bin:$PATH

# Installing libraries for data science
RUN pip install opencv-python
RUN conda install -c conda-forge tensorflow 
RUN conda install keras --yes
RUN conda install -c conda-forge dlib --yes
RUN conda install -c anaconda scikit-learn --yes 
RUN conda install -c anaconda pandas --yes
RUN conda install -c pytorch pytorch --yes
RUN conda install -c conda-forge theano --yes
RUN conda install -c conda-forge nltk --yes
RUN conda install -c conda-forge xgboost --yes
RUN conda install -c anaconda glib --yes

#RUN conda install -c anaconda jupyter --yes

# Updating Anaconda packages
RUN conda update conda --yes
RUN conda update anaconda --yes
RUN conda update --all --yes

# Configuring access to Jupyter
RUN mkdir /opt/notebooks
RUN jupyter notebook --generate-config --allow-root
RUN echo "c.NotebookApp.password = u'sha1:6a3f528eec40:6e896b6e4828f525a6e20e5411cd1c8075d68619'" >> /root/.jupyter/jupyter_notebook_config.py

# Jupyter listens port: 8888
EXPOSE 8888

# Run Jupyter notebook as Docker main process
CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]
