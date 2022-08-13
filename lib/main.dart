import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:graphql_example_rick/graphql/queries.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  final HttpLink httpLink = HttpLink('https://rickandmortyapi.com/graphql');

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(),
      link: httpLink,
    ),
  );
  runApp(
    GraphQLProvider(
      client: client,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Query(
        builder: (QueryResult result,
            {Future<QueryResult> Function(FetchMoreOptions)? fetchMore,
            Future<QueryResult?> Function()? refetch}) {
          if (result.hasException) {
            return Center(
              child: Text(result.exception.toString()),
            );
          }

          if (result.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final model = QuerygetAllCharacters.fromJson(result.data!);
          print('ddd: ${model.characters!.results![0]!.name}');

          return ListView.builder(
              // controller: _scrollController,
              itemCount: model.characters!.results!.length,
              itemBuilder: (context, index) {
                final character = model.characters!.results![index];
                return GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => CharacterDetailsPage(
                    //       id: character['id'],
                    //     )));

                    // hello ssh-keygen -t rsa -b 4096 -C " abbbos166@gmail.com "
                  },
                  child: SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 100,
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          child: Image.network(character!.image!),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('name: ${character.name}'),
                            Text('id: ${character.id}'),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        options: QueryOptions(
          document: gql(r"""
                  query getAllCharacters{
                      characters{
                          results{
                              id
                              name
                              image
                          }
                      }
                  }
        """),
        ),
      ),
    );
  }
}
