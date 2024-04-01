# CloudflareDNSUpdater

`CloudflareDNSUpdater` is a lightweight and efficient script designed to automatically update DNS records on Cloudflare. This script is ideal for dynamic IP addresses, ensuring your domain always points to the correct IP.

## Features

- **Automatic DNS Updates**: Automatically updates A or AAAA records for specified subdomains.
- **Easy Configuration**: Simple configuration files for Cloudflare credentials and subdomains.
- **Flexibility**: Works with multiple subdomains and allows for easy addition or removal.

## Prerequisites

Before you begin, ensure you have the following:

- A Cloudflare account and API key.
- `jq` installed on your system for JSON processing.
- `curl` installed on your system for making API requests.

## Installation

### Step 1: Clone the Repository

Clone this repository to your local machine using:

```bash
git clone https://github.com/yourusername/CloudflareDNSUpdater.git
cd CloudflareDNSUpdater


### Step 2: Clone Install jq

```bash
sudo apt-get update
sudo apt-get install jq
