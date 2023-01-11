FROM continuumio/miniconda3:22.11.1

WORKDIR /project

RUN conda install -c conda-forge xarray netCDF4 bottleneck numpy pandas matplotlib jupyterlab scipy pyomo glpk ipopt

COPY ./README.md /project
COPY ./data /project/data
COPY ./notebooks /project/notebooks
    
CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]