\name{read.nii.volume}
\alias{read.nii.volume}
\title{
Read NII Volume
}
\description{
Read indicated volume from NIfTI files.
}
\usage{
read.nii.volume(nii.file, vol.num)
}
\arguments{
  \item{nii.file}{
Full directory listing to a NIFTI file.  File must not be gzipped.
}
  \item{vol.num}{
An integer indicating which volume to read.
}
}
\details{
NIfTI files need to be unzipped before using this function or any other portions of the nifti.io package. This is necessary given the inconsistent way in which gzipped files are indexed (Some information on this is given in the documentation for the readBin function).
}
\value{
An array containing values from NIFTI volume.
}
\author{
Timothy R. Koscik <timothy-koscik@uiowa.edu>
}
\examples{
# get filename for example NII file included in nifti.io package
nii.eg <- system.file("extdata", "egBrain.nii", package="nifti.io")

# read entire volume into array
volume.values <- read.nii.volume(nii.file = nii.eg, vol.num = 1)
}
