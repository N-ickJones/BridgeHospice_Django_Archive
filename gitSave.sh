env=$1
commit=$2

if [[ $env == "prod" ]]; then
    echo "environment: production"
elif [[ $env == "dev" ]]; then
    echo "environment: development"
else
    read -p "Select an environment (dev|prod): " env
    if [[ $env != "dev" && $env != "prod" ]]; then
        echo "Invalid environment selected."
        exit 1
    fi
fi

# Save the database
echo "Saving the database..."
if docker-compose -f $env.yml exec web python manage.py dumpdata > app/fixtures/all.json; then
     echo "Database saved successfully."
else
     echo "Failed to save the database."
     exit 1
fi

# Change to application directory
if cd app; then
    echo "Changing to application directory"
else
    echo "Unable to find application directory"
    exit 1
fi

# Add local changes
echo "Adding changes to local repository..."
if git add .; then
    echo "Local changes added."
else
    echo "Unable to add local changes."
    exit 1
fi

# if commit description not specified request it
if [[ -z $commit ]]; then
    read -p "Enter a commit description: " commit
fi

# Commit local changes
echo "Commiting local changes"
if git commit -am "$commit"; then
    echo "Local changes '$commit' committed."
else
    echo "Unable to commit '$commit.'"
    exit 1
fi

# Push changes to master branch
if git push origin master; then
    echo "Changes pushed successfully to the master branch"
else
    echo "Unable to push local changes to master branch."
    exit 1
fi


