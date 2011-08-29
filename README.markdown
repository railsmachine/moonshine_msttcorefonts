# Moonshine::Msttcorefonts

## Introduction

Welcome to Moonshine::Msttcorefonts, a [Moonshine](http://github.com/railsmachine/moonshine) plugin for installing and managing [msttcorefonts](http://corefonts.sourceforge.net/).  This package is commonly needed when using Prince XML ([moonshine_prince](https://github.com/railsmachine/moonshine_prince))

Here's some quick links:

 * [Homepage](http://github.com/railsmachine/moonshine_msttcorefonts)
 * [Issues](http://github.com/railsmachine/moonshine_msttcorefonts/issues) 
 * [Wiki](http://github.com/railsmachine/moonshine_msttcorefonts/wiki) 
 * Resources for using Msttcorefonts:
   * [Msttcorefonts Homepage](https://github.com/railsmachine/moonshine_prince)

## Quick Start

Moonshine::Msttcorefonts is installed as a Rails plugin:

    # Rails 2.x.x
    script/plugin install git://github.com/railsmachine/moonshine_msttcorefonts.git
    # Rails 3.x.x
    script/rails plugin install git://github.com/railsmachine/moonshine_msttcorefonts.git

Once it's installed, you can include it in your manifest:

    # app/manifests/application_manifest.rb
    class ApplicationManifest < Moonshine::Manifest:Rails

       # other recipes and configuration omitted

       # tell ApplicationManifest to use the msttcorefonts recipe
       recipe :msttcorefonts
    end

## Configuration Options

This plugin does not currently need any configuration options.