# serverkit-atom
[Serverkit](https://github.com/r7kamura/serverkit) plug-in for [Atom](https://atom.io/).

- [Install](#install)
- [Resource](#resource)
  - [atom_package](#atom_package)
    - [Attributes](#attributes)
    - [Example](#example)

## Install
```rb
# Gemfile
gem "serverkit-atom"
```

## Resource
### atom_package
Install specified atom package.

#### Attributes
- name - package name (required)
- version - package version (optional)

#### Example
```yaml
resources:
  - type: atom_package
    name: sort-lines
  - type: atom_package
    name: vim-mode
    version: 0.43.0
```
