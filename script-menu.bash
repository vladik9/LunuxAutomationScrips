#!/bin/bash

# Make all script files executable
sudo chmod +x ./scripts/*.bash

# Function to check if a script exists and is executable
function check_script {
    local script_name="$1"
    if [[ -x "$script_name" ]]; then
        return 0
    else
        echo "Script $script_name not found or not executable."
        return 1
    fi
}

# Function to execute a script
function execute_script {
    local script_name="$1"
    local script_path="./scripts/$script_name"
    if check_script "$script_path"; then
        echo "Executing $script_path..."
        "$script_path"
    else
        echo "Script $script_name cannot be executed."
    fi
}

# Define an associative array to map menu choices to script filenames
declare -A script_map=(
    [1]="alacarte.bash"
    [2]="dropbox.bash"
    [3]="htop.bash"
    [4]="nodejs.bash"
    [5]="slack.bash"
    [6]="vlc.bash"
    [7]="breaktime.bash"
    [8]="filezilla.bash"
    [9]="java.bash"
    [10]="npm.bash"
    [11]="spotify.bash"
    [12]="vs-code.bash"
    [13]="compass.bash"
    [14]="flameshot.bash"
    [15]="mysql-workbench.bash"
    [16]="postman.bash"
    [17]="sublime-text.bash"
    [18]="warp.bash"
    [19]="discord.bash"
    [20]="git.bash"
    [21]="neofetch.bash"
    [22]="python.bash"
    [23]="telegram.bash"
    [24]="wget.bash"
    [25]="docker.bash"
    [26]="google-chrome.bash"
    [27]="net-tools.bash"
    [28]="qbittorrent.bash"
    [29]="terminator.bash"
    [30]="all.bash"
)

# Function to display the menu
function display_menu {
    echo "################################################"
    echo "Welcome to Scripts Menu"
    echo "Please choose an option:"
    local i=1
    for script in "${!script_map[@]}"; do
        echo "$i. ${script_map[$script]}"
        ((i++))
    done
    echo "################################################"
}

# Function to install all scripts
function install_all {
    for script in "${script_map[@]}"; do
        local script_path="./scripts/$script"
        if [[ -f "$script_path" ]]; then
            echo "Installing $script..."
            chmod +x "$script_path"
        else
            echo "Script $script not found in ./scripts directory."
        fi
    done
    echo "All scripts have been installed."
}

# Display the menu and get user input
display_menu
read -p "Enter your choice: " choice

# Execute the chosen action
case "$choice" in
    1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29)
        script_name="${script_map[$choice]}"
        execute_script "$script_name"
        ;;
    30)
        install_all
        ;;
    *)
        echo "Invalid choice. Please select a valid option from the menu."
        ;;
esac
