\name{read.nii.voxel}
\alias{read.nii.voxel}
\title{
Read NII Voxel
}
\description{
Read values from NIfTI files at given coordinates (x,y,z,t).
}
\usage{
read.nii.voxel(nii.file, coords)
}
\arguments{
  \item{nii.file}{
Full directory listing to a NIfTI file.  File must not be gzipped.
}
  \item{coords}{
A numeric vector conatining x,y,z,t coordinates indicating the location to read values. To read all volumes (timepoints) at an XYZ coordinate use 'Inf' for t, e.g., c(50,50,50,Inf).
}
}
\details{
NIfTI files need to be unzipped before using this function or any other portions of the nifti.io package. This is necessary given the inconsistent way in which gzipped files are indexed (Some information on this is given in the documentation for the readBin function).

Values for t coordinates (coords[4]) may be Inf to retrieve all timepoints for the given x,y,z coordinates.  If data is 4D and only x, y, z coordinates are given, the value at those coordinates for the first volume only is returned.
}
\value{
A number or a numeric vector containing values for all timepoints.
}
\author{
Timothy R. Koscik <timothy-koscik@uiowa.edu>
}
\examples{
# get filename for example NII file included in nifti.io package
nii.eg <- system.file("extdata", "egBrain.nii", package="nifti.io")

# set coordinates (this is a voxel in the head of the
# caudate in the right hemisphere in the example image)
coordinates <- c(20,35,20,1)

# read voxel value at coordinates
voxel.value <- read.nii.voxel(nii.file = nii.eg, coords = coordinates)
}
