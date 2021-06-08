\name{write.nii.volume}
\alias{write.nii.volume}
\title{Write NIfTI-1 Volume}
\description{Write values to a specific volume in a NIfTI-1 file.}
\usage{
  write.nii.volume(nii.file, vol.num, values)
}
\arguments{
  \item{nii.file}{Full directory listing to a NIfTI file. File must not be gzipped.}
  \item{vol.num}{An integer indicating which volume to read.}
  \item{values}{an array or vector of values to be written}
}
\details{
NIfTI files need to be unzipped before using this function or any other portions of the nifti.io package. This is necessary given the inconsistent way in which gzipped files are indexed.
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

# generate an array of random values the same size as the image volume
xyz.dims <- info.nii(ref.nii, "xyz")
new.values <- array(rnorm(prod(xyz.dims)), dim=xyz.dims)

# write out volume all at once
write.nii.volume(nii.file = new.nii, vol.num = 1, values = new.values)
}
