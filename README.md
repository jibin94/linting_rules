## Flutter Lints

Flutter uses the Dart analyzer tool, which includes a linter. The linter checks your source code against a list of rules and warnings about issues that might lead to problems (potential errors, deviations from recommended coding practices, code that might be hard to read or maintain), and ensures adherence to these rules.

In the context of Flutter, 'Flutter Lint' refers to the package that contains lint rules favouring Flutter-specific style and conventions and is designed to encourage Flutter developers to follow the best practices.

## Importance of Linters 
- Ensuring Code Quality 
- Facilitating Code Reviews 
- Avoiding Technical Debt 
- Identifying Possible Bugs Early 
- Ensuring Code Consistency

## Writing new linting rules:
Now let us see how we can change our settings so that we get an error message every time we use the wrong dart code format. 
- To do this we need to edit `analysis_options.yaml` the file at the project level.
- To show the error message we need to change the analyzer settings, in analyzer we will change the `error`, `warning`, `ignore`, `info` preferences of individual rules, for example `missing_required_param: error` , it will always show an error message every time you miss the required parameter.
Also, we will add the linter that will handle all the errors causing missing arguments or might improve the code quality. eg. `avoid_empty_else` this linter will show an error message whenever we will declare an empty else statement.

## Enable and disable linting rules:
We can easily enable and disable linting rules:

````
linter:

  rules:
    - always_declare_return_types: false
    - annotate_overrides: true
````

To analyze the code we need to run `dart analyzer` . in the terminal. This will list down all the warnings based on lint rules we have setup.
