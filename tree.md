.
├── config
│   ├── config.exs
│   ├── dev.exs
│   ├── prod.exs
│   └── test.exs
├── docs
│   ├── 00-index.md
│   ├── 01-getting-started.md
│   ├── 02-architecture.md
│   ├── 02-tasks.md
│   ├── 03-domain-model.md
│   ├── 04-cqrs-pattern.md
│   ├── 05-api-reference.md
│   ├── 06-deployment.md
│   ├── 07-testing.md
│   ├── 08-performance.md
│   ├── 09-troubleshooting.md
│   ├── DELIVERY_SUMMARY.md
│   ├── DOCUMENTATION_GUIDELINES.md
│   ├── EXECUTIVE_SUMMARY.md
│   ├── PROJECT.md
│   ├── README.md
│   ├── START_HERE.md
│   ├── advanced_rules.md
│   ├── archive_conversation.md
│   ├── roadmap.md
│   └── ui
│       ├── 00-index.md
│       ├── 01-colors.md
│       ├── 02-typography.md
│       ├── 03-components.md
│       └── rules-atomic-design-system.md
├── lib
│   ├── chess_server
│   │   ├── app.ex
│   │   ├── application.ex
│   │   ├── domain
│   │   │   ├── aggregates
│   │   │   │   └── game.ex
│   │   │   ├── board.ex
│   │   │   ├── commands
│   │   │   │   ├── create_game.ex
│   │   │   │   └── make_move.ex
│   │   │   ├── events
│   │   │   │   ├── game_created.ex
│   │   │   │   ├── game_finished.ex
│   │   │   │   └── move_made.ex
│   │   │   ├── game_state.ex
│   │   │   ├── logic
│   │   │   │   ├── check_validator.ex
│   │   │   │   └── game_rules.ex
│   │   │   ├── move.ex
│   │   │   ├── move_validator.ex
│   │   │   ├── piece.ex
│   │   │   └── position.ex
│   │   ├── event_store.ex
│   │   ├── infrastructure
│   │   │   ├── projections
│   │   │   │   └── game.ex
│   │   │   └── projectors
│   │   │       └── game_projector.ex
│   │   ├── repo.ex
│   │   └── router.ex
│   ├── chess_server_web
│   │   ├── controllers
│   │   │   ├── fallback_controller.ex
│   │   │   ├── game_controller.ex
│   │   │   └── game_json.ex
│   │   ├── endpoint.ex
│   │   ├── error_json.ex
│   │   ├── gettext.ex
│   │   ├── router.ex
│   │   └── telemetry.ex
│   └── chess_server_web.ex
├── mix.exs
├── mix.lock
├── priv
│   ├── repo
│   │   └── migrations
│   │       └── 20231027120000_create_games.exs
│   └── static
│       ├── css
│       │   └── style.css
│       ├── index.html
│       └── js
│           └── app.js
├── test
│   ├── chess_server
│   │   ├── domain
│   │   │   ├── aggregates
│   │   │   │   └── game_test.exs
│   │   │   ├── board_test.exs
│   │   │   ├── logic
│   │   │   │   ├── check_validator_test.exs
│   │   │   │   ├── fifty_move_rule_test.exs
│   │   │   │   └── game_rules_test.exs
│   │   │   ├── move_validator_advanced_test.exs
│   │   │   └── move_validator_test.exs
│   │   └── infrastructure
│   │       └── projectors
│   │           └── game_projector_test.exs
│   ├── support
│   │   └── data_case.ex
│   └── test_helper.exs
└── tree.md

30 directories, 76 files
