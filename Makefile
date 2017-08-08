all: build

build:
	Rscript -e "blogdown::build_site(local = "FALSE", method = 'html')"

serve:
	Rscript -e "blogdown::serve_site()"

# default post title
TITLE="title"
# to create a new post with a particular title:
# make new TITLE="cool new stats thing I'd like to share"
new:
	Rscript -e 'blogdown::new_post(title="\"$(TITLE)\"", author="Shamindra Shrotriya", categories=c("data-science", "stats"), date=Sys.Date(), tags=NULL, rmd=TRUE)'
