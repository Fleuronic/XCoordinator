
# Preparation

cd "$( dirname "$0" )"

# Execution

./docs.sh

if [ -z "$(git status --untracked-files=no --porcelain)" ]; then 
    exit 0
else
    echo "$(git status)\n$(git diff)"
    exit 1
fi
