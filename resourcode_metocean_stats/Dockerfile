# docker build -f Dockerfile -t simonwp:resourcecode .
FROM python:3.12-slim
# FROM continuumio/miniconda3:latest

# Install tk for TkAgg matplotlib backend (needed for interactive plots via X11)
RUN apt-get update && apt-get install -y --no-install-recommends \
    tk \
    python3-tk \
    && rm -rf /var/lib/apt/lists/*

# Install packages only available on pip
RUN pip install --no-cache-dir  resourcecode
RUN pip install --no-cache-dir  metocean-stats


# # Add conda-forge channel and install geospatial/scientific stack
# RUN conda install -y -c conda-forge \
#     python=3.12 \
#     numpy \
#     scipy \
#     matplotlib \
#     pandas \
#     geopandas \
#     xarray \
#     zarr \
#     fsspec \
#     shapely \
#     pyproj \
#     fiona \
#     rasterio \
#     netcdf4 \
#     dask \
#     && conda clean -afy

# # Set PROJ data path (required for geopandas/pyproj)
# ENV PROJ_LIB=/opt/conda/share/proj

# # Install packages only available on pip
# RUN pip install --no-cache-dir \
#     oceanum \
#     aiohttp

# NOTE: do NOT set MPLBACKEND here — pass it at runtime via -e MPLBACKEND=TkAgg

# WORKDIR /work
