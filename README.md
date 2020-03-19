# Use rest_client gem to perform Bing search.

What is REST? 

>Representational State Transfer (REST) is an architectural style for web-based ?communication that permits clients to talk to servers in a unique fashion. In particular, REST represents resources within a given server as uniform resource identifiers (URIs), simplifying the implementation of REST architectures on the Hypertext Transport Protocol (HTTP).

### The Use of rest-client in combination with nokogiri to get and parse data from raw url
In this application the user gets to select the search engine "Google" or "Bing"
Search for a string and then receive an array with the links corresponding to the query.
###### Instructions to get up and running
1. clone repository
2. Make sure that you’ve got nokogiri installed,
>gem install nokogiri
3. Make sure that you’ve got Rest Client installed,
>gem install rest-client
4. In the terminal go to the root of the repository and type
>$ ruby main.rb


Documentation of the Rest-client Github repo [HERE](https://github.com/rest-client/rest-client).

Documentation of the Nokogiri parser [HERE](https://www.rubydoc.info/github/sparklemotion/nokogiri/Nokogiri/HTML/Document).

### Built With

- Ruby
- VSCode


To get a local copy up and running follow these simple example steps.

### Prerequisites
    - You need to have ***Ruby** installed on your machine ([Check this out](https://www.ruby-lang.org/en/documentation/installation/) for instructions on installing ruby)

### Usage
    To run the code go to the local folder where you have the *Ruby file* and run in the terminal `$ ruby file.rb` being 'file' the one you want to run

## Author

👤 **Dannison Arias**

- Github: [@dannisonarias](https://github.com/dannisonarias)
- Twitter: [@AriasDannison](https://twitter.com/AriasDannison)
- Linkedin: [Dannison Arias](https://www.linkedin.com/in/dannison-arias-777919190/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- The Odin Project

## 📝 License

This project is [MIT](./license.md) licensed.