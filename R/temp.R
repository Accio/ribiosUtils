#' A temporary directory which (1) every machine in the cluster has access to
#' and (2) has sufficient space
#' 
#' 
#' @return a character string of the directory name
#' @seealso \code{\link{ribiosTempfile}}
#' @export ribiosTempdir
ribiosTempdir <- function() {
    file.path("/data64/bi/tmp/",
              basename(tempdir()))
}

#' A temporary file which (1) every machine in the cluster has access to and
#' (2) there is sufficient space
#' 
#' 
#' @param pattern Character string, file pattern
#' @param tmpdir Character string, temp directory
#' @param fileext CHaracter string, file name extension (suffix)
#' @return a character string of the file name
#' @seealso \code{\link{ribiosTempdir}}
#' @export ribiosTempfile
ribiosTempfile <- function(pattern="file",
                           tmpdir=ribiosTempdir(), fileext="") {
    tempfile(pattern=pattern, tmpdir=tmpdir, fileext=fileext)
}
