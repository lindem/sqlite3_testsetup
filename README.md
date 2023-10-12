# Sqlite3Testsetup

This project is a demo for the elixirforum thread [here](https://elixirforum.com/t/sqlite3-workaround-for-the-testing-sandbox/58915)

This project was generated like this:

```sh
mix phx.new --database sqlite3 --live sqlite3_testsetup
cd sqlite3_testsetup
# create some entity in the db with associated liveviews
mix phx.gen.live Things Thing thing thingvalue:integer thingdescription:string
# copy routes into router.ex
mix test
```

## Versions used

```
Linux aphelion 5.15.0-86-generic #96-Ubuntu SMP Wed Sep 20 08:23:49 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
SQLite version 3.37.2 2022-01-06 13:25:41
Erlang/OTP 25 [erts-13.0.4] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit:ns]

Elixir 1.15.4 (compiled with Erlang/OTP 25)
```

_(package versions are visible in `mix.exs`)_

## Log of the test failure

```
lindem@aphelion: ~/git/sqlite3_testsetup [main ✔] $ mix test
....

  1) test Index updates thing in listing (Sqlite3TestsetupWeb.ThingLiveTest)
     test/sqlite3_testsetup_web/live/thing_live_test.exs:49
     ** (ArgumentError) selector "#thing-1 a" did not return any element within: 
     
         <div data-phx-main="data-phx-main" data-phx-session="SFMyNTY.g2gDaAJhBXQAAAAIZAACaWRtAAAAFHBoeC1GNDFqTFhmYVB6MkdOd0NIZAAMbGl2ZV9zZXNzaW9uaAJkAAdkZWZhdWx0bggAugUh8CZjjRdkAApwYXJlbnRfcGlkZAADbmlsZAAIcm9vdF9waWRkAANuaWxkAAlyb290X3ZpZXdkACpFbGl4aXIuU3FsaXRlM1Rlc3RzZXR1cFdlYi5UaGluZ0xpdmUuSW5kZXhkAAZyb3V0ZXJkACFFbGl4aXIuU3FsaXRlM1Rlc3RzZXR1cFdlYi5Sb3V0ZXJkAAdzZXNzaW9udAAAAABkAAR2aWV3ZAAqRWxpeGlyLlNxbGl0ZTNUZXN0c2V0dXBXZWIuVGhpbmdMaXZlLkluZGV4bgYAhsBVJIsBYgABUYA.Cem5vok91eaj-UNxFYrWrW2FihFwvbemXjo5XGesvf4" data-phx-static="SFMyNTY.g2gDaAJhBXQAAAADZAAKYXNzaWduX25ld2wAAAABZAAHc3RyZWFtc2pkAAVmbGFzaHQAAAAAZAACaWRtAAAAFHBoeC1GNDFqTFhmYVB6MkdOd0NIbgYAisBVJIsBYgABUYA.y1I8cOfATZkwdqekLqChK2ENJltwkEADIeuGosfDGt0" id="phx-F41jLXfaPz2GNwCH"><header class="px-4 sm:px-6 lg:px-8"><div class="flex items-center justify-between border-b border-zinc-100 py-3 text-sm"><div class="flex items-center gap-4"><a href="/"><img src="/images/logo.svg" width="36"/></a><p class="bg-brand/5 text-brand rounded-full px-2 font-medium leading-6">
                v1.7.9
              </p></div><div class="flex items-center gap-4 font-semibold leading-6 text-zinc-900"><a href="https://twitter.com/elixirphoenix" class="hover:text-zinc-700">
                @elixirphoenix
              </a><a href="https://github.com/phoenixframework/phoenix" class="hover:text-zinc-700">
                GitHub
              </a><a href="https://hexdocs.pm/phoenix/overview.html" class="rounded-lg bg-zinc-100 px-2 py-1 hover:bg-zinc-200/80">
                Get Started <span aria-hidden="true">→</span></a></div></div></header><main class="px-4 py-20 sm:px-6 lg:px-8"><div class="mx-auto max-w-2xl"><div id="client-error" phx-click="[[&quot;push&quot;,{&quot;event&quot;:&quot;lv:clear-flash&quot;,&quot;value&quot;:{&quot;key&quot;:&quot;error&quot;}}],[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#client-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]" role="alert" class="fixed top-2 right-2 w-80 sm:w-96 z-50 rounded-lg p-3 ring-1 bg-rose-50 text-rose-900 shadow-md ring-rose-500 fill-rose-900" hidden="hidden" phx-connected="[[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#client-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]" phx-disconnected="[[&quot;show&quot;,{&quot;display&quot;:null,&quot;time&quot;:200,&quot;to&quot;:&quot;.phx-client-error #client-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-out&quot;,&quot;duration-300&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;]]}]]"><p class="flex items-center gap-1.5 text-sm font-semibold leading-6"><span class="hero-exclamation-circle-mini h-4 w-4"></span>
            We can&#39;t find the internet
          </p><p class="mt-2 text-sm leading-5">
          Attempting to reconnect <span class="hero-arrow-path ml-1 h-3 w-3 animate-spin"></span></p><button type="button" class="group absolute top-1 right-1 p-2" aria-label="close"><span class="hero-x-mark-solid h-5 w-5 opacity-40 group-hover:opacity-70"></span></button></div><div id="server-error" phx-click="[[&quot;push&quot;,{&quot;event&quot;:&quot;lv:clear-flash&quot;,&quot;value&quot;:{&quot;key&quot;:&quot;error&quot;}}],[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#server-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]" role="alert" class="fixed top-2 right-2 w-80 sm:w-96 z-50 rounded-lg p-3 ring-1 bg-rose-50 text-rose-900 shadow-md ring-rose-500 fill-rose-900" hidden="hidden" phx-connected="[[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#server-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]" phx-disconnected="[[&quot;show&quot;,{&quot;display&quot;:null,&quot;time&quot;:200,&quot;to&quot;:&quot;.phx-server-error #server-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-out&quot;,&quot;duration-300&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;]]}]]"><p class="flex items-center gap-1.5 text-sm font-semibold leading-6"><span class="hero-exclamation-circle-mini h-4 w-4"></span>
            Something went wrong!
          </p><p class="mt-2 text-sm leading-5">
          Hang in there while we get back on track
          <span class="hero-arrow-path ml-1 h-3 w-3 animate-spin"></span></p><button type="button" class="group absolute top-1 right-1 p-2" aria-label="close"><span class="hero-x-mark-solid h-5 w-5 opacity-40 group-hover:opacity-70"></span></button></div><header class="flex items-center justify-between gap-6"><div><h1 class="text-lg font-semibold leading-8 text-zinc-800">
              
          Listing Thing
          
            </h1></div><div class="flex-none"><a href="/thing/new" data-phx-link="patch" data-phx-link-state="push"><button class="phx-submit-loading:opacity-75 rounded-lg bg-zinc-900 hover:bg-zinc-700 py-2 px-3 text-sm font-semibold leading-6 text-white active:text-white/80 ">
          New Thing
        </button></a></div></header><div class="overflow-y-auto px-4 sm:overflow-visible sm:px-0"><table class="w-[40rem] mt-11 sm:w-full"><thead class="text-sm text-left leading-6 text-zinc-500"><tr><th class="p-0 pr-6 pb-4 font-normal">Thingvalue</th><th class="p-0 pr-6 pb-4 font-normal">Thingdescription</th><th class="relative p-0 pb-4"><span class="sr-only">Actions</span></th></tr></thead><tbody id="thing" phx-update="stream" class="relative divide-y divide-zinc-100 border-t border-zinc-200 text-sm leading-6 text-zinc-700"><tr id="thing_collection-1" class="group hover:bg-zinc-50" data-phx-stream="0"><td phx-click="[[&quot;navigate&quot;,{&quot;href&quot;:&quot;/thing/1&quot;,&quot;replace&quot;:false}]]" class="relative p-0 hover:cursor-pointer"><div class="block py-4 pr-6"><span class="absolute -inset-y-px right-0 -left-4 group-hover:bg-zinc-50 sm:rounded-l-xl"></span><span class="relative font-semibold text-zinc-900">
                      42
                    </span></div></td><td phx-click="[[&quot;navigate&quot;,{&quot;href&quot;:&quot;/thing/1&quot;,&quot;replace&quot;:false}]]" class="relative p-0 hover:cursor-pointer"><div class="block py-4 pr-6"><span class="absolute -inset-y-px right-0 -left-4 group-hover:bg-zinc-50 sm:rounded-l-xl"></span><span class="relative ">
                      some thingdescription
                    </span></div></td><td class="relative w-14 p-0"><div class="relative whitespace-nowrap py-4 text-right text-sm font-medium"><span class="absolute -inset-y-px -right-4 left-0 group-hover:bg-zinc-50 sm:rounded-r-xl"></span><span class="relative ml-4 font-semibold leading-6 text-zinc-900 hover:text-zinc-700"><div class="sr-only"><a href="/thing/1" data-phx-link="redirect" data-phx-link-state="push">Show</a></div><a href="/thing/1/edit" data-phx-link="patch" data-phx-link-state="push">Edit</a></span><span class="relative ml-4 font-semibold leading-6 text-zinc-900 hover:text-zinc-700"><a href="#" data-confirm="Are you sure?" phx-click="[[&quot;push&quot;,{&quot;event&quot;:&quot;delete&quot;,&quot;value&quot;:{&quot;id&quot;:1}}],[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#thing_collection-1&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]">
              Delete
            </a></span></div></td></tr></tbody></table></div></div></main></div>
     
     code: assert index_live |> element("#thing-#{thing.id} a", "Edit") |> render_click() =~
     stacktrace:
       (phoenix_live_view 0.19.5) lib/phoenix_live_view/test/live_view_test.ex:1051: Phoenix.LiveViewTest.call/2
       test/sqlite3_testsetup_web/live/thing_live_test.exs:52: (test)

.

  2) test Index deletes thing in listing (Sqlite3TestsetupWeb.ThingLiveTest)
     test/sqlite3_testsetup_web/live/thing_live_test.exs:72
     ** (ArgumentError) selector "#thing-1 a" did not return any element within: 
     
         <div data-phx-main="data-phx-main" data-phx-session="SFMyNTY.g2gDaAJhBXQAAAAIZAACaWRtAAAAFHBoeC1GNDFqTFlqOTFOanI4QUJsZAAMbGl2ZV9zZXNzaW9uaAJkAAdkZWZhdWx0bggAugUh8CZjjRdkAApwYXJlbnRfcGlkZAADbmlsZAAIcm9vdF9waWRkAANuaWxkAAlyb290X3ZpZXdkACpFbGl4aXIuU3FsaXRlM1Rlc3RzZXR1cFdlYi5UaGluZ0xpdmUuSW5kZXhkAAZyb3V0ZXJkACFFbGl4aXIuU3FsaXRlM1Rlc3RzZXR1cFdlYi5Sb3V0ZXJkAAdzZXNzaW9udAAAAABkAAR2aWV3ZAAqRWxpeGlyLlNxbGl0ZTNUZXN0c2V0dXBXZWIuVGhpbmdMaXZlLkluZGV4bgYAk8FVJIsBYgABUYA.kg1i-pSEzEtLf9wlsrQAFOpIn_zbfJV3Ud1F_D1Z6lU" data-phx-static="SFMyNTY.g2gDaAJhBXQAAAADZAAKYXNzaWduX25ld2wAAAABZAAHc3RyZWFtc2pkAAVmbGFzaHQAAAAAZAACaWRtAAAAFHBoeC1GNDFqTFlqOTFOanI4QUJsbgYAk8FVJIsBYgABUYA.GPdZlaiHuWhcuGtgl42ofsVwQe9wqryY7tNZWzxglE0" id="phx-F41jLYj91Njr8ABl"><header class="px-4 sm:px-6 lg:px-8"><div class="flex items-center justify-between border-b border-zinc-100 py-3 text-sm"><div class="flex items-center gap-4"><a href="/"><img src="/images/logo.svg" width="36"/></a><p class="bg-brand/5 text-brand rounded-full px-2 font-medium leading-6">
                v1.7.9
              </p></div><div class="flex items-center gap-4 font-semibold leading-6 text-zinc-900"><a href="https://twitter.com/elixirphoenix" class="hover:text-zinc-700">
                @elixirphoenix
              </a><a href="https://github.com/phoenixframework/phoenix" class="hover:text-zinc-700">
                GitHub
              </a><a href="https://hexdocs.pm/phoenix/overview.html" class="rounded-lg bg-zinc-100 px-2 py-1 hover:bg-zinc-200/80">
                Get Started <span aria-hidden="true">→</span></a></div></div></header><main class="px-4 py-20 sm:px-6 lg:px-8"><div class="mx-auto max-w-2xl"><div id="client-error" phx-click="[[&quot;push&quot;,{&quot;event&quot;:&quot;lv:clear-flash&quot;,&quot;value&quot;:{&quot;key&quot;:&quot;error&quot;}}],[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#client-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]" role="alert" class="fixed top-2 right-2 w-80 sm:w-96 z-50 rounded-lg p-3 ring-1 bg-rose-50 text-rose-900 shadow-md ring-rose-500 fill-rose-900" hidden="hidden" phx-connected="[[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#client-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]" phx-disconnected="[[&quot;show&quot;,{&quot;display&quot;:null,&quot;time&quot;:200,&quot;to&quot;:&quot;.phx-client-error #client-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-out&quot;,&quot;duration-300&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;]]}]]"><p class="flex items-center gap-1.5 text-sm font-semibold leading-6"><span class="hero-exclamation-circle-mini h-4 w-4"></span>
            We can&#39;t find the internet
          </p><p class="mt-2 text-sm leading-5">
          Attempting to reconnect <span class="hero-arrow-path ml-1 h-3 w-3 animate-spin"></span></p><button type="button" class="group absolute top-1 right-1 p-2" aria-label="close"><span class="hero-x-mark-solid h-5 w-5 opacity-40 group-hover:opacity-70"></span></button></div><div id="server-error" phx-click="[[&quot;push&quot;,{&quot;event&quot;:&quot;lv:clear-flash&quot;,&quot;value&quot;:{&quot;key&quot;:&quot;error&quot;}}],[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#server-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]" role="alert" class="fixed top-2 right-2 w-80 sm:w-96 z-50 rounded-lg p-3 ring-1 bg-rose-50 text-rose-900 shadow-md ring-rose-500 fill-rose-900" hidden="hidden" phx-connected="[[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#server-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]" phx-disconnected="[[&quot;show&quot;,{&quot;display&quot;:null,&quot;time&quot;:200,&quot;to&quot;:&quot;.phx-server-error #server-error&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-out&quot;,&quot;duration-300&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;]]}]]"><p class="flex items-center gap-1.5 text-sm font-semibold leading-6"><span class="hero-exclamation-circle-mini h-4 w-4"></span>
            Something went wrong!
          </p><p class="mt-2 text-sm leading-5">
          Hang in there while we get back on track
          <span class="hero-arrow-path ml-1 h-3 w-3 animate-spin"></span></p><button type="button" class="group absolute top-1 right-1 p-2" aria-label="close"><span class="hero-x-mark-solid h-5 w-5 opacity-40 group-hover:opacity-70"></span></button></div><header class="flex items-center justify-between gap-6"><div><h1 class="text-lg font-semibold leading-8 text-zinc-800">
              
          Listing Thing
          
            </h1></div><div class="flex-none"><a href="/thing/new" data-phx-link="patch" data-phx-link-state="push"><button class="phx-submit-loading:opacity-75 rounded-lg bg-zinc-900 hover:bg-zinc-700 py-2 px-3 text-sm font-semibold leading-6 text-white active:text-white/80 ">
          New Thing
        </button></a></div></header><div class="overflow-y-auto px-4 sm:overflow-visible sm:px-0"><table class="w-[40rem] mt-11 sm:w-full"><thead class="text-sm text-left leading-6 text-zinc-500"><tr><th class="p-0 pr-6 pb-4 font-normal">Thingvalue</th><th class="p-0 pr-6 pb-4 font-normal">Thingdescription</th><th class="relative p-0 pb-4"><span class="sr-only">Actions</span></th></tr></thead><tbody id="thing" phx-update="stream" class="relative divide-y divide-zinc-100 border-t border-zinc-200 text-sm leading-6 text-zinc-700"><tr id="thing_collection-1" class="group hover:bg-zinc-50" data-phx-stream="0"><td phx-click="[[&quot;navigate&quot;,{&quot;href&quot;:&quot;/thing/1&quot;,&quot;replace&quot;:false}]]" class="relative p-0 hover:cursor-pointer"><div class="block py-4 pr-6"><span class="absolute -inset-y-px right-0 -left-4 group-hover:bg-zinc-50 sm:rounded-l-xl"></span><span class="relative font-semibold text-zinc-900">
                      42
                    </span></div></td><td phx-click="[[&quot;navigate&quot;,{&quot;href&quot;:&quot;/thing/1&quot;,&quot;replace&quot;:false}]]" class="relative p-0 hover:cursor-pointer"><div class="block py-4 pr-6"><span class="absolute -inset-y-px right-0 -left-4 group-hover:bg-zinc-50 sm:rounded-l-xl"></span><span class="relative ">
                      some thingdescription
                    </span></div></td><td class="relative w-14 p-0"><div class="relative whitespace-nowrap py-4 text-right text-sm font-medium"><span class="absolute -inset-y-px -right-4 left-0 group-hover:bg-zinc-50 sm:rounded-r-xl"></span><span class="relative ml-4 font-semibold leading-6 text-zinc-900 hover:text-zinc-700"><div class="sr-only"><a href="/thing/1" data-phx-link="redirect" data-phx-link-state="push">Show</a></div><a href="/thing/1/edit" data-phx-link="patch" data-phx-link-state="push">Edit</a></span><span class="relative ml-4 font-semibold leading-6 text-zinc-900 hover:text-zinc-700"><a href="#" data-confirm="Are you sure?" phx-click="[[&quot;push&quot;,{&quot;event&quot;:&quot;delete&quot;,&quot;value&quot;:{&quot;id&quot;:1}}],[&quot;hide&quot;,{&quot;time&quot;:200,&quot;to&quot;:&quot;#thing_collection-1&quot;,&quot;transition&quot;:[[&quot;transition-all&quot;,&quot;transform&quot;,&quot;ease-in&quot;,&quot;duration-200&quot;],[&quot;opacity-100&quot;,&quot;translate-y-0&quot;,&quot;sm:scale-100&quot;],[&quot;opacity-0&quot;,&quot;translate-y-4&quot;,&quot;sm:translate-y-0&quot;,&quot;sm:scale-95&quot;]]}]]">
              Delete
            </a></span></div></td></tr></tbody></table></div></div></main></div>
     
     code: assert index_live |> element("#thing-#{thing.id} a", "Delete") |> render_click()
     stacktrace:
       (phoenix_live_view 0.19.5) lib/phoenix_live_view/test/live_view_test.ex:1051: Phoenix.LiveViewTest.call/2
       test/sqlite3_testsetup_web/live/thing_live_test.exs:75: (test)

............
Finished in 0.5 seconds (0.1s async, 0.4s sync)
19 tests, 2 failures

Randomized with seed 257514


```