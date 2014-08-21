# Vim setup
[Ref](http://mirnazim.org/writings/vim-plugins-i-use/)

Always use Pathogen

   33  git config --global user.email "optixlab@gmail.com"
   34  git config --global user.name "Yashesh A. Shroff"
   27  git clone git://github.com/tpope/vim-pathogen.git pathogen
   28  mv pathogen/autoload/ .vim/autoload
   29  cd .vim
   30  git init
   31  git add .
   35  git commit -m "Initial commit with pathogen"
   36  vi .vimrc
    call pathogen#runtime_append_all_bundles()
    call pathogen#helptags()

That is all needed for Vim setup with pathogen. 
Move all plugins to their own directories. 
Example:

   37  mkdir bundle
This command clones the git repository to the submodule path whilst instructing the repository to treat the path as a submodule.
   38  git submodule add git://github.com/tpope/vim-fugitive.git bundle/fugitive
   40  git status
   41  cat .gitmodules

   In other machines: 
     Clone git repository to home directory on new machine.
     git clone git://github.com/optixlab/dotvim
     cd ~/.vim
     git pull
     Create symbolic links for vimrc and gvimrc files as instructed in README.md

   Any new commands on the original machines can be made
   git add .
   git commit -m "change log"
   git push

   Other machine
     cd ~/.vim
     git pull

   To sync plugins, on other machine cd to .vim/:
     git submodule init && git submodule update

   Shows changes to be committed and .gitmodules contains submodule information.
Note: git submodule init and git submodule update need to be run every time a new submodule is added. git submodule foreach git pull command is used to pull latest upstream changes.

3. DelimitMate: Intelligent autocomplete for quotes, etc.

   45  git submodule add git://github.com/Raimondi/delimitMate.git bundle/delimitmate
   47  git submodule init && git submodule update

4. CloseTag: Intelligently close HTML tags

   56  git submodule add git://github.com/docunext/closetag.vim.git bundle/closetag
   57  git submodule init && git submodule update

5. Pyflakes: Liniting for python files


7. SuperTab: Word completion on steroids

   66  git submodule add git://github.com/vim-scripts/supertab.git bundle/supertab
   67  git submodule init && git submodule update

8. Fugitive: Git integration

   68  git submodule add git://github.com/tpope/vim-fugitive.git bundle/fugitive
   72  git submodule init && git submodule update

9. Tagbar: Awesome source code

   69  git submodule add git://github.com/majutsushi/tagbar.git bundle/tagbar
   72  git submodule init && git submodule update

10. Solarized Colorscheme

   71  git submodule add  git://github.com/altercation/vim-colors-solarized.git bundle/solarized
   72  git submodule init && git submodule update

   export TERM="xterm-256color"

   In .vimrc:
       set background=dark
       let g:solarized_termtrans=1
       let g:solarized_termcolors=256
       let g:solarized_contrast="high"
       let g:solarized_visibility="high"
       colorscheme solarized

	Solarized prefers that the terminal also use Solarized palettes. 
	See the homepage for details.

11. jedi-vim auto complete

	73 git submodule add git://github.com/davidhalter/jedi-vim.git bundle/jedi-vim
	74 git remote set-url origin git@github.com:my_user_name/my_repo.git

## Git Push from Lubuntu:

	Pushing from lubuntu gave error. Apparently, git does not allow push over git 
	protocol. Need to change the URL of the origin:
	git remote set-url origin git@github.com:my_user_name/my_repo.git

	My solution:
	  git remote set-url origin https://github.com/optixlab/dotvim.git

### [TutsPlus](https://www.youtube.com/playlist?list=PL036A7DC4BB7CA694)

12. sparkup

	Zen coding for HTML. Usage:

  Use CTRL-N / P for next previous
	` html > head < body > div#container { Some content } 
	` nav > ul > li*4 > a[href][target=_blank] {Some link}`
	`header > ul < + div#content { My Content } + footer > div#footer { My footer }`
  `div#container > header > h1 { My Site } < + div#content { My Content } + footer > div#footer { My footer }`
	Press `CLTL-e`

	75 git submodule add git://github.com/rstacruz/sparkup.git bundle/sparkup
  76 git submodule init && git submodule update

13. Easy Motion

	77 git submodule add git://github.com/Lokaltog/vim-easymotion bundle/easymotion
  78 git submodule init && git submodule update
  
  Uses modifier key <leader>w (in my .vimrc case that is a comma)
	Ex. ,w[Switch]C <-- C for change. [Switch] color coded letters will show up.

14. NERDTree

	Replacement for file explorer

	
	79 git submodule add git://github.com/scrooloose/nerdtree.git bundle/nerdtree
  80 git submodule init && git submodule update

	```
	:NERDTree
	? to toggle help
	o to open, enter to open
	s in splitmode
	cd: change to selected directory
	C will only show the selected directory
	:pwd 
	:Bookmark django # set bookmarks
	```
15. Snipmate

	For all types of macros

	git msanders/snipmate.git


