deploy: ## Deploy posts
	git submodule update -i
	mkdir -p tmp && cd tmp && git clone git@github.com:maruhachi/maruhachi.github.io.git .
	ls -la
	hugo
	git config --local user.name maruhachi && git config --local user.email konchan1129@gmail.com
	git add docs/ && git commit -m "publish" && git push origin master -f
	# rm -fr $(GITHUB_DIR)
