# nifti.io

## Tools for reading and writing NIfTI-1.1 (NII) files, including optimized voxelwise read/write operations and a simplified method to write dataframes to NII.

I/O operations in nifti.io are optimized to be **very fast** and require **minimal RAM**. GZipped NII files are not supported (due to inconsistent indexing into files). Specification of the NIfTI-1.1 format can be found here [LINK](https://nifti.nimh.nih.gov/nifti-1).

These methods were developed to support freedom in statistical modelling that currently does not exist in standard neuroimage processing suites. If a statistical model can be deployed in R, then nifti.io can:
  1) bring 3D and 4D neuroimaging data into R to be modelled with parallelization and efficient memory use in mind
  2) and put statistical results back into brain-space for visualization, interpretation, and further analysis.

Citation:
Koscik TR, Man V, Jahn A, Lee CH, Cunningham WA. Decomposing the neural pathways in a simple, value-based choice. Neuroimage. 2020;214: 116764. [LINK](https://doi.org/10.1016/j.neuroimage.2020.116764)