deploy: ## Deploy posts
	git submodule update -i
	hugo
	mkdir -p tmp && cd tmp && git clone git@github.com:maruhachi/maruhachi.github.io.git
	rm -fr $(GITHUB_DIR)/*
	cp -fr public/* $(GITHUB_DIR)/
	cd $(GITHUB_DIR)/ && git config --local user.name maruhachi && git config --local user.email konchan1129@gmail.com
	cd $(GITHUB_DIR)/ && git add . && git commit -m "publish" && git push origin master
	rm -fr $(GITHUB_DIR)
