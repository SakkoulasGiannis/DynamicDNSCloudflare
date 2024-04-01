CloudflareDNSUpdater
====================

`CloudflareDNSUpdater` is a lightweight and efficient script designed to automatically update DNS records on Cloudflare. This script is ideal for dynamic IP addresses, ensuring your domain always points to the correct IP.

Features
--------

-   Automatic DNS Updates: Automatically updates A or AAAA records for specified subdomains.
-   Easy Configuration: Simple configuration files for Cloudflare credentials and subdomains.
-   Flexibility: Works with multiple subdomains and allows for easy addition or removal.

Prerequisites
-------------

Before you begin, ensure you have the following:

-   A Cloudflare account and API key.
-   `jq` installed on your system for JSON processing.
-   `curl` installed on your system for making API requests.

Installation
------------

### Step 1: Clone the Repository

Clone this repository to your local machine using:

bashCopy code

`git clone https://github.com/yourusername/CloudflareDNSUpdater.git
cd CloudflareDNSUpdater`

### Step 2: Install `jq`

Debian/Ubuntu:

bashCopy code

`sudo apt-get update
sudo apt-get install jq`

For other operating systems, please refer to the `jq` official documentation.

### Step 3: Configuration

-   Cloudflare Credentials: Rename `cloudflare_credentials.example.txt` to `cloudflare_credentials.txt` and fill in your Cloudflare zone ID, email, and API key.

    makefileCopy code

    `ZONE_ID=your_zone_id_here
    EMAIL=your_email_here
    API_KEY=your_api_key_here`

-   Subdomains: Rename `subdomains.example.txt` to `subdomains.txt` and list each subdomain you want to update on a new line.

    Copy code

    `sub1
    sub2
    sub3`

Usage
-----

To run the script, simply execute:

bashCopy code

`./cloudflare_dns_updater.sh`

Ensure the script is executable. If not, run `chmod +x cloudflare_dns_updater.sh` to make it executable.

The script will automatically update the DNS records for the subdomains listed in `subdomains.txt` with the current public IP of the machine where the script is running.

Contributing
------------

Contributions are welcome! Please feel free to submit a pull request or open an issue for any bugs, features, or improvements.

License
-------

Distributed under the MIT License. See `LICENSE` for more information.

Acknowledgments
---------------

-   Cloudflare for their excellent API and services.
-   The creators of `jq` for making JSON processing simple.