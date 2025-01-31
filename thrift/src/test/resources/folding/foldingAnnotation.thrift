<fold text='/*...*/'>/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */</fold>

typedef list<i32> ( cpp.template = "std::list" ) int_linked_list

struct foo <fold text='{...}'>{
  1: i32 bar ( presence = "required" );
  2: i32 baz ( presence = "manual", cpp.use_pointer = "", );
  3: i32 qux;
  4: i32 bop;
}</fold> <fold text='(...)'>(
  cpp.type = "DenseFoo",
  python.type = "DenseFoo",
  java.final = "",
  annotation.without.value,
)</fold>

exception foo_error <fold text='{...}'>{
  1: i32 error_code ( foo="bar" )
  2: string error_msg
}</fold> (foo = "bar")

typedef string ( unicode.encoding = "UTF-16" ) non_latin_string (foo="bar")
typedef list< double ( cpp.fixed_point = "16" ) > tiny_float_list

enum weekdays <fold text='{...}'>{
  SUNDAY ( weekend = "yes" ),
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY ( weekend = "yes" )
}</fold> (foo.bar="baz")

struct ostr_default <fold text='{...}'>{
  1: i32 bar;
}</fold>

struct ostr_custom <fold text='{...}'>{
  1: i32 bar;
}</fold> (cpp.customostream)


service foo_service <fold text='{...}'>{
  void foo() ( foo = "bar" )
}</fold> (a.b="c")

service deprecate_everything <fold text='{...}'>{
  void Foo( ) ( deprecated = "This method has neither 'x' nor \"y\"" )
  void Bar( ) ( deprecated = "Fails to deliver 中文 колбаса" )
  void Baz( ) ( deprecated = "Need this to work with tabs (\t) or Umlauts (äöüÄÖÜß) too" )
  void Deprecated() ( deprecated ) // no comment
}</fold>
]]
Expected [[<fold text='/*...*/'>/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements. See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership. The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */</fold>

typedef list<i32> ( cpp.template = "std::list" ) int_linked_list

struct foo <fold text='{...}'>{
  1: i32 bar ( presence = "required" );
  2: i32 baz ( presence = "manual", cpp.use_pointer = "", );
  3: i32 qux;
  4: i32 bop;
}</fold> <fold text='(...)'>(
  cpp.type = "DenseFoo",
  python.type = "DenseFoo",
  java.final = "",
  annotation.without.value,
)</fold>

exception foo_error <fold text='{...}'>{
  1: i32 error_code ( foo="bar" )
  2: string error_msg
}</fold> (foo = "bar")

typedef string ( unicode.encoding = "UTF-16" ) non_latin_string (foo="bar")
typedef list< double ( cpp.fixed_point = "16" ) > tiny_float_list

enum weekdays <fold text='{...}'>{
  SUNDAY ( weekend = "yes" ),
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  THURSDAY,
  FRIDAY,
  SATURDAY ( weekend = "yes" )
}</fold> (foo.bar="baz")

struct ostr_default <fold text='{...}'>{
  1: i32 bar;
}</fold>

struct ostr_custom <fold text='{...}'>{
  1: i32 bar;
}</fold> (cpp.customostream)


service foo_service <fold text='{...}'>{
  void foo() ( foo = "bar" )
}</fold> (a.b="c")

service deprecate_everything <fold text='{...}'>{
  void Foo( ) ( deprecated = "This method has neither 'x' nor \"y\"" )
  void Bar( ) ( deprecated = "Fails to deliver 中文 колбаса" )
  void Baz( ) ( deprecated = "Need this to work with tabs (\t) or Umlauts (äöüÄÖÜß) too" )
  void Deprecated() ( deprecated ) // no comment
}</fold>