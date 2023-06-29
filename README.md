# Captive::Api

[![License][license-image]][license-url]
[![Gem Version](https://img.shields.io/gem/v/captive-api.svg)](https://rubygems.org/gems/captive-api)


Code commun des API de Captive

## Usage
How to use my plugin.

Implementation :

```ruby
module Api
  module V1
    class BaseController < Captive::Api::ApplicationController
      ...
    end
  end
end
```

The class `Captive::Api::ApplicationController` includes 2 concerns :

| Nom du concern |  Description  |
|:-----|:--------:|
| [pagination](https://github.com/Captive-Studio/captive-api/blob/main/app/controllers/concerns/api/pagination_concern.rb) | Logique de pagination pour les index |
| [render error](https://github.com/Captive-Studio/captive-api/blob/main/app/controllers/concerns/api/render_error_concern.rb) | Attrape certaines erreurs pour retourner une page d'erreur en json. Permet aussi d'utiliser les méthodes pour rendre des pages d'erreur json manuellement |

## Installation
Add this line to your application's Gemfile:

```ruby
gem "captive-api"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install captive-api
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
