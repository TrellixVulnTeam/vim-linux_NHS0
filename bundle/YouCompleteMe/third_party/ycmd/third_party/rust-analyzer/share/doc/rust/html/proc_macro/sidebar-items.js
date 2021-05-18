initSidebarItems({"enum":[["Delimiter","Describes how a sequence of token trees is delimited."],["Level","An enum representing a diagnostic level."],["Spacing","Whether an `Punct` is followed immediately by another `Punct` or followed by another token or whitespace."],["TokenTree","A single token or a delimited sequence of token trees (e.g., `[1, (), ..]`)."]],"fn":[["is_available","Determines whether proc_macro has been made accessible to the currently running program."],["quote","Quote a `TokenStream` into a `TokenStream`. This is the actual implementation of the `quote!()` proc macro."],["quote_span","Quote a `Span` into a `TokenStream`. This is needed to implement a custom quoter."]],"macro":[["quote","`quote!(..)` accepts arbitrary tokens and expands into a `TokenStream` describing the input. For example, `quote!(a + b)` will produce a expression, that, when evaluated, constructs the `TokenStream` `[Ident(\"a\"), Punct('+', Alone), Ident(\"b\")]`."]],"mod":[["token_stream","Public implementation details for the `TokenStream` type, such as iterators."],["tracked_env","Tracked access to environment variables."]],"struct":[["Diagnostic","A structure representing a diagnostic message and associated children messages."],["Group","A delimited token stream."],["Ident","An identifier (`ident`)."],["LexError","Error returned from `TokenStream::from_str`."],["LineColumn","A line-column pair representing the start or end of a `Span`."],["Literal","A literal string (`\"hello\"`), byte string (`b\"hello\"`), character (`'a'`), byte character (`b'a'`), an integer or floating point number with or without a suffix (`1`, `1u8`, `2.3`, `2.3f32`). Boolean literals like `true` and `false` do not belong here, they are `Ident`s."],["Punct","An `Punct` is an single punctuation character like `+`, `-` or `#`."],["SourceFile","The source file of a given `Span`."],["Span","A region of source code, along with macro expansion information."],["TokenStream","The main type provided by this crate, representing an abstract stream of tokens, or, more specifically, a sequence of token trees. The type provide interfaces for iterating over those token trees and, conversely, collecting a number of token trees into one stream."]],"trait":[["MultiSpan","Trait implemented by types that can be converted into a set of `Span`s."]]});