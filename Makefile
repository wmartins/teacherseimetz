build:
	npm run build

dev:
	npm run dev

publish: build
	git checkout public
	git rm $$(git ls-files -- ':!.gitignore')
	cp -R out/* ./
	echo "" > .nojekyll
	git add .
	@echo "Ready to commit and push"
