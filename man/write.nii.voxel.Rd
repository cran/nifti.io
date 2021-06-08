\name{write.nii.voxel}
\alias{write.nii.voxel}
\title{
Write NII Voxel
}
\description{
Write NII Voxel
}
\usage{
write.nii.voxel(nii.file, coords, value)
}
\arguments{
  \item{nii.file}{
Full directory listing to a NIfTI file.  File must not be gzipped.
}
  \item{coords}{
A numeric vector conatining x,y,z,t coordinates indicating the location to write values
}
  \item{value}{
A numeric value to write
}
}
\details{
NIfTI files need to be unzipped before using this function or any other portions of the nifti.io package. This is necessary given the inconsistent way in which gzipped files are indexed (Some information on this is given in the documentation for the readBin function).
}
\value{
Output directly to NIFTI file.
}
\author{
Timothy R. Koscik <timothy-koscik@uiowa.edu>
}
\examples{
# get filename for example NII file included in nifti.io package
ref.nii <- system.file("extdata", "egBrain.nii", package="nifti.io")

# create a temporary file to write into
tdir <- tempdir()
new.nii <- paste0(tdir, "/new.nii")
init.nii(new.nii = new.nii, ref.nii = ref.nii)

# set coordinates and value of voxel to write
coordinates <- c(20,35,20)
new.value <- rnorm(1)

# write to single voxel in NII file
write.nii.voxel(nii.file = new.nii, coords = coordinates, value = new.value)
}
