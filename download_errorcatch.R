files <- c("http://foo.com/bar.pdf", "http://www.orimi.com/pdf-test.pdf", "http://bar.com/foo.pdf")

oldw <- getOption("warn")

options(warn = -1)

for (file in files) {

    tryCatch(download.file(file, tempfile(), mode = "wb", quiet = FALSE),

        error = function(e) print(paste(file, 'did not work out')))   

}

options(warn = oldw)

# turn warnings off at the start using options(warn = -1) to suppress extraneous warning messages
# and restore the previous settings at the end. This will give you an output like

# trying URL 'http://foo.com/bar.pdf'

# [1] "http://foo.com/bar.pdf did not work out"

# trying URL 'http://www.orimi.com/pdf-test.pdf'

# Content type 'application/pdf' length 20597 bytes (20 KB)

# downloaded 20 KB

 

# trying URL 'http://bar.com/foo.pdf'

# [1] "http://bar.com/foo.pdf did not work out"
