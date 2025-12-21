.
├── _build
│   ├── dev
│   │   └── lib
│   │       ├── backoff
│   │       │   ├── ebin
│   │       │   │   ├── backoff.app
│   │       │   │   └── backoff.beam
│   │       │   └── mix.rebar.config
│   │       ├── benchee
│   │       │   └── ebin
│   │       │       ├── Elixir.Benchee.Benchmark.BenchmarkConfig.beam
│   │       │       ├── Elixir.Benchee.Benchmark.Collect.Memory.beam
│   │       │       ├── Elixir.Benchee.Benchmark.Collect.Reductions.beam
│   │       │       ├── Elixir.Benchee.Benchmark.Collect.Time.beam
│   │       │       ├── Elixir.Benchee.Benchmark.Collect.beam
│   │       │       ├── Elixir.Benchee.Benchmark.FunctionCallOverhead.beam
│   │       │       ├── Elixir.Benchee.Benchmark.Hooks.beam
│   │       │       ├── Elixir.Benchee.Benchmark.RepeatedMeasurement.beam
│   │       │       ├── Elixir.Benchee.Benchmark.Runner.beam
│   │       │       ├── Elixir.Benchee.Benchmark.ScenarioContext.beam
│   │       │       ├── Elixir.Benchee.Benchmark.beam
│   │       │       ├── Elixir.Benchee.CollectionData.beam
│   │       │       ├── Elixir.Benchee.Configuration.beam
│   │       │       ├── Elixir.Benchee.Conversion.Count.beam
│   │       │       ├── Elixir.Benchee.Conversion.DeviationPercent.beam
│   │       │       ├── Elixir.Benchee.Conversion.Duration.beam
│   │       │       ├── Elixir.Benchee.Conversion.Format.beam
│   │       │       ├── Elixir.Benchee.Conversion.Memory.beam
│   │       │       ├── Elixir.Benchee.Conversion.Scale.beam
│   │       │       ├── Elixir.Benchee.Conversion.Unit.beam
│   │       │       ├── Elixir.Benchee.Conversion.beam
│   │       │       ├── Elixir.Benchee.Formatter.beam
│   │       │       ├── Elixir.Benchee.Formatters.Console.Helpers.beam
│   │       │       ├── Elixir.Benchee.Formatters.Console.Memory.beam
│   │       │       ├── Elixir.Benchee.Formatters.Console.Reductions.beam
│   │       │       ├── Elixir.Benchee.Formatters.Console.RunTime.beam
│   │       │       ├── Elixir.Benchee.Formatters.Console.beam
│   │       │       ├── Elixir.Benchee.Formatters.TaggedSave.beam
│   │       │       ├── Elixir.Benchee.Output.BenchmarkPrinter.beam
│   │       │       ├── Elixir.Benchee.Output.ProfilePrinter.beam
│   │       │       ├── Elixir.Benchee.Output.ProgressPrinter.beam
│   │       │       ├── Elixir.Benchee.PreCheckError.beam
│   │       │       ├── Elixir.Benchee.Profile.beam
│   │       │       ├── Elixir.Benchee.RelativeStatistics.beam
│   │       │       ├── Elixir.Benchee.Scenario.beam
│   │       │       ├── Elixir.Benchee.ScenarioLoader.beam
│   │       │       ├── Elixir.Benchee.Statistics.beam
│   │       │       ├── Elixir.Benchee.Suite.beam
│   │       │       ├── Elixir.Benchee.System.beam
│   │       │       ├── Elixir.Benchee.UnknownProfilerError.beam
│   │       │       ├── Elixir.Benchee.Utility.DeepConvert.beam
│   │       │       ├── Elixir.Benchee.Utility.ErlangVersion.beam
│   │       │       ├── Elixir.Benchee.Utility.FileCreation.beam
│   │       │       ├── Elixir.Benchee.Utility.Parallel.beam
│   │       │       ├── Elixir.Benchee.Utility.RepeatN.beam
│   │       │       ├── Elixir.Benchee.beam
│   │       │       ├── Elixir.DeepMerge.Resolver.Benchee.Configuration.beam
│   │       │       ├── Elixir.DeepMerge.Resolver.Benchee.Suite.beam
│   │       │       ├── Elixir.DeepMerge.Resolver.Benchee.System.beam
│   │       │       ├── benchee.app
│   │       │       └── benchee.beam
│   │       ├── bunt
│   │       │   └── ebin
│   │       │       ├── Elixir.Bunt.ANSI.Sequence.beam
│   │       │       ├── Elixir.Bunt.ANSI.beam
│   │       │       ├── Elixir.Bunt.beam
│   │       │       └── bunt.app
│   │       ├── castore
│   │       │   ├── ebin
│   │       │   │   ├── Elixir.CAStore.beam
│   │       │   │   └── castore.app
│   │       │   └── priv -> ../../../../deps/castore/priv
│   │       ├── chess_server
│   │       │   ├── consolidated
│   │       │   │   ├── Elixir.Collectable.beam
│   │       │   │   ├── Elixir.Commanded.Event.Upcaster.beam
│   │       │   │   ├── Elixir.Commanded.Serialization.JsonDecoder.beam
│   │       │   │   ├── Elixir.DBConnection.Query.beam
│   │       │   │   ├── Elixir.DeepMerge.Resolver.beam
│   │       │   │   ├── Elixir.Ecto.Queryable.beam
│   │       │   │   ├── Elixir.Enumerable.beam
│   │       │   │   ├── Elixir.Hex.Solver.Constraint.beam
│   │       │   │   ├── Elixir.IEx.Info.beam
│   │       │   │   ├── Elixir.Inspect.beam
│   │       │   │   ├── Elixir.Jason.Encoder.beam
│   │       │   │   ├── Elixir.List.Chars.beam
│   │       │   │   ├── Elixir.Phoenix.Param.beam
│   │       │   │   ├── Elixir.Plug.Exception.beam
│   │       │   │   └── Elixir.String.Chars.beam
│   │       │   ├── ebin
│   │       │   │   ├── Elixir.ChessServer.App.beam
│   │       │   │   ├── Elixir.ChessServer.Application.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.Board.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.Commands.CreateGame.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.Commands.MakeMove.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.GameState.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.Logic.CheckValidator.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.Logic.GameRules.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.Move.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.MoveValidator.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.Piece.beam
│   │       │   │   ├── Elixir.ChessServer.Domain.Position.beam
│   │       │   │   ├── Elixir.ChessServer.EventStore.beam
│   │       │   │   ├── Elixir.ChessServer.Game.Finished.beam
│   │       │   │   ├── Elixir.ChessServer.Game.Progressed.beam
│   │       │   │   ├── Elixir.ChessServer.Game.Started.beam
│   │       │   │   ├── Elixir.ChessServer.Game.beam
│   │       │   │   ├── Elixir.ChessServer.Infrastructure.Projections.Game.beam
│   │       │   │   ├── Elixir.ChessServer.Infrastructure.Projectors.GameProjector.beam
│   │       │   │   ├── Elixir.ChessServer.Repo.beam
│   │       │   │   ├── Elixir.ChessServer.Router.beam
│   │       │   │   ├── Elixir.ChessServerWeb.Endpoint.beam
│   │       │   │   ├── Elixir.ChessServerWeb.ErrorJSON.beam
│   │       │   │   ├── Elixir.ChessServerWeb.FallbackController.beam
│   │       │   │   ├── Elixir.ChessServerWeb.GameController.beam
│   │       │   │   ├── Elixir.ChessServerWeb.GameJSON.beam
│   │       │   │   ├── Elixir.ChessServerWeb.Gettext.beam
│   │       │   │   ├── Elixir.ChessServerWeb.Router.beam
│   │       │   │   ├── Elixir.ChessServerWeb.Telemetry.beam
│   │       │   │   ├── Elixir.ChessServerWeb.beam
│   │       │   │   ├── Elixir.Jason.Encoder.ChessServer.Domain.Commands.CreateGame.beam
│   │       │   │   ├── Elixir.Jason.Encoder.ChessServer.Domain.Commands.MakeMove.beam
│   │       │   │   ├── Elixir.Jason.Encoder.ChessServer.Game.Finished.beam
│   │       │   │   ├── Elixir.Jason.Encoder.ChessServer.Game.Progressed.beam
│   │       │   │   ├── Elixir.Jason.Encoder.ChessServer.Game.Started.beam
│   │       │   │   └── chess_server.app
│   │       │   └── priv -> ../../../../priv
│   │       ├── commanded
│   │       │   └── ebin
│   │       │       ├── Elixir.Commanded.Aggregate.Multi.beam
│   │       │       ├── Elixir.Commanded.Aggregates.Aggregate.beam
│   │       │       ├── Elixir.Commanded.Aggregates.AggregateLifespan.beam
│   │       │       ├── Elixir.Commanded.Aggregates.AggregateStateBuilder.beam
│   │       │       ├── Elixir.Commanded.Aggregates.DefaultLifespan.beam
│   │       │       ├── Elixir.Commanded.Aggregates.ExecutionContext.beam
│   │       │       ├── Elixir.Commanded.Aggregates.Supervisor.beam
│   │       │       ├── Elixir.Commanded.Application.Config.beam
│   │       │       ├── Elixir.Commanded.Application.Supervisor.beam
│   │       │       ├── Elixir.Commanded.Application.beam
│   │       │       ├── Elixir.Commanded.Assertions.EventAssertions.beam
│   │       │       ├── Elixir.Commanded.Commands.CompositeRouter.beam
│   │       │       ├── Elixir.Commanded.Commands.Dispatcher.Payload.beam
│   │       │       ├── Elixir.Commanded.Commands.Dispatcher.beam
│   │       │       ├── Elixir.Commanded.Commands.ExecutionResult.beam
│   │       │       ├── Elixir.Commanded.Commands.Handler.beam
│   │       │       ├── Elixir.Commanded.Commands.Router.beam
│   │       │       ├── Elixir.Commanded.Enumerable.beam
│   │       │       ├── Elixir.Commanded.Event.ErrorHandler.beam
│   │       │       ├── Elixir.Commanded.Event.FailureContext.beam
│   │       │       ├── Elixir.Commanded.Event.Handler.Supervisor.beam
│   │       │       ├── Elixir.Commanded.Event.Handler.beam
│   │       │       ├── Elixir.Commanded.Event.Mapper.beam
│   │       │       ├── Elixir.Commanded.Event.Upcast.beam
│   │       │       ├── Elixir.Commanded.Event.Upcaster.Any.beam
│   │       │       ├── Elixir.Commanded.Event.Upcaster.beam
│   │       │       ├── Elixir.Commanded.EventStore.Adapter.beam
│   │       │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.PersistentSubscription.beam
│   │       │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.State.beam
│   │       │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.Subscriber.beam
│   │       │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.Subscription.beam
│   │       │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.beam
│   │       │       ├── Elixir.Commanded.EventStore.EventData.beam
│   │       │       ├── Elixir.Commanded.EventStore.RecordedEvent.beam
│   │       │       ├── Elixir.Commanded.EventStore.SnapshotData.beam
│   │       │       ├── Elixir.Commanded.EventStore.Subscription.beam
│   │       │       ├── Elixir.Commanded.EventStore.TypeProvider.beam
│   │       │       ├── Elixir.Commanded.EventStore.beam
│   │       │       ├── Elixir.Commanded.Helpers.CommandAuditMiddleware.AuditLog.beam
│   │       │       ├── Elixir.Commanded.Helpers.CommandAuditMiddleware.beam
│   │       │       ├── Elixir.Commanded.Helpers.CompileTimeAssertions.beam
│   │       │       ├── Elixir.Commanded.Helpers.EventFactory.beam
│   │       │       ├── Elixir.Commanded.Helpers.ProcessHelper.beam
│   │       │       ├── Elixir.Commanded.Helpers.Wait.beam
│   │       │       ├── Elixir.Commanded.Middleware.ConsistencyGuarantee.beam
│   │       │       ├── Elixir.Commanded.Middleware.ExtractAggregateIdentity.beam
│   │       │       ├── Elixir.Commanded.Middleware.Logger.beam
│   │       │       ├── Elixir.Commanded.Middleware.Pipeline.beam
│   │       │       ├── Elixir.Commanded.Middleware.beam
│   │       │       ├── Elixir.Commanded.ProcessManagers.FailureContext.beam
│   │       │       ├── Elixir.Commanded.ProcessManagers.ProcessManager.beam
│   │       │       ├── Elixir.Commanded.ProcessManagers.ProcessManagerInstance.State.beam
│   │       │       ├── Elixir.Commanded.ProcessManagers.ProcessManagerInstance.beam
│   │       │       ├── Elixir.Commanded.ProcessManagers.ProcessRouter.State.beam
│   │       │       ├── Elixir.Commanded.ProcessManagers.ProcessRouter.beam
│   │       │       ├── Elixir.Commanded.ProcessManagers.Supervisor.beam
│   │       │       ├── Elixir.Commanded.PubSub.Adapter.beam
│   │       │       ├── Elixir.Commanded.PubSub.LocalPubSub.beam
│   │       │       ├── Elixir.Commanded.PubSub.PhoenixPubSub.Tracker.beam
│   │       │       ├── Elixir.Commanded.PubSub.PhoenixPubSub.beam
│   │       │       ├── Elixir.Commanded.PubSub.beam
│   │       │       ├── Elixir.Commanded.Registration.Adapter.beam
│   │       │       ├── Elixir.Commanded.Registration.GlobalRegistry.beam
│   │       │       ├── Elixir.Commanded.Registration.LocalRegistry.beam
│   │       │       ├── Elixir.Commanded.Registration.beam
│   │       │       ├── Elixir.Commanded.Serialization.JsonDecoder.Any.beam
│   │       │       ├── Elixir.Commanded.Serialization.JsonDecoder.beam
│   │       │       ├── Elixir.Commanded.Serialization.JsonSerializer.beam
│   │       │       ├── Elixir.Commanded.Serialization.ModuleNameTypeProvider.beam
│   │       │       ├── Elixir.Commanded.Serialization.Serializer.beam
│   │       │       ├── Elixir.Commanded.Snapshotting.beam
│   │       │       ├── Elixir.Commanded.Subscriptions.Registry.beam
│   │       │       ├── Elixir.Commanded.Subscriptions.beam
│   │       │       ├── Elixir.Commanded.Telemetry.beam
│   │       │       ├── Elixir.Commanded.UUID.beam
│   │       │       ├── Elixir.Commanded.beam
│   │       │       ├── Elixir.Jason.Encoder.Commanded.EventStore.SnapshotData.beam
│   │       │       ├── Elixir.Mix.Tasks.Commanded.Reset.beam
│   │       │       └── commanded.app
│   │       ├── credo
│   │       │   └── ebin
│   │       │       ├── Elixir.Credo.Application.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Categories.CategoriesCommand.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Categories.CategoriesOutput.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Categories.Output.Default.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Categories.Output.Json.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.DiffCommand.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.DiffOutput.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.DiffSummary.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.Output.Default.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.Output.FlyCheck.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.Output.Json.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.Output.Oneline.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.Task.FilterIssues.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.Task.FilterIssuesForExitStatus.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.Task.GetGitDiff.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.Task.PrintBeforeInfo.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Diff.Task.PrintResultsAndSummary.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Explain.ExplainCommand.ExplainCheck.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Explain.ExplainCommand.ExplainIssue.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Explain.ExplainCommand.ExplainIssuePreCheck.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Explain.ExplainCommand.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Explain.ExplainOutput.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Explain.Output.Default.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Explain.Output.Json.beam
│   │       │       ├── Elixir.Credo.CLI.Command.GenCheck.beam
│   │       │       ├── Elixir.Credo.CLI.Command.GenConfig.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Help.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Info.InfoCommand.PrintInfo.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Info.InfoCommand.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Info.InfoOutput.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Info.Output.Default.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Info.Output.Json.beam
│   │       │       ├── Elixir.Credo.CLI.Command.List.ListCommand.PrintBeforeInfo.beam
│   │       │       ├── Elixir.Credo.CLI.Command.List.ListCommand.PrintResultsAndSummary.beam
│   │       │       ├── Elixir.Credo.CLI.Command.List.ListCommand.beam
│   │       │       ├── Elixir.Credo.CLI.Command.List.ListOutput.beam
│   │       │       ├── Elixir.Credo.CLI.Command.List.Output.Default.beam
│   │       │       ├── Elixir.Credo.CLI.Command.List.Output.FlyCheck.beam
│   │       │       ├── Elixir.Credo.CLI.Command.List.Output.Json.beam
│   │       │       ├── Elixir.Credo.CLI.Command.List.Output.Oneline.beam
│   │       │       ├── Elixir.Credo.CLI.Command.List.Output.Sarif.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.Output.Default.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.Output.FlyCheck.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.Output.Json.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.Output.Oneline.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.Output.Sarif.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestCommand.ManipulateConfigIfRerun.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestCommand.PrintBeforeInfo.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestCommand.PrintResultsAndSummary.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestCommand.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestOutput.beam
│   │       │       ├── Elixir.Credo.CLI.Command.Version.beam
│   │       │       ├── Elixir.Credo.CLI.Command.beam
│   │       │       ├── Elixir.Credo.CLI.ExitStatus.beam
│   │       │       ├── Elixir.Credo.CLI.Filename.beam
│   │       │       ├── Elixir.Credo.CLI.Filter.beam
│   │       │       ├── Elixir.Credo.CLI.Options.beam
│   │       │       ├── Elixir.Credo.CLI.Output.FirstRunHint.beam
│   │       │       ├── Elixir.Credo.CLI.Output.FormatDelegator.beam
│   │       │       ├── Elixir.Credo.CLI.Output.Formatter.Flycheck.beam
│   │       │       ├── Elixir.Credo.CLI.Output.Formatter.JSON.beam
│   │       │       ├── Elixir.Credo.CLI.Output.Formatter.Oneline.beam
│   │       │       ├── Elixir.Credo.CLI.Output.Formatter.SARIF.beam
│   │       │       ├── Elixir.Credo.CLI.Output.Shell.beam
│   │       │       ├── Elixir.Credo.CLI.Output.Summary.beam
│   │       │       ├── Elixir.Credo.CLI.Output.UI.beam
│   │       │       ├── Elixir.Credo.CLI.Output.beam
│   │       │       ├── Elixir.Credo.CLI.Sorter.beam
│   │       │       ├── Elixir.Credo.CLI.Switch.beam
│   │       │       ├── Elixir.Credo.CLI.Task.LoadAndValidateSourceFiles.beam
│   │       │       ├── Elixir.Credo.CLI.Task.PrepareChecksToRun.beam
│   │       │       ├── Elixir.Credo.CLI.Task.RunChecks.beam
│   │       │       ├── Elixir.Credo.CLI.Task.SetRelevantIssues.beam
│   │       │       ├── Elixir.Credo.CLI.beam
│   │       │       ├── Elixir.Credo.Check.ConfigComment.beam
│   │       │       ├── Elixir.Credo.Check.ConfigCommentFinder.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.Collector.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.ExceptionNames.Collector.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.ExceptionNames.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.LineEndings.Collector.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.LineEndings.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.MultiAliasImportRequireUse.Collector.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.MultiAliasImportRequireUse.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.ParameterPatternMatching.Collector.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.ParameterPatternMatching.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.SpaceAroundOperators.Collector.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.SpaceAroundOperators.SpaceHelper.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.SpaceAroundOperators.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.SpaceInParentheses.Collector.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.SpaceInParentheses.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.TabsOrSpaces.Collector.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.TabsOrSpaces.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.UnusedVariableNames.Collector.beam
│   │       │       ├── Elixir.Credo.Check.Consistency.UnusedVariableNames.beam
│   │       │       ├── Elixir.Credo.Check.Context.beam
│   │       │       ├── Elixir.Credo.Check.Design.AliasUsage.beam
│   │       │       ├── Elixir.Credo.Check.Design.DuplicatedCode.beam
│   │       │       ├── Elixir.Credo.Check.Design.SkipTestWithoutComment.beam
│   │       │       ├── Elixir.Credo.Check.Design.TagFIXME.beam
│   │       │       ├── Elixir.Credo.Check.Design.TagHelper.beam
│   │       │       ├── Elixir.Credo.Check.Design.TagTODO.beam
│   │       │       ├── Elixir.Credo.Check.Params.beam
│   │       │       ├── Elixir.Credo.Check.Readability.AliasAs.beam
│   │       │       ├── Elixir.Credo.Check.Readability.AliasOrder.beam
│   │       │       ├── Elixir.Credo.Check.Readability.BlockPipe.beam
│   │       │       ├── Elixir.Credo.Check.Readability.FunctionNames.beam
│   │       │       ├── Elixir.Credo.Check.Readability.ImplTrue.beam
│   │       │       ├── Elixir.Credo.Check.Readability.LargeNumbers.beam
│   │       │       ├── Elixir.Credo.Check.Readability.MaxLineLength.beam
│   │       │       ├── Elixir.Credo.Check.Readability.ModuleAttributeNames.beam
│   │       │       ├── Elixir.Credo.Check.Readability.ModuleDoc.beam
│   │       │       ├── Elixir.Credo.Check.Readability.ModuleNames.beam
│   │       │       ├── Elixir.Credo.Check.Readability.MultiAlias.beam
│   │       │       ├── Elixir.Credo.Check.Readability.NestedFunctionCalls.PipeHelper.beam
│   │       │       ├── Elixir.Credo.Check.Readability.NestedFunctionCalls.beam
│   │       │       ├── Elixir.Credo.Check.Readability.OneArityFunctionInPipe.beam
│   │       │       ├── Elixir.Credo.Check.Readability.OnePipePerLine.beam
│   │       │       ├── Elixir.Credo.Check.Readability.ParenthesesInCondition.beam
│   │       │       ├── Elixir.Credo.Check.Readability.ParenthesesOnZeroArityDefs.beam
│   │       │       ├── Elixir.Credo.Check.Readability.PipeIntoAnonymousFunctions.beam
│   │       │       ├── Elixir.Credo.Check.Readability.PredicateFunctionNames.beam
│   │       │       ├── Elixir.Credo.Check.Readability.PreferImplicitTry.beam
│   │       │       ├── Elixir.Credo.Check.Readability.PreferUnquotedAtoms.beam
│   │       │       ├── Elixir.Credo.Check.Readability.RedundantBlankLines.beam
│   │       │       ├── Elixir.Credo.Check.Readability.Semicolons.beam
│   │       │       ├── Elixir.Credo.Check.Readability.SeparateAliasRequire.beam
│   │       │       ├── Elixir.Credo.Check.Readability.SingleFunctionToBlockPipe.beam
│   │       │       ├── Elixir.Credo.Check.Readability.SinglePipe.beam
│   │       │       ├── Elixir.Credo.Check.Readability.SpaceAfterCommas.beam
│   │       │       ├── Elixir.Credo.Check.Readability.Specs.beam
│   │       │       ├── Elixir.Credo.Check.Readability.StrictModuleLayout.beam
│   │       │       ├── Elixir.Credo.Check.Readability.StringSigils.beam
│   │       │       ├── Elixir.Credo.Check.Readability.TrailingBlankLine.beam
│   │       │       ├── Elixir.Credo.Check.Readability.TrailingWhiteSpace.beam
│   │       │       ├── Elixir.Credo.Check.Readability.UnnecessaryAliasExpansion.beam
│   │       │       ├── Elixir.Credo.Check.Readability.VariableNames.beam
│   │       │       ├── Elixir.Credo.Check.Readability.WithCustomTaggedTuple.beam
│   │       │       ├── Elixir.Credo.Check.Readability.WithSingleClause.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.ABCSize.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.AppendSingleItem.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.Apply.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.CaseTrivialMatches.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.CondStatements.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.CyclomaticComplexity.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.DoubleBooleanNegation.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.EnumHelpers.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.FilterCount.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.FilterFilter.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.FilterReject.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.FunctionArity.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.IoPuts.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.LongQuoteBlocks.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.MapInto.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.MapJoin.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.MapMap.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.MatchInCondition.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.ModuleDependencies.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.NegatedConditionsInUnless.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.NegatedConditionsWithElse.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.NegatedIsNil.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.Nesting.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.PassAsyncInTestCases.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.PerceivedComplexity.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.PipeChainStart.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.RedundantWithClauseResult.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.RejectFilter.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.RejectReject.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.UnlessWithElse.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.UtcNowTruncate.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.VariableRebinding.beam
│   │       │       ├── Elixir.Credo.Check.Refactor.WithClauses.beam
│   │       │       ├── Elixir.Credo.Check.Runner.beam
│   │       │       ├── Elixir.Credo.Check.Warning.ApplicationConfigInModuleAttribute.beam
│   │       │       ├── Elixir.Credo.Check.Warning.BoolOperationOnSameValues.beam
│   │       │       ├── Elixir.Credo.Check.Warning.Dbg.beam
│   │       │       ├── Elixir.Credo.Check.Warning.ExpensiveEmptyEnumCheck.beam
│   │       │       ├── Elixir.Credo.Check.Warning.ForbiddenModule.beam
│   │       │       ├── Elixir.Credo.Check.Warning.IExPry.beam
│   │       │       ├── Elixir.Credo.Check.Warning.IoInspect.beam
│   │       │       ├── Elixir.Credo.Check.Warning.LazyLogging.beam
│   │       │       ├── Elixir.Credo.Check.Warning.LeakyEnvironment.beam
│   │       │       ├── Elixir.Credo.Check.Warning.MapGetUnsafePass.beam
│   │       │       ├── Elixir.Credo.Check.Warning.MissedMetadataKeyInLoggerConfig.beam
│   │       │       ├── Elixir.Credo.Check.Warning.MixEnv.beam
│   │       │       ├── Elixir.Credo.Check.Warning.OperationOnSameValues.beam
│   │       │       ├── Elixir.Credo.Check.Warning.OperationWithConstantResult.beam
│   │       │       ├── Elixir.Credo.Check.Warning.RaiseInsideRescue.beam
│   │       │       ├── Elixir.Credo.Check.Warning.SpecWithStruct.beam
│   │       │       ├── Elixir.Credo.Check.Warning.StructFieldAmount.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnsafeExec.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnsafeToAtom.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedEnumOperation.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedFileOperation.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedFunctionReturnHelper.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedKeywordOperation.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedListOperation.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedOperation.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedPathOperation.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedRegexOperation.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedStringOperation.beam
│   │       │       ├── Elixir.Credo.Check.Warning.UnusedTupleOperation.beam
│   │       │       ├── Elixir.Credo.Check.Warning.WrongTestFileExtension.beam
│   │       │       ├── Elixir.Credo.Check.beam
│   │       │       ├── Elixir.Credo.Code.Block.beam
│   │       │       ├── Elixir.Credo.Code.Charlists.beam
│   │       │       ├── Elixir.Credo.Code.Heredocs.beam
│   │       │       ├── Elixir.Credo.Code.InterpolationHelper.beam
│   │       │       ├── Elixir.Credo.Code.Module.beam
│   │       │       ├── Elixir.Credo.Code.Name.beam
│   │       │       ├── Elixir.Credo.Code.Parameters.beam
│   │       │       ├── Elixir.Credo.Code.ParserError.beam
│   │       │       ├── Elixir.Credo.Code.Scope.beam
│   │       │       ├── Elixir.Credo.Code.Sigils.beam
│   │       │       ├── Elixir.Credo.Code.Strings.beam
│   │       │       ├── Elixir.Credo.Code.Token.beam
│   │       │       ├── Elixir.Credo.Code.TokenAstCorrelation.beam
│   │       │       ├── Elixir.Credo.Code.beam
│   │       │       ├── Elixir.Credo.ConfigBuilder.beam
│   │       │       ├── Elixir.Credo.ConfigFile.beam
│   │       │       ├── Elixir.Credo.Execution.ExecutionConfigFiles.beam
│   │       │       ├── Elixir.Credo.Execution.ExecutionIssues.beam
│   │       │       ├── Elixir.Credo.Execution.ExecutionSourceFiles.beam
│   │       │       ├── Elixir.Credo.Execution.ExecutionTiming.beam
│   │       │       ├── Elixir.Credo.Execution.Task.AppendDefaultConfig.beam
│   │       │       ├── Elixir.Credo.Execution.Task.AppendExtraConfig.beam
│   │       │       ├── Elixir.Credo.Execution.Task.AssignExitStatusForIssues.beam
│   │       │       ├── Elixir.Credo.Execution.Task.ConvertCLIOptionsToConfig.beam
│   │       │       ├── Elixir.Credo.Execution.Task.DetermineCommand.beam
│   │       │       ├── Elixir.Credo.Execution.Task.InitializeCommand.beam
│   │       │       ├── Elixir.Credo.Execution.Task.InitializePlugins.beam
│   │       │       ├── Elixir.Credo.Execution.Task.ParseOptions.beam
│   │       │       ├── Elixir.Credo.Execution.Task.RequireRequires.beam
│   │       │       ├── Elixir.Credo.Execution.Task.RunCommand.beam
│   │       │       ├── Elixir.Credo.Execution.Task.SetDefaultCommand.beam
│   │       │       ├── Elixir.Credo.Execution.Task.UseColors.beam
│   │       │       ├── Elixir.Credo.Execution.Task.ValidateConfig.beam
│   │       │       ├── Elixir.Credo.Execution.Task.ValidateOptions.beam
│   │       │       ├── Elixir.Credo.Execution.Task.WriteDebugReport.beam
│   │       │       ├── Elixir.Credo.Execution.Task.beam
│   │       │       ├── Elixir.Credo.Execution.beam
│   │       │       ├── Elixir.Credo.ExsLoader.beam
│   │       │       ├── Elixir.Credo.Issue.beam
│   │       │       ├── Elixir.Credo.IssueMeta.beam
│   │       │       ├── Elixir.Credo.Plugin.beam
│   │       │       ├── Elixir.Credo.Priority.beam
│   │       │       ├── Elixir.Credo.Service.ConfigFiles.beam
│   │       │       ├── Elixir.Credo.Service.ETSTableHelper.beam
│   │       │       ├── Elixir.Credo.Service.SourceFileAST.beam
│   │       │       ├── Elixir.Credo.Service.SourceFileLines.beam
│   │       │       ├── Elixir.Credo.Service.SourceFileScopePriorities.beam
│   │       │       ├── Elixir.Credo.Service.SourceFileScopes.beam
│   │       │       ├── Elixir.Credo.Service.SourceFileSource.beam
│   │       │       ├── Elixir.Credo.Severity.beam
│   │       │       ├── Elixir.Credo.SourceFile.beam
│   │       │       ├── Elixir.Credo.Sources.beam
│   │       │       ├── Elixir.Credo.Test.Assertions.beam
│   │       │       ├── Elixir.Credo.Test.Case.beam
│   │       │       ├── Elixir.Credo.Test.CheckRunner.beam
│   │       │       ├── Elixir.Credo.Test.SourceFiles.beam
│   │       │       ├── Elixir.Credo.Watcher.beam
│   │       │       ├── Elixir.Credo.beam
│   │       │       ├── Elixir.Inspect.Credo.SourceFile.beam
│   │       │       ├── Elixir.Mix.Tasks.Credo.Gen.Check.beam
│   │       │       ├── Elixir.Mix.Tasks.Credo.Gen.Config.beam
│   │       │       ├── Elixir.Mix.Tasks.Credo.beam
│   │       │       └── credo.app
│   │       ├── db_connection
│   │       │   └── ebin
│   │       │       ├── Elixir.DBConnection.App.beam
│   │       │       ├── Elixir.DBConnection.Backoff.beam
│   │       │       ├── Elixir.DBConnection.Connection.beam
│   │       │       ├── Elixir.DBConnection.ConnectionError.beam
│   │       │       ├── Elixir.DBConnection.ConnectionPool.Pool.beam
│   │       │       ├── Elixir.DBConnection.ConnectionPool.beam
│   │       │       ├── Elixir.DBConnection.EncodeError.beam
│   │       │       ├── Elixir.DBConnection.Holder.beam
│   │       │       ├── Elixir.DBConnection.LogEntry.beam
│   │       │       ├── Elixir.DBConnection.Ownership.Manager.beam
│   │       │       ├── Elixir.DBConnection.Ownership.Proxy.beam
│   │       │       ├── Elixir.DBConnection.Ownership.beam
│   │       │       ├── Elixir.DBConnection.OwnershipError.beam
│   │       │       ├── Elixir.DBConnection.Pool.beam
│   │       │       ├── Elixir.DBConnection.PrepareStream.beam
│   │       │       ├── Elixir.DBConnection.Query.beam
│   │       │       ├── Elixir.DBConnection.Stream.beam
│   │       │       ├── Elixir.DBConnection.Task.beam
│   │       │       ├── Elixir.DBConnection.TelemetryListener.beam
│   │       │       ├── Elixir.DBConnection.TransactionError.beam
│   │       │       ├── Elixir.DBConnection.Util.beam
│   │       │       ├── Elixir.DBConnection.Watcher.beam
│   │       │       ├── Elixir.DBConnection.beam
│   │       │       ├── Elixir.Enumerable.DBConnection.PrepareStream.beam
│   │       │       ├── Elixir.Enumerable.DBConnection.Stream.beam
│   │       │       └── db_connection.app
│   │       ├── decimal
│   │       │   └── ebin
│   │       │       ├── Elixir.Decimal.Context.beam
│   │       │       ├── Elixir.Decimal.Error.beam
│   │       │       ├── Elixir.Decimal.Macros.beam
│   │       │       ├── Elixir.Decimal.beam
│   │       │       ├── Elixir.Inspect.Decimal.beam
│   │       │       ├── Elixir.String.Chars.Decimal.beam
│   │       │       └── decimal.app
│   │       ├── deep_merge
│   │       │   └── ebin
│   │       │       ├── Elixir.DeepMerge.Resolver.Any.beam
│   │       │       ├── Elixir.DeepMerge.Resolver.List.beam
│   │       │       ├── Elixir.DeepMerge.Resolver.Map.beam
│   │       │       ├── Elixir.DeepMerge.Resolver.beam
│   │       │       ├── Elixir.DeepMerge.beam
│   │       │       └── deep_merge.app
│   │       ├── dialyxir
│   │       │   └── ebin
│   │       │       ├── Elixir.Dialyxir.Dialyzer.Runner.beam
│   │       │       ├── Elixir.Dialyxir.Dialyzer.beam
│   │       │       ├── Elixir.Dialyxir.FilterMap.beam
│   │       │       ├── Elixir.Dialyxir.Formatter.Dialyxir.beam
│   │       │       ├── Elixir.Dialyxir.Formatter.Dialyzer.beam
│   │       │       ├── Elixir.Dialyxir.Formatter.Github.beam
│   │       │       ├── Elixir.Dialyxir.Formatter.IgnoreFile.beam
│   │       │       ├── Elixir.Dialyxir.Formatter.IgnoreFileStrict.beam
│   │       │       ├── Elixir.Dialyxir.Formatter.Raw.beam
│   │       │       ├── Elixir.Dialyxir.Formatter.Short.beam
│   │       │       ├── Elixir.Dialyxir.Formatter.Utils.beam
│   │       │       ├── Elixir.Dialyxir.Formatter.beam
│   │       │       ├── Elixir.Dialyxir.Output.beam
│   │       │       ├── Elixir.Dialyxir.Plt.beam
│   │       │       ├── Elixir.Dialyxir.Project.beam
│   │       │       ├── Elixir.Dialyxir.Warning.beam
│   │       │       ├── Elixir.Dialyxir.WarningHelpers.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.AppCall.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.Apply.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.BinaryConstruction.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.Call.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallToMissingFunction.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallWithOpaque.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallWithoutOpaque.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallbackArgumentTypeMismatch.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallbackInfoMissing.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallbackMissing.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallbackNotExported.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallbackSpecArgumentTypeMismatch.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallbackSpecTypeMismatch.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.CallbackTypeMismatch.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.ContractDiff.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.ContractRange.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.ContractSubtype.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.ContractSupertype.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.ContractWithOpaque.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.ExactEquality.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.ExtraRange.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.FunctionApplicationArguments.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.FunctionApplicationNoFunction.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.GuardFail.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.GuardFailPattern.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.ImproperListConstruction.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.InvalidContract.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.MapUpdate.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.MissingRange.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.NegativeGuardFail.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.NoReturn.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.OpaqueEquality.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.OpaqueGuard.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.OpaqueMatch.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.OpaqueNonequality.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.OpaqueTypeTest.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.OverlappingContract.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.PatternMatch.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.PatternMatchCovered.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.RecordConstruction.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.RecordMatch.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.RecordMatching.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.UnknownBehaviour.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.UnknownFunction.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.UnknownType.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.UnmatchedReturn.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.UnusedFunction.beam
│   │       │       ├── Elixir.Dialyxir.Warnings.beam
│   │       │       ├── Elixir.Dialyxir.beam
│   │       │       ├── Elixir.Mix.Tasks.Dialyzer.Build.beam
│   │       │       ├── Elixir.Mix.Tasks.Dialyzer.Clean.beam
│   │       │       ├── Elixir.Mix.Tasks.Dialyzer.Explain.beam
│   │       │       ├── Elixir.Mix.Tasks.Dialyzer.beam
│   │       │       └── dialyxir.app
│   │       ├── earmark_parser
│   │       │   └── ebin
│   │       │       ├── Elixir.EarmarkParser.Ast.Emitter.beam
│   │       │       ├── Elixir.EarmarkParser.Ast.Inline.beam
│   │       │       ├── Elixir.EarmarkParser.Ast.Renderer.AstWalker.beam
│   │       │       ├── Elixir.EarmarkParser.Ast.Renderer.FootnoteRenderer.beam
│   │       │       ├── Elixir.EarmarkParser.Ast.Renderer.HtmlRenderer.beam
│   │       │       ├── Elixir.EarmarkParser.Ast.Renderer.TableRenderer.beam
│   │       │       ├── Elixir.EarmarkParser.AstRenderer.beam
│   │       │       ├── Elixir.EarmarkParser.Block.BlockQuote.beam
│   │       │       ├── Elixir.EarmarkParser.Block.Code.beam
│   │       │       ├── Elixir.EarmarkParser.Block.FnDef.beam
│   │       │       ├── Elixir.EarmarkParser.Block.FnList.beam
│   │       │       ├── Elixir.EarmarkParser.Block.Heading.beam
│   │       │       ├── Elixir.EarmarkParser.Block.Html.beam
│   │       │       ├── Elixir.EarmarkParser.Block.HtmlComment.beam
│   │       │       ├── Elixir.EarmarkParser.Block.HtmlOneline.beam
│   │       │       ├── Elixir.EarmarkParser.Block.Ial.beam
│   │       │       ├── Elixir.EarmarkParser.Block.IdDef.beam
│   │       │       ├── Elixir.EarmarkParser.Block.List.beam
│   │       │       ├── Elixir.EarmarkParser.Block.ListItem.beam
│   │       │       ├── Elixir.EarmarkParser.Block.Para.beam
│   │       │       ├── Elixir.EarmarkParser.Block.Ruler.beam
│   │       │       ├── Elixir.EarmarkParser.Block.Table.beam
│   │       │       ├── Elixir.EarmarkParser.Block.Text.beam
│   │       │       ├── Elixir.EarmarkParser.Context.beam
│   │       │       ├── Elixir.EarmarkParser.Enum.Ext.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.AstHelpers.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.AttrParser.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.HtmlParser.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.LeexHelpers.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.LineHelpers.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.LookaheadHelpers.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.PureLinkHelpers.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.ReparseHelpers.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.StringHelpers.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.YeccHelpers.beam
│   │       │       ├── Elixir.EarmarkParser.Helpers.beam
│   │       │       ├── Elixir.EarmarkParser.Line.Blank.beam
│   │       │       ├── Elixir.EarmarkParser.Line.BlockQuote.beam
│   │       │       ├── Elixir.EarmarkParser.Line.Fence.beam
│   │       │       ├── Elixir.EarmarkParser.Line.FnDef.beam
│   │       │       ├── Elixir.EarmarkParser.Line.Heading.beam
│   │       │       ├── Elixir.EarmarkParser.Line.HtmlCloseTag.beam
│   │       │       ├── Elixir.EarmarkParser.Line.HtmlComment.beam
│   │       │       ├── Elixir.EarmarkParser.Line.HtmlOneLine.beam
│   │       │       ├── Elixir.EarmarkParser.Line.HtmlOpenTag.beam
│   │       │       ├── Elixir.EarmarkParser.Line.Ial.beam
│   │       │       ├── Elixir.EarmarkParser.Line.IdDef.beam
│   │       │       ├── Elixir.EarmarkParser.Line.Indent.beam
│   │       │       ├── Elixir.EarmarkParser.Line.ListItem.beam
│   │       │       ├── Elixir.EarmarkParser.Line.Ruler.beam
│   │       │       ├── Elixir.EarmarkParser.Line.SetextUnderlineHeading.beam
│   │       │       ├── Elixir.EarmarkParser.Line.TableLine.beam
│   │       │       ├── Elixir.EarmarkParser.Line.Text.beam
│   │       │       ├── Elixir.EarmarkParser.Line.beam
│   │       │       ├── Elixir.EarmarkParser.LineScanner.Rgx.beam
│   │       │       ├── Elixir.EarmarkParser.LineScanner.beam
│   │       │       ├── Elixir.EarmarkParser.Message.beam
│   │       │       ├── Elixir.EarmarkParser.Options.beam
│   │       │       ├── Elixir.EarmarkParser.Parser.FootnoteParser.beam
│   │       │       ├── Elixir.EarmarkParser.Parser.LinkParser.beam
│   │       │       ├── Elixir.EarmarkParser.Parser.ListInfo.beam
│   │       │       ├── Elixir.EarmarkParser.Parser.ListParser.beam
│   │       │       ├── Elixir.EarmarkParser.Parser.beam
│   │       │       ├── Elixir.EarmarkParser.beam
│   │       │       ├── earmark_parser.app
│   │       │       ├── earmark_parser_link_text_lexer.beam
│   │       │       ├── earmark_parser_link_text_parser.beam
│   │       │       └── earmark_parser_string_lexer.beam
│   │       ├── ecto
│   │       │   └── ebin
│   │       │       ├── Elixir.Ecto.Adapter.Queryable.beam
│   │       │       ├── Elixir.Ecto.Adapter.Schema.beam
│   │       │       ├── Elixir.Ecto.Adapter.Storage.beam
│   │       │       ├── Elixir.Ecto.Adapter.Transaction.beam
│   │       │       ├── Elixir.Ecto.Adapter.beam
│   │       │       ├── Elixir.Ecto.Application.beam
│   │       │       ├── Elixir.Ecto.Association.BelongsTo.beam
│   │       │       ├── Elixir.Ecto.Association.Has.beam
│   │       │       ├── Elixir.Ecto.Association.HasThrough.beam
│   │       │       ├── Elixir.Ecto.Association.ManyToMany.beam
│   │       │       ├── Elixir.Ecto.Association.NotLoaded.beam
│   │       │       ├── Elixir.Ecto.Association.beam
│   │       │       ├── Elixir.Ecto.CastError.beam
│   │       │       ├── Elixir.Ecto.ChangeError.beam
│   │       │       ├── Elixir.Ecto.Changeset.Relation.beam
│   │       │       ├── Elixir.Ecto.Changeset.beam
│   │       │       ├── Elixir.Ecto.ConstraintError.beam
│   │       │       ├── Elixir.Ecto.Embedded.beam
│   │       │       ├── Elixir.Ecto.Enum.beam
│   │       │       ├── Elixir.Ecto.InvalidChangesetError.beam
│   │       │       ├── Elixir.Ecto.InvalidURLError.beam
│   │       │       ├── Elixir.Ecto.MigrationError.beam
│   │       │       ├── Elixir.Ecto.Multi.beam
│   │       │       ├── Elixir.Ecto.MultiplePrimaryKeyError.beam
│   │       │       ├── Elixir.Ecto.MultipleResultsError.beam
│   │       │       ├── Elixir.Ecto.NoPrimaryKeyFieldError.beam
│   │       │       ├── Elixir.Ecto.NoPrimaryKeyValueError.beam
│   │       │       ├── Elixir.Ecto.NoResultsError.beam
│   │       │       ├── Elixir.Ecto.ParameterizedType.beam
│   │       │       ├── Elixir.Ecto.Query.API.beam
│   │       │       ├── Elixir.Ecto.Query.BooleanExpr.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.CTE.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Combination.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Distinct.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Dynamic.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Filter.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.From.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.GroupBy.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Join.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.LimitOffset.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Lock.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.OrderBy.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Preload.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Select.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Update.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.Windows.beam
│   │       │       ├── Elixir.Ecto.Query.Builder.beam
│   │       │       ├── Elixir.Ecto.Query.ByExpr.beam
│   │       │       ├── Elixir.Ecto.Query.CastError.beam
│   │       │       ├── Elixir.Ecto.Query.CompileError.beam
│   │       │       ├── Elixir.Ecto.Query.DynamicExpr.beam
│   │       │       ├── Elixir.Ecto.Query.FromExpr.beam
│   │       │       ├── Elixir.Ecto.Query.JoinExpr.beam
│   │       │       ├── Elixir.Ecto.Query.LimitExpr.beam
│   │       │       ├── Elixir.Ecto.Query.Planner.beam
│   │       │       ├── Elixir.Ecto.Query.QueryExpr.beam
│   │       │       ├── Elixir.Ecto.Query.SelectExpr.beam
│   │       │       ├── Elixir.Ecto.Query.Tagged.beam
│   │       │       ├── Elixir.Ecto.Query.Values.beam
│   │       │       ├── Elixir.Ecto.Query.WindowAPI.beam
│   │       │       ├── Elixir.Ecto.Query.WithExpr.beam
│   │       │       ├── Elixir.Ecto.Query.beam
│   │       │       ├── Elixir.Ecto.QueryError.beam
│   │       │       ├── Elixir.Ecto.Queryable.Atom.beam
│   │       │       ├── Elixir.Ecto.Queryable.BitString.beam
│   │       │       ├── Elixir.Ecto.Queryable.Ecto.Query.beam
│   │       │       ├── Elixir.Ecto.Queryable.Ecto.SubQuery.beam
│   │       │       ├── Elixir.Ecto.Queryable.Tuple.beam
│   │       │       ├── Elixir.Ecto.Queryable.beam
│   │       │       ├── Elixir.Ecto.Repo.Assoc.beam
│   │       │       ├── Elixir.Ecto.Repo.Preloader.beam
│   │       │       ├── Elixir.Ecto.Repo.Queryable.beam
│   │       │       ├── Elixir.Ecto.Repo.Registry.beam
│   │       │       ├── Elixir.Ecto.Repo.Schema.beam
│   │       │       ├── Elixir.Ecto.Repo.Supervisor.beam
│   │       │       ├── Elixir.Ecto.Repo.Transaction.beam
│   │       │       ├── Elixir.Ecto.Repo.beam
│   │       │       ├── Elixir.Ecto.Schema.Loader.beam
│   │       │       ├── Elixir.Ecto.Schema.Metadata.beam
│   │       │       ├── Elixir.Ecto.Schema.beam
│   │       │       ├── Elixir.Ecto.StaleEntryError.beam
│   │       │       ├── Elixir.Ecto.SubQuery.beam
│   │       │       ├── Elixir.Ecto.SubQueryError.beam
│   │       │       ├── Elixir.Ecto.Type.beam
│   │       │       ├── Elixir.Ecto.UUID.beam
│   │       │       ├── Elixir.Ecto.beam
│   │       │       ├── Elixir.Inspect.Ecto.Association.NotLoaded.beam
│   │       │       ├── Elixir.Inspect.Ecto.Changeset.beam
│   │       │       ├── Elixir.Inspect.Ecto.Query.DynamicExpr.beam
│   │       │       ├── Elixir.Inspect.Ecto.Query.beam
│   │       │       ├── Elixir.Inspect.Ecto.Schema.Metadata.beam
│   │       │       ├── Elixir.Jason.Encoder.Ecto.Association.NotLoaded.beam
│   │       │       ├── Elixir.Jason.Encoder.Ecto.Schema.Metadata.beam
│   │       │       ├── Elixir.Mix.Ecto.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.Create.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.Drop.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.Gen.Repo.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.beam
│   │       │       └── ecto.app
│   │       ├── ecto_sql
│   │       │   └── ebin
│   │       │       ├── Elixir.Collectable.Ecto.Adapters.SQL.Stream.beam
│   │       │       ├── Elixir.Ecto.Adapter.Migration.beam
│   │       │       ├── Elixir.Ecto.Adapter.Structure.beam
│   │       │       ├── Elixir.Ecto.Adapters.MyXQL.beam
│   │       │       ├── Elixir.Ecto.Adapters.Postgres.Connection.beam
│   │       │       ├── Elixir.Ecto.Adapters.Postgres.beam
│   │       │       ├── Elixir.Ecto.Adapters.SQL.Application.beam
│   │       │       ├── Elixir.Ecto.Adapters.SQL.Connection.beam
│   │       │       ├── Elixir.Ecto.Adapters.SQL.Sandbox.Connection.beam
│   │       │       ├── Elixir.Ecto.Adapters.SQL.Sandbox.beam
│   │       │       ├── Elixir.Ecto.Adapters.SQL.Stream.beam
│   │       │       ├── Elixir.Ecto.Adapters.SQL.beam
│   │       │       ├── Elixir.Ecto.Adapters.Tds.beam
│   │       │       ├── Elixir.Ecto.Migration.Command.beam
│   │       │       ├── Elixir.Ecto.Migration.Constraint.beam
│   │       │       ├── Elixir.Ecto.Migration.Index.beam
│   │       │       ├── Elixir.Ecto.Migration.Reference.beam
│   │       │       ├── Elixir.Ecto.Migration.Runner.beam
│   │       │       ├── Elixir.Ecto.Migration.SchemaMigration.beam
│   │       │       ├── Elixir.Ecto.Migration.Table.beam
│   │       │       ├── Elixir.Ecto.Migration.beam
│   │       │       ├── Elixir.Ecto.Migrator.beam
│   │       │       ├── Elixir.Enumerable.Ecto.Adapters.SQL.Stream.beam
│   │       │       ├── Elixir.Mix.EctoSQL.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.Dump.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.Gen.Migration.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.Load.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.Migrate.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.Migrations.beam
│   │       │       ├── Elixir.Mix.Tasks.Ecto.Rollback.beam
│   │       │       └── ecto_sql.app
│   │       ├── erlex
│   │       │   └── ebin
│   │       │       ├── Elixir.Erlex.beam
│   │       │       ├── erlex.app
│   │       │       ├── erlex_lexer.beam
│   │       │       └── erlex_parser.beam
│   │       ├── eventstore
│   │       │   ├── ebin
│   │       │   │   ├── Elixir.EventStore.AdvisoryLocks.Lock.beam
│   │       │   │   ├── Elixir.EventStore.AdvisoryLocks.State.beam
│   │       │   │   ├── Elixir.EventStore.AdvisoryLocks.beam
│   │       │   │   ├── Elixir.EventStore.Application.beam
│   │       │   │   ├── Elixir.EventStore.Config.Parser.beam
│   │       │   │   ├── Elixir.EventStore.Config.Store.beam
│   │       │   │   ├── Elixir.EventStore.Config.beam
│   │       │   │   ├── Elixir.EventStore.EExIOListEngine.beam
│   │       │   │   ├── Elixir.EventStore.EventData.beam
│   │       │   │   ├── Elixir.EventStore.JsonSerializer.beam
│   │       │   │   ├── Elixir.EventStore.JsonbSerializer.beam
│   │       │   │   ├── Elixir.EventStore.MonitoredServer.State.beam
│   │       │   │   ├── Elixir.EventStore.MonitoredServer.beam
│   │       │   │   ├── Elixir.EventStore.Notifications.Listener.beam
│   │       │   │   ├── Elixir.EventStore.Notifications.Notification.beam
│   │       │   │   ├── Elixir.EventStore.Notifications.Publisher.State.beam
│   │       │   │   ├── Elixir.EventStore.Notifications.Publisher.beam
│   │       │   │   ├── Elixir.EventStore.Notifications.Supervisor.beam
│   │       │   │   ├── Elixir.EventStore.Page.beam
│   │       │   │   ├── Elixir.EventStore.PostgresTypes.beam
│   │       │   │   ├── Elixir.EventStore.PubSub.beam
│   │       │   │   ├── Elixir.EventStore.RecordedEvent.beam
│   │       │   │   ├── Elixir.EventStore.Serializer.beam
│   │       │   │   ├── Elixir.EventStore.Snapshots.SnapshotData.beam
│   │       │   │   ├── Elixir.EventStore.Snapshots.Snapshotter.beam
│   │       │   │   ├── Elixir.EventStore.Sql.Init.beam
│   │       │   │   ├── Elixir.EventStore.Sql.Reset.beam
│   │       │   │   ├── Elixir.EventStore.Sql.Statements.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Appender.beam
│   │       │   │   ├── Elixir.EventStore.Storage.CreateStream.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Database.beam
│   │       │   │   ├── Elixir.EventStore.Storage.DeleteStream.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Initializer.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Lock.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Reader.EventAdapter.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Reader.Query.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Reader.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Schema.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Snapshot.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Stream.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Subscription.Ack.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Subscription.Adapter.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Subscription.CreateSubscription.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Subscription.Delete.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Subscription.QueryAllSubscriptions.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Subscription.QuerySubscription.beam
│   │       │   │   ├── Elixir.EventStore.Storage.Subscription.beam
│   │       │   │   ├── Elixir.EventStore.Storage.beam
│   │       │   │   ├── Elixir.EventStore.Streams.Stream.beam
│   │       │   │   ├── Elixir.EventStore.Streams.StreamInfo.beam
│   │       │   │   ├── Elixir.EventStore.Subscriptions.Subscriber.beam
│   │       │   │   ├── Elixir.EventStore.Subscriptions.Subscription.beam
│   │       │   │   ├── Elixir.EventStore.Subscriptions.SubscriptionFsm.beam
│   │       │   │   ├── Elixir.EventStore.Subscriptions.SubscriptionState.beam
│   │       │   │   ├── Elixir.EventStore.Subscriptions.Supervisor.beam
│   │       │   │   ├── Elixir.EventStore.Subscriptions.beam
│   │       │   │   ├── Elixir.EventStore.Supervisor.beam
│   │       │   │   ├── Elixir.EventStore.Tasks.Create.beam
│   │       │   │   ├── Elixir.EventStore.Tasks.Drop.beam
│   │       │   │   ├── Elixir.EventStore.Tasks.Init.beam
│   │       │   │   ├── Elixir.EventStore.Tasks.Migrate.beam
│   │       │   │   ├── Elixir.EventStore.Tasks.Migration.beam
│   │       │   │   ├── Elixir.EventStore.Tasks.Migrations.beam
│   │       │   │   ├── Elixir.EventStore.Tasks.Output.beam
│   │       │   │   ├── Elixir.EventStore.TermSerializer.beam
│   │       │   │   ├── Elixir.EventStore.UUID.beam
│   │       │   │   ├── Elixir.EventStore.beam
│   │       │   │   ├── Elixir.Mix.EventStore.beam
│   │       │   │   ├── Elixir.Mix.Tasks.EventStore.Create.beam
│   │       │   │   ├── Elixir.Mix.Tasks.EventStore.Drop.beam
│   │       │   │   ├── Elixir.Mix.Tasks.EventStore.Init.beam
│   │       │   │   ├── Elixir.Mix.Tasks.EventStore.Migrate.beam
│   │       │   │   ├── Elixir.Mix.Tasks.EventStore.Migrations.beam
│   │       │   │   └── eventstore.app
│   │       │   └── priv -> ../../../../deps/eventstore/priv
│   │       ├── ex_doc
│   │       │   └── ebin
│   │       │       ├── Elixir.ExDoc.Application.beam
│   │       │       ├── Elixir.ExDoc.Autolink.beam
│   │       │       ├── Elixir.ExDoc.CLI.beam
│   │       │       ├── Elixir.ExDoc.Config.beam
│   │       │       ├── Elixir.ExDoc.DocAST.beam
│   │       │       ├── Elixir.ExDoc.DocGroupNode.beam
│   │       │       ├── Elixir.ExDoc.DocNode.beam
│   │       │       ├── Elixir.ExDoc.Formatter.EPUB.Assets.beam
│   │       │       ├── Elixir.ExDoc.Formatter.EPUB.Templates.beam
│   │       │       ├── Elixir.ExDoc.Formatter.EPUB.beam
│   │       │       ├── Elixir.ExDoc.Formatter.HTML.Assets.beam
│   │       │       ├── Elixir.ExDoc.Formatter.HTML.SearchData.beam
│   │       │       ├── Elixir.ExDoc.Formatter.HTML.Templates.beam
│   │       │       ├── Elixir.ExDoc.Formatter.HTML.beam
│   │       │       ├── Elixir.ExDoc.Formatter.beam
│   │       │       ├── Elixir.ExDoc.GroupMatcher.beam
│   │       │       ├── Elixir.ExDoc.Language.Elixir.beam
│   │       │       ├── Elixir.ExDoc.Language.Erlang.beam
│   │       │       ├── Elixir.ExDoc.Language.Source.beam
│   │       │       ├── Elixir.ExDoc.Language.beam
│   │       │       ├── Elixir.ExDoc.Markdown.Earmark.beam
│   │       │       ├── Elixir.ExDoc.Markdown.beam
│   │       │       ├── Elixir.ExDoc.ModuleNode.beam
│   │       │       ├── Elixir.ExDoc.Refs.beam
│   │       │       ├── Elixir.ExDoc.Retriever.Error.beam
│   │       │       ├── Elixir.ExDoc.Retriever.beam
│   │       │       ├── Elixir.ExDoc.ShellLexer.beam
│   │       │       ├── Elixir.ExDoc.Utils.beam
│   │       │       ├── Elixir.ExDoc.beam
│   │       │       ├── Elixir.Mix.Tasks.Docs.beam
│   │       │       └── ex_doc.app
│   │       ├── expo
│   │       │   └── ebin
│   │       │       ├── Elixir.Expo.MO.Composer.beam
│   │       │       ├── Elixir.Expo.MO.InvalidFileError.beam
│   │       │       ├── Elixir.Expo.MO.Parser.beam
│   │       │       ├── Elixir.Expo.MO.UnsupportedVersionError.beam
│   │       │       ├── Elixir.Expo.MO.beam
│   │       │       ├── Elixir.Expo.Message.Plural.beam
│   │       │       ├── Elixir.Expo.Message.Singular.beam
│   │       │       ├── Elixir.Expo.Message.beam
│   │       │       ├── Elixir.Expo.Messages.beam
│   │       │       ├── Elixir.Expo.PO.Composer.beam
│   │       │       ├── Elixir.Expo.PO.DuplicateMessagesError.beam
│   │       │       ├── Elixir.Expo.PO.Parser.beam
│   │       │       ├── Elixir.Expo.PO.SyntaxError.beam
│   │       │       ├── Elixir.Expo.PO.Tokenizer.beam
│   │       │       ├── Elixir.Expo.PO.beam
│   │       │       ├── Elixir.Expo.PluralForms.Known.beam
│   │       │       ├── Elixir.Expo.PluralForms.SyntaxError.beam
│   │       │       ├── Elixir.Expo.PluralForms.Tokenizer.beam
│   │       │       ├── Elixir.Expo.PluralForms.beam
│   │       │       ├── Elixir.Expo.Util.beam
│   │       │       ├── Elixir.Inspect.Expo.Message.Plural.beam
│   │       │       ├── Elixir.Inspect.Expo.Message.Singular.beam
│   │       │       ├── Elixir.Inspect.Expo.PluralForms.beam
│   │       │       ├── Elixir.Mix.Tasks.Expo.Msgfmt.beam
│   │       │       ├── Elixir.Mix.Tasks.Expo.Msguniq.beam
│   │       │       ├── expo.app
│   │       │       ├── expo_plural_forms_parser.beam
│   │       │       └── expo_po_parser.beam
│   │       ├── file_system
│   │       │   ├── ebin
│   │       │   │   ├── Elixir.FileSystem.Backend.beam
│   │       │   │   ├── Elixir.FileSystem.Backends.FSInotify.beam
│   │       │   │   ├── Elixir.FileSystem.Backends.FSMac.beam
│   │       │   │   ├── Elixir.FileSystem.Backends.FSPoll.beam
│   │       │   │   ├── Elixir.FileSystem.Backends.FSWindows.beam
│   │       │   │   ├── Elixir.FileSystem.Worker.beam
│   │       │   │   ├── Elixir.FileSystem.beam
│   │       │   │   └── file_system.app
│   │       │   └── priv -> ../../../../deps/file_system/priv
│   │       ├── fsm
│   │       │   └── ebin
│   │       │       ├── Elixir.Fsm.beam
│   │       │       └── fsm.app
│   │       ├── gen_stage
│   │       │   └── ebin
│   │       │       ├── Elixir.ConsumerSupervisor.Default.beam
│   │       │       ├── Elixir.ConsumerSupervisor.beam
│   │       │       ├── Elixir.GenStage.BroadcastDispatcher.beam
│   │       │       ├── Elixir.GenStage.Buffer.beam
│   │       │       ├── Elixir.GenStage.DemandDispatcher.beam
│   │       │       ├── Elixir.GenStage.Dispatcher.beam
│   │       │       ├── Elixir.GenStage.PartitionDispatcher.beam
│   │       │       ├── Elixir.GenStage.Stream.beam
│   │       │       ├── Elixir.GenStage.Streamer.beam
│   │       │       ├── Elixir.GenStage.Utils.beam
│   │       │       ├── Elixir.GenStage.beam
│   │       │       └── gen_stage.app
│   │       ├── gettext
│   │       │   └── ebin
│   │       │       ├── Elixir.Gettext.Application.beam
│   │       │       ├── Elixir.Gettext.Backend.beam
│   │       │       ├── Elixir.Gettext.Compiler.beam
│   │       │       ├── Elixir.Gettext.Error.beam
│   │       │       ├── Elixir.Gettext.Extractor.beam
│   │       │       ├── Elixir.Gettext.ExtractorAgent.beam
│   │       │       ├── Elixir.Gettext.Fuzzy.beam
│   │       │       ├── Elixir.Gettext.Interpolation.Default.beam
│   │       │       ├── Elixir.Gettext.Interpolation.beam
│   │       │       ├── Elixir.Gettext.Macros.beam
│   │       │       ├── Elixir.Gettext.Merger.beam
│   │       │       ├── Elixir.Gettext.MissingBindingsError.beam
│   │       │       ├── Elixir.Gettext.Plural.UnknownLocaleError.beam
│   │       │       ├── Elixir.Gettext.Plural.beam
│   │       │       ├── Elixir.Gettext.PluralFormError.beam
│   │       │       ├── Elixir.Gettext.beam
│   │       │       ├── Elixir.Mix.Tasks.Compile.Gettext.beam
│   │       │       ├── Elixir.Mix.Tasks.Gettext.Extract.beam
│   │       │       ├── Elixir.Mix.Tasks.Gettext.Merge.beam
│   │       │       └── gettext.app
│   │       ├── jason
│   │       │   └── ebin
│   │       │       ├── Elixir.Enumerable.Jason.OrderedObject.beam
│   │       │       ├── Elixir.Jason.Codegen.beam
│   │       │       ├── Elixir.Jason.DecodeError.beam
│   │       │       ├── Elixir.Jason.Decoder.Unescape.beam
│   │       │       ├── Elixir.Jason.Decoder.beam
│   │       │       ├── Elixir.Jason.Encode.beam
│   │       │       ├── Elixir.Jason.EncodeError.beam
│   │       │       ├── Elixir.Jason.Encoder.Any.beam
│   │       │       ├── Elixir.Jason.Encoder.Atom.beam
│   │       │       ├── Elixir.Jason.Encoder.BitString.beam
│   │       │       ├── Elixir.Jason.Encoder.Date.beam
│   │       │       ├── Elixir.Jason.Encoder.DateTime.beam
│   │       │       ├── Elixir.Jason.Encoder.Decimal.beam
│   │       │       ├── Elixir.Jason.Encoder.Float.beam
│   │       │       ├── Elixir.Jason.Encoder.Integer.beam
│   │       │       ├── Elixir.Jason.Encoder.Jason.Fragment.beam
│   │       │       ├── Elixir.Jason.Encoder.Jason.OrderedObject.beam
│   │       │       ├── Elixir.Jason.Encoder.List.beam
│   │       │       ├── Elixir.Jason.Encoder.Map.beam
│   │       │       ├── Elixir.Jason.Encoder.NaiveDateTime.beam
│   │       │       ├── Elixir.Jason.Encoder.Time.beam
│   │       │       ├── Elixir.Jason.Encoder.beam
│   │       │       ├── Elixir.Jason.Formatter.beam
│   │       │       ├── Elixir.Jason.Fragment.beam
│   │       │       ├── Elixir.Jason.Helpers.beam
│   │       │       ├── Elixir.Jason.OrderedObject.beam
│   │       │       ├── Elixir.Jason.Sigil.beam
│   │       │       ├── Elixir.Jason.beam
│   │       │       └── jason.app
│   │       ├── makeup
│   │       │   └── ebin
│   │       │       ├── Elixir.Makeup.Application.beam
│   │       │       ├── Elixir.Makeup.Formatter.beam
│   │       │       ├── Elixir.Makeup.Formatters.HTML.HTMLFormatter.beam
│   │       │       ├── Elixir.Makeup.Lexer.Combinators.beam
│   │       │       ├── Elixir.Makeup.Lexer.Groups.beam
│   │       │       ├── Elixir.Makeup.Lexer.Postprocess.beam
│   │       │       ├── Elixir.Makeup.Lexer.Types.beam
│   │       │       ├── Elixir.Makeup.Lexer.beam
│   │       │       ├── Elixir.Makeup.Registry.beam
│   │       │       ├── Elixir.Makeup.Styles.HTML.Style.beam
│   │       │       ├── Elixir.Makeup.Styles.HTML.StyleMap.beam
│   │       │       ├── Elixir.Makeup.Styles.HTML.TokenStyle.beam
│   │       │       ├── Elixir.Makeup.Token.Utils.Hierarchy.beam
│   │       │       ├── Elixir.Makeup.Token.Utils.beam
│   │       │       ├── Elixir.Makeup.beam
│   │       │       └── makeup.app
│   │       ├── makeup_elixir
│   │       │   └── ebin
│   │       │       ├── Elixir.Makeup.Lexers.ElixirLexer.Application.beam
│   │       │       ├── Elixir.Makeup.Lexers.ElixirLexer.Atoms.beam
│   │       │       ├── Elixir.Makeup.Lexers.ElixirLexer.Helper.beam
│   │       │       ├── Elixir.Makeup.Lexers.ElixirLexer.Testing.beam
│   │       │       ├── Elixir.Makeup.Lexers.ElixirLexer.Variables.beam
│   │       │       ├── Elixir.Makeup.Lexers.ElixirLexer.beam
│   │       │       └── makeup_elixir.app
│   │       ├── makeup_erlang
│   │       │   └── ebin
│   │       │       ├── Elixir.Makeup.Lexers.ErlangLexer.Application.beam
│   │       │       ├── Elixir.Makeup.Lexers.ErlangLexer.Helper.beam
│   │       │       ├── Elixir.Makeup.Lexers.ErlangLexer.Testing.beam
│   │       │       ├── Elixir.Makeup.Lexers.ErlangLexer.beam
│   │       │       └── makeup_erlang.app
│   │       ├── mime
│   │       │   └── ebin
│   │       │       ├── Elixir.MIME.beam
│   │       │       └── mime.app
│   │       ├── nimble_parsec
│   │       │   └── ebin
│   │       │       ├── Elixir.Mix.Tasks.NimbleParsec.Compile.beam
│   │       │       ├── Elixir.NimbleParsec.Compiler.beam
│   │       │       ├── Elixir.NimbleParsec.Recorder.beam
│   │       │       ├── Elixir.NimbleParsec.beam
│   │       │       └── nimble_parsec.app
│   │       ├── phoenix
│   │       │   ├── ebin
│   │       │   │   ├── Elixir.Mix.Phoenix.Context.beam
│   │       │   │   ├── Elixir.Mix.Phoenix.Schema.beam
│   │       │   │   ├── Elixir.Mix.Phoenix.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Compile.Phoenix.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Digest.Clean.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Digest.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Auth.HashingLibrary.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Auth.Injector.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Auth.Migration.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Auth.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Cert.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Channel.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Context.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Embedded.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Html.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Json.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Live.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Notifier.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Presence.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Release.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Schema.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Secret.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Socket.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Gen.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Routes.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.Server.beam
│   │       │   │   ├── Elixir.Mix.Tasks.Phx.beam
│   │       │   │   ├── Elixir.Phoenix.ActionClauseError.beam
│   │       │   │   ├── Elixir.Phoenix.Channel.Server.beam
│   │       │   │   ├── Elixir.Phoenix.Channel.beam
│   │       │   │   ├── Elixir.Phoenix.ChannelTest.NoopSerializer.beam
│   │       │   │   ├── Elixir.Phoenix.ChannelTest.beam
│   │       │   │   ├── Elixir.Phoenix.CodeReloader.Proxy.beam
│   │       │   │   ├── Elixir.Phoenix.CodeReloader.Server.beam
│   │       │   │   ├── Elixir.Phoenix.CodeReloader.beam
│   │       │   │   ├── Elixir.Phoenix.Config.beam
│   │       │   │   ├── Elixir.Phoenix.ConnTest.beam
│   │       │   │   ├── Elixir.Phoenix.Controller.Pipeline.beam
│   │       │   │   ├── Elixir.Phoenix.Controller.beam
│   │       │   │   ├── Elixir.Phoenix.Digester.Compressor.beam
│   │       │   │   ├── Elixir.Phoenix.Digester.Gzip.beam
│   │       │   │   ├── Elixir.Phoenix.Digester.beam
│   │       │   │   ├── Elixir.Phoenix.Endpoint.Cowboy2Adapter.beam
│   │       │   │   ├── Elixir.Phoenix.Endpoint.RenderErrors.beam
│   │       │   │   ├── Elixir.Phoenix.Endpoint.Supervisor.beam
│   │       │   │   ├── Elixir.Phoenix.Endpoint.SyncCodeReloadPlug.beam
│   │       │   │   ├── Elixir.Phoenix.Endpoint.Watcher.beam
│   │       │   │   ├── Elixir.Phoenix.Endpoint.beam
│   │       │   │   ├── Elixir.Phoenix.Flash.beam
│   │       │   │   ├── Elixir.Phoenix.Logger.beam
│   │       │   │   ├── Elixir.Phoenix.MissingParamError.beam
│   │       │   │   ├── Elixir.Phoenix.Naming.beam
│   │       │   │   ├── Elixir.Phoenix.NotAcceptableError.beam
│   │       │   │   ├── Elixir.Phoenix.Param.Any.beam
│   │       │   │   ├── Elixir.Phoenix.Param.Atom.beam
│   │       │   │   ├── Elixir.Phoenix.Param.BitString.beam
│   │       │   │   ├── Elixir.Phoenix.Param.Float.beam
│   │       │   │   ├── Elixir.Phoenix.Param.Integer.beam
│   │       │   │   ├── Elixir.Phoenix.Param.Map.beam
│   │       │   │   ├── Elixir.Phoenix.Param.beam
│   │       │   │   ├── Elixir.Phoenix.Presence.Tracker.beam
│   │       │   │   ├── Elixir.Phoenix.Presence.beam
│   │       │   │   ├── Elixir.Phoenix.Router.ConsoleFormatter.beam
│   │       │   │   ├── Elixir.Phoenix.Router.Helpers.beam
│   │       │   │   ├── Elixir.Phoenix.Router.MalformedURIError.beam
│   │       │   │   ├── Elixir.Phoenix.Router.NoRouteError.beam
│   │       │   │   ├── Elixir.Phoenix.Router.Resource.beam
│   │       │   │   ├── Elixir.Phoenix.Router.Route.beam
│   │       │   │   ├── Elixir.Phoenix.Router.Scope.beam
│   │       │   │   ├── Elixir.Phoenix.Router.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.Broadcast.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.InvalidMessageError.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.Message.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.PoolDrainer.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.PoolSupervisor.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.Reply.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.Serializer.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.Transport.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.V1.JSONSerializer.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.V2.JSONSerializer.beam
│   │       │   │   ├── Elixir.Phoenix.Socket.beam
│   │       │   │   ├── Elixir.Phoenix.Token.beam
│   │       │   │   ├── Elixir.Phoenix.Transports.LongPoll.Server.beam
│   │       │   │   ├── Elixir.Phoenix.Transports.LongPoll.beam
│   │       │   │   ├── Elixir.Phoenix.Transports.WebSocket.beam
│   │       │   │   ├── Elixir.Phoenix.VerifiedRoutes.beam
│   │       │   │   ├── Elixir.Phoenix.beam
│   │       │   │   ├── Elixir.Plug.Exception.Phoenix.ActionClauseError.beam
│   │       │   │   └── phoenix.app
│   │       │   └── priv -> ../../../../deps/phoenix/priv
│   │       ├── phoenix_pubsub
│   │       │   └── ebin
│   │       │       ├── Elixir.Phoenix.PubSub.Adapter.beam
│   │       │       ├── Elixir.Phoenix.PubSub.Application.beam
│   │       │       ├── Elixir.Phoenix.PubSub.BroadcastError.beam
│   │       │       ├── Elixir.Phoenix.PubSub.PG2.beam
│   │       │       ├── Elixir.Phoenix.PubSub.PG2Worker.beam
│   │       │       ├── Elixir.Phoenix.PubSub.Supervisor.beam
│   │       │       ├── Elixir.Phoenix.PubSub.beam
│   │       │       ├── Elixir.Phoenix.Tracker.Clock.beam
│   │       │       ├── Elixir.Phoenix.Tracker.DeltaGeneration.beam
│   │       │       ├── Elixir.Phoenix.Tracker.Replica.beam
│   │       │       ├── Elixir.Phoenix.Tracker.Shard.beam
│   │       │       ├── Elixir.Phoenix.Tracker.ShutdownHandler.beam
│   │       │       ├── Elixir.Phoenix.Tracker.State.beam
│   │       │       ├── Elixir.Phoenix.Tracker.beam
│   │       │       └── phoenix_pubsub.app
│   │       ├── phoenix_template
│   │       │   └── ebin
│   │       │       ├── Elixir.Phoenix.Template.EExEngine.beam
│   │       │       ├── Elixir.Phoenix.Template.Engine.beam
│   │       │       ├── Elixir.Phoenix.Template.ExsEngine.beam
│   │       │       ├── Elixir.Phoenix.Template.beam
│   │       │       └── phoenix_template.app
│   │       ├── plug
│   │       │   └── ebin
│   │       │       ├── Elixir.Inspect.Plug.Conn.beam
│   │       │       ├── Elixir.Plug.Adapters.Cowboy.beam
│   │       │       ├── Elixir.Plug.Adapters.Test.Conn.beam
│   │       │       ├── Elixir.Plug.Application.beam
│   │       │       ├── Elixir.Plug.BadRequestError.beam
│   │       │       ├── Elixir.Plug.BasicAuth.beam
│   │       │       ├── Elixir.Plug.Builder.beam
│   │       │       ├── Elixir.Plug.CSRFProtection.InvalidCSRFTokenError.beam
│   │       │       ├── Elixir.Plug.CSRFProtection.InvalidCrossOriginRequestError.beam
│   │       │       ├── Elixir.Plug.CSRFProtection.beam
│   │       │       ├── Elixir.Plug.Conn.Adapter.beam
│   │       │       ├── Elixir.Plug.Conn.AlreadySentError.beam
│   │       │       ├── Elixir.Plug.Conn.CookieOverflowError.beam
│   │       │       ├── Elixir.Plug.Conn.Cookies.beam
│   │       │       ├── Elixir.Plug.Conn.InvalidHeaderError.beam
│   │       │       ├── Elixir.Plug.Conn.InvalidQueryError.beam
│   │       │       ├── Elixir.Plug.Conn.NotSentError.beam
│   │       │       ├── Elixir.Plug.Conn.Query.beam
│   │       │       ├── Elixir.Plug.Conn.Status.beam
│   │       │       ├── Elixir.Plug.Conn.Unfetched.beam
│   │       │       ├── Elixir.Plug.Conn.Utils.beam
│   │       │       ├── Elixir.Plug.Conn.WrapperError.beam
│   │       │       ├── Elixir.Plug.Conn.beam
│   │       │       ├── Elixir.Plug.Debugger.beam
│   │       │       ├── Elixir.Plug.ErrorHandler.beam
│   │       │       ├── Elixir.Plug.Exception.Any.beam
│   │       │       ├── Elixir.Plug.Exception.beam
│   │       │       ├── Elixir.Plug.HTML.beam
│   │       │       ├── Elixir.Plug.Head.beam
│   │       │       ├── Elixir.Plug.Logger.beam
│   │       │       ├── Elixir.Plug.MIME.beam
│   │       │       ├── Elixir.Plug.MethodOverride.beam
│   │       │       ├── Elixir.Plug.Parsers.BadEncodingError.beam
│   │       │       ├── Elixir.Plug.Parsers.JSON.beam
│   │       │       ├── Elixir.Plug.Parsers.MULTIPART.beam
│   │       │       ├── Elixir.Plug.Parsers.ParseError.beam
│   │       │       ├── Elixir.Plug.Parsers.RequestTooLargeError.beam
│   │       │       ├── Elixir.Plug.Parsers.URLENCODED.beam
│   │       │       ├── Elixir.Plug.Parsers.UnsupportedMediaTypeError.beam
│   │       │       ├── Elixir.Plug.Parsers.beam
│   │       │       ├── Elixir.Plug.RequestId.beam
│   │       │       ├── Elixir.Plug.RewriteOn.beam
│   │       │       ├── Elixir.Plug.Router.InvalidSpecError.beam
│   │       │       ├── Elixir.Plug.Router.MalformedURIError.beam
│   │       │       ├── Elixir.Plug.Router.Utils.beam
│   │       │       ├── Elixir.Plug.Router.beam
│   │       │       ├── Elixir.Plug.SSL.beam
│   │       │       ├── Elixir.Plug.Session.COOKIE.beam
│   │       │       ├── Elixir.Plug.Session.ETS.beam
│   │       │       ├── Elixir.Plug.Session.Store.beam
│   │       │       ├── Elixir.Plug.Session.beam
│   │       │       ├── Elixir.Plug.Static.InvalidPathError.beam
│   │       │       ├── Elixir.Plug.Static.beam
│   │       │       ├── Elixir.Plug.Telemetry.beam
│   │       │       ├── Elixir.Plug.Test.beam
│   │       │       ├── Elixir.Plug.TimeoutError.beam
│   │       │       ├── Elixir.Plug.Upload.Supervisor.beam
│   │       │       ├── Elixir.Plug.Upload.Terminator.beam
│   │       │       ├── Elixir.Plug.Upload.beam
│   │       │       ├── Elixir.Plug.UploadError.beam
│   │       │       ├── Elixir.Plug.beam
│   │       │       ├── plug.app
│   │       │       └── plug_multipart.beam
│   │       ├── plug_crypto
│   │       │   └── ebin
│   │       │       ├── Elixir.Plug.Crypto.Application.beam
│   │       │       ├── Elixir.Plug.Crypto.KeyGenerator.beam
│   │       │       ├── Elixir.Plug.Crypto.MessageEncryptor.beam
│   │       │       ├── Elixir.Plug.Crypto.MessageVerifier.beam
│   │       │       ├── Elixir.Plug.Crypto.beam
│   │       │       └── plug_crypto.app
│   │       ├── postgrex
│   │       │   └── ebin
│   │       │       ├── Elixir.Collectable.Postgrex.Stream.beam
│   │       │       ├── Elixir.DBConnection.Query.Postgrex.Copy.beam
│   │       │       ├── Elixir.DBConnection.Query.Postgrex.Parameters.beam
│   │       │       ├── Elixir.DBConnection.Query.Postgrex.Query.beam
│   │       │       ├── Elixir.Enumerable.Postgrex.Stream.beam
│   │       │       ├── Elixir.Inspect.Postgrex.Stream.beam
│   │       │       ├── Elixir.Postgrex.App.beam
│   │       │       ├── Elixir.Postgrex.BinaryExtension.beam
│   │       │       ├── Elixir.Postgrex.BinaryUtils.beam
│   │       │       ├── Elixir.Postgrex.Box.beam
│   │       │       ├── Elixir.Postgrex.Circle.beam
│   │       │       ├── Elixir.Postgrex.Copy.beam
│   │       │       ├── Elixir.Postgrex.Cursor.beam
│   │       │       ├── Elixir.Postgrex.DefaultTypes.beam
│   │       │       ├── Elixir.Postgrex.Error.beam
│   │       │       ├── Elixir.Postgrex.ErrorCode.beam
│   │       │       ├── Elixir.Postgrex.Extension.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Array.beam
│   │       │       ├── Elixir.Postgrex.Extensions.BitString.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Bool.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Box.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Circle.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Date.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Float4.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Float8.beam
│   │       │       ├── Elixir.Postgrex.Extensions.HStore.beam
│   │       │       ├── Elixir.Postgrex.Extensions.INET.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Int2.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Int4.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Int8.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Interval.beam
│   │       │       ├── Elixir.Postgrex.Extensions.JSON.beam
│   │       │       ├── Elixir.Postgrex.Extensions.JSONB.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Line.beam
│   │       │       ├── Elixir.Postgrex.Extensions.LineSegment.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Lquery.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Ltree.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Ltxtquery.beam
│   │       │       ├── Elixir.Postgrex.Extensions.MACADDR.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Multirange.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Name.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Numeric.beam
│   │       │       ├── Elixir.Postgrex.Extensions.OID.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Path.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Point.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Polygon.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Range.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Raw.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Record.beam
│   │       │       ├── Elixir.Postgrex.Extensions.TID.beam
│   │       │       ├── Elixir.Postgrex.Extensions.TSVector.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Time.beam
│   │       │       ├── Elixir.Postgrex.Extensions.TimeTZ.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Timestamp.beam
│   │       │       ├── Elixir.Postgrex.Extensions.TimestampTZ.beam
│   │       │       ├── Elixir.Postgrex.Extensions.UUID.beam
│   │       │       ├── Elixir.Postgrex.Extensions.VoidBinary.beam
│   │       │       ├── Elixir.Postgrex.Extensions.VoidText.beam
│   │       │       ├── Elixir.Postgrex.Extensions.Xid8.beam
│   │       │       ├── Elixir.Postgrex.INET.beam
│   │       │       ├── Elixir.Postgrex.Interval.beam
│   │       │       ├── Elixir.Postgrex.Lexeme.beam
│   │       │       ├── Elixir.Postgrex.Line.beam
│   │       │       ├── Elixir.Postgrex.LineSegment.beam
│   │       │       ├── Elixir.Postgrex.MACADDR.beam
│   │       │       ├── Elixir.Postgrex.Messages.beam
│   │       │       ├── Elixir.Postgrex.Multirange.beam
│   │       │       ├── Elixir.Postgrex.Notifications.beam
│   │       │       ├── Elixir.Postgrex.Parameters.beam
│   │       │       ├── Elixir.Postgrex.Path.beam
│   │       │       ├── Elixir.Postgrex.Point.beam
│   │       │       ├── Elixir.Postgrex.Polygon.beam
│   │       │       ├── Elixir.Postgrex.Protocol.beam
│   │       │       ├── Elixir.Postgrex.Query.beam
│   │       │       ├── Elixir.Postgrex.QueryError.beam
│   │       │       ├── Elixir.Postgrex.Range.beam
│   │       │       ├── Elixir.Postgrex.ReplicationConnection.beam
│   │       │       ├── Elixir.Postgrex.Result.beam
│   │       │       ├── Elixir.Postgrex.SCRAM.LockedCache.beam
│   │       │       ├── Elixir.Postgrex.SCRAM.beam
│   │       │       ├── Elixir.Postgrex.SimpleConnection.beam
│   │       │       ├── Elixir.Postgrex.Stream.beam
│   │       │       ├── Elixir.Postgrex.SuperExtension.beam
│   │       │       ├── Elixir.Postgrex.TypeInfo.beam
│   │       │       ├── Elixir.Postgrex.TypeModule.beam
│   │       │       ├── Elixir.Postgrex.TypeServer.beam
│   │       │       ├── Elixir.Postgrex.TypeSupervisor.beam
│   │       │       ├── Elixir.Postgrex.Types.beam
│   │       │       ├── Elixir.Postgrex.Utils.beam
│   │       │       ├── Elixir.Postgrex.beam
│   │       │       ├── Elixir.String.Chars.Postgrex.Copy.beam
│   │       │       ├── Elixir.String.Chars.Postgrex.Query.beam
│   │       │       └── postgrex.app
│   │       ├── statistex
│   │       │   └── ebin
│   │       │       ├── Elixir.Statistex.Helper.beam
│   │       │       ├── Elixir.Statistex.Mode.beam
│   │       │       ├── Elixir.Statistex.Percentile.beam
│   │       │       ├── Elixir.Statistex.beam
│   │       │       └── statistex.app
│   │       ├── telemetry
│   │       │   ├── ebin
│   │       │   │   ├── telemetry.app
│   │       │   │   ├── telemetry.beam
│   │       │   │   ├── telemetry_app.beam
│   │       │   │   ├── telemetry_handler_table.beam
│   │       │   │   ├── telemetry_sup.beam
│   │       │   │   └── telemetry_test.beam
│   │       │   └── mix.rebar.config
│   │       ├── telemetry_metrics
│   │       │   └── ebin
│   │       │       ├── Elixir.Telemetry.Metrics.ConsoleReporter.beam
│   │       │       ├── Elixir.Telemetry.Metrics.Counter.beam
│   │       │       ├── Elixir.Telemetry.Metrics.Distribution.beam
│   │       │       ├── Elixir.Telemetry.Metrics.LastValue.beam
│   │       │       ├── Elixir.Telemetry.Metrics.Sum.beam
│   │       │       ├── Elixir.Telemetry.Metrics.Summary.beam
│   │       │       ├── Elixir.Telemetry.Metrics.beam
│   │       │       └── telemetry_metrics.app
│   │       ├── telemetry_poller
│   │       │   ├── ebin
│   │       │   │   ├── telemetry_poller.app
│   │       │   │   ├── telemetry_poller.beam
│   │       │   │   ├── telemetry_poller_app.beam
│   │       │   │   ├── telemetry_poller_builtin.beam
│   │       │   │   └── telemetry_poller_sup.beam
│   │       │   └── mix.rebar.config
│   │       ├── telemetry_registry
│   │       │   └── ebin
│   │       │       ├── Elixir.TelemetryRegistry.beam
│   │       │       ├── telemetry_registry.app
│   │       │       └── telemetry_registry.beam
│   │       ├── websock
│   │       │   └── ebin
│   │       │       ├── Elixir.WebSock.beam
│   │       │       └── websock.app
│   │       └── websock_adapter
│   │           └── ebin
│   │               ├── Elixir.WebSockAdapter.UpgradeError.beam
│   │               ├── Elixir.WebSockAdapter.UpgradeValidation.beam
│   │               ├── Elixir.WebSockAdapter.beam
│   │               └── websock_adapter.app
│   └── test
│       └── lib
│           ├── backoff
│           │   ├── ebin
│           │   │   ├── backoff.app
│           │   │   └── backoff.beam
│           │   └── mix.rebar.config
│           ├── bunt
│           │   └── ebin
│           │       ├── Elixir.Bunt.ANSI.Sequence.beam
│           │       ├── Elixir.Bunt.ANSI.beam
│           │       ├── Elixir.Bunt.beam
│           │       └── bunt.app
│           ├── castore
│           │   ├── ebin
│           │   │   ├── Elixir.CAStore.beam
│           │   │   └── castore.app
│           │   └── priv -> ../../../../deps/castore/priv
│           ├── chess_server
│           │   ├── consolidated
│           │   │   ├── Elixir.Collectable.beam
│           │   │   ├── Elixir.Commanded.Event.Upcaster.beam
│           │   │   ├── Elixir.Commanded.Serialization.JsonDecoder.beam
│           │   │   ├── Elixir.DBConnection.Query.beam
│           │   │   ├── Elixir.Ecto.Queryable.beam
│           │   │   ├── Elixir.Enumerable.beam
│           │   │   ├── Elixir.Hex.Solver.Constraint.beam
│           │   │   ├── Elixir.IEx.Info.beam
│           │   │   ├── Elixir.Inspect.beam
│           │   │   ├── Elixir.Jason.Encoder.beam
│           │   │   ├── Elixir.List.Chars.beam
│           │   │   ├── Elixir.Phoenix.Param.beam
│           │   │   ├── Elixir.Plug.Exception.beam
│           │   │   └── Elixir.String.Chars.beam
│           │   ├── ebin
│           │   │   ├── Elixir.ChessServer.App.beam
│           │   │   ├── Elixir.ChessServer.Application.beam
│           │   │   ├── Elixir.ChessServer.Chess.beam
│           │   │   ├── Elixir.ChessServer.DataCase.beam
│           │   │   ├── Elixir.ChessServer.Domain.Board.beam
│           │   │   ├── Elixir.ChessServer.Domain.Color.beam
│           │   │   ├── Elixir.ChessServer.Domain.Commands.CreateGame.beam
│           │   │   ├── Elixir.ChessServer.Domain.Commands.MakeMove.beam
│           │   │   ├── Elixir.ChessServer.Domain.GameState.beam
│           │   │   ├── Elixir.ChessServer.Domain.Logic.CheckValidator.beam
│           │   │   ├── Elixir.ChessServer.Domain.Logic.GameRules.beam
│           │   │   ├── Elixir.ChessServer.Domain.Move.beam
│           │   │   ├── Elixir.ChessServer.Domain.MoveValidator.beam
│           │   │   ├── Elixir.ChessServer.Domain.Piece.beam
│           │   │   ├── Elixir.ChessServer.Domain.Position.beam
│           │   │   ├── Elixir.ChessServer.EventStore.beam
│           │   │   ├── Elixir.ChessServer.Game.Finished.beam
│           │   │   ├── Elixir.ChessServer.Game.KingChecked.beam
│           │   │   ├── Elixir.ChessServer.Game.PawnPromoted.beam
│           │   │   ├── Elixir.ChessServer.Game.PieceCaptured.beam
│           │   │   ├── Elixir.ChessServer.Game.Progressed.beam
│           │   │   ├── Elixir.ChessServer.Game.Started.beam
│           │   │   ├── Elixir.ChessServer.Game.beam
│           │   │   ├── Elixir.ChessServer.Infrastructure.Projections.Game.beam
│           │   │   ├── Elixir.ChessServer.Infrastructure.Projectors.GameProjector.beam
│           │   │   ├── Elixir.ChessServer.Repo.beam
│           │   │   ├── Elixir.ChessServer.Router.beam
│           │   │   ├── Elixir.ChessServerWeb.Endpoint.beam
│           │   │   ├── Elixir.ChessServerWeb.ErrorJSON.beam
│           │   │   ├── Elixir.ChessServerWeb.FallbackController.beam
│           │   │   ├── Elixir.ChessServerWeb.GameController.beam
│           │   │   ├── Elixir.ChessServerWeb.GameJSON.beam
│           │   │   ├── Elixir.ChessServerWeb.Gettext.beam
│           │   │   ├── Elixir.ChessServerWeb.Router.beam
│           │   │   ├── Elixir.ChessServerWeb.Telemetry.beam
│           │   │   ├── Elixir.ChessServerWeb.beam
│           │   │   ├── Elixir.Jason.Encoder.ChessServer.Domain.Commands.CreateGame.beam
│           │   │   ├── Elixir.Jason.Encoder.ChessServer.Domain.Commands.MakeMove.beam
│           │   │   ├── Elixir.Jason.Encoder.ChessServer.Game.Finished.beam
│           │   │   ├── Elixir.Jason.Encoder.ChessServer.Game.KingChecked.beam
│           │   │   ├── Elixir.Jason.Encoder.ChessServer.Game.PawnPromoted.beam
│           │   │   ├── Elixir.Jason.Encoder.ChessServer.Game.PieceCaptured.beam
│           │   │   ├── Elixir.Jason.Encoder.ChessServer.Game.Progressed.beam
│           │   │   ├── Elixir.Jason.Encoder.ChessServer.Game.Started.beam
│           │   │   └── chess_server.app
│           │   └── priv -> ../../../../priv
│           ├── commanded
│           │   └── ebin
│           │       ├── Elixir.Commanded.Aggregate.Multi.beam
│           │       ├── Elixir.Commanded.Aggregates.Aggregate.beam
│           │       ├── Elixir.Commanded.Aggregates.AggregateLifespan.beam
│           │       ├── Elixir.Commanded.Aggregates.AggregateStateBuilder.beam
│           │       ├── Elixir.Commanded.Aggregates.DefaultLifespan.beam
│           │       ├── Elixir.Commanded.Aggregates.ExecutionContext.beam
│           │       ├── Elixir.Commanded.Aggregates.Supervisor.beam
│           │       ├── Elixir.Commanded.Application.Config.beam
│           │       ├── Elixir.Commanded.Application.Supervisor.beam
│           │       ├── Elixir.Commanded.Application.beam
│           │       ├── Elixir.Commanded.Assertions.EventAssertions.beam
│           │       ├── Elixir.Commanded.Commands.CompositeRouter.beam
│           │       ├── Elixir.Commanded.Commands.Dispatcher.Payload.beam
│           │       ├── Elixir.Commanded.Commands.Dispatcher.beam
│           │       ├── Elixir.Commanded.Commands.ExecutionResult.beam
│           │       ├── Elixir.Commanded.Commands.Handler.beam
│           │       ├── Elixir.Commanded.Commands.Router.beam
│           │       ├── Elixir.Commanded.Enumerable.beam
│           │       ├── Elixir.Commanded.Event.ErrorHandler.beam
│           │       ├── Elixir.Commanded.Event.FailureContext.beam
│           │       ├── Elixir.Commanded.Event.Handler.Supervisor.beam
│           │       ├── Elixir.Commanded.Event.Handler.beam
│           │       ├── Elixir.Commanded.Event.Mapper.beam
│           │       ├── Elixir.Commanded.Event.Upcast.beam
│           │       ├── Elixir.Commanded.Event.Upcaster.Any.beam
│           │       ├── Elixir.Commanded.Event.Upcaster.beam
│           │       ├── Elixir.Commanded.EventStore.Adapter.beam
│           │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.PersistentSubscription.beam
│           │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.State.beam
│           │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.Subscriber.beam
│           │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.Subscription.beam
│           │       ├── Elixir.Commanded.EventStore.Adapters.InMemory.beam
│           │       ├── Elixir.Commanded.EventStore.EventData.beam
│           │       ├── Elixir.Commanded.EventStore.RecordedEvent.beam
│           │       ├── Elixir.Commanded.EventStore.SnapshotData.beam
│           │       ├── Elixir.Commanded.EventStore.Subscription.beam
│           │       ├── Elixir.Commanded.EventStore.TypeProvider.beam
│           │       ├── Elixir.Commanded.EventStore.beam
│           │       ├── Elixir.Commanded.Helpers.CommandAuditMiddleware.AuditLog.beam
│           │       ├── Elixir.Commanded.Helpers.CommandAuditMiddleware.beam
│           │       ├── Elixir.Commanded.Helpers.CompileTimeAssertions.beam
│           │       ├── Elixir.Commanded.Helpers.EventFactory.beam
│           │       ├── Elixir.Commanded.Helpers.ProcessHelper.beam
│           │       ├── Elixir.Commanded.Helpers.Wait.beam
│           │       ├── Elixir.Commanded.Middleware.ConsistencyGuarantee.beam
│           │       ├── Elixir.Commanded.Middleware.ExtractAggregateIdentity.beam
│           │       ├── Elixir.Commanded.Middleware.Logger.beam
│           │       ├── Elixir.Commanded.Middleware.Pipeline.beam
│           │       ├── Elixir.Commanded.Middleware.beam
│           │       ├── Elixir.Commanded.ProcessManagers.FailureContext.beam
│           │       ├── Elixir.Commanded.ProcessManagers.ProcessManager.beam
│           │       ├── Elixir.Commanded.ProcessManagers.ProcessManagerInstance.State.beam
│           │       ├── Elixir.Commanded.ProcessManagers.ProcessManagerInstance.beam
│           │       ├── Elixir.Commanded.ProcessManagers.ProcessRouter.State.beam
│           │       ├── Elixir.Commanded.ProcessManagers.ProcessRouter.beam
│           │       ├── Elixir.Commanded.ProcessManagers.Supervisor.beam
│           │       ├── Elixir.Commanded.PubSub.Adapter.beam
│           │       ├── Elixir.Commanded.PubSub.LocalPubSub.beam
│           │       ├── Elixir.Commanded.PubSub.PhoenixPubSub.Tracker.beam
│           │       ├── Elixir.Commanded.PubSub.PhoenixPubSub.beam
│           │       ├── Elixir.Commanded.PubSub.beam
│           │       ├── Elixir.Commanded.Registration.Adapter.beam
│           │       ├── Elixir.Commanded.Registration.GlobalRegistry.beam
│           │       ├── Elixir.Commanded.Registration.LocalRegistry.beam
│           │       ├── Elixir.Commanded.Registration.beam
│           │       ├── Elixir.Commanded.Serialization.JsonDecoder.Any.beam
│           │       ├── Elixir.Commanded.Serialization.JsonDecoder.beam
│           │       ├── Elixir.Commanded.Serialization.JsonSerializer.beam
│           │       ├── Elixir.Commanded.Serialization.ModuleNameTypeProvider.beam
│           │       ├── Elixir.Commanded.Serialization.Serializer.beam
│           │       ├── Elixir.Commanded.Snapshotting.beam
│           │       ├── Elixir.Commanded.Subscriptions.Registry.beam
│           │       ├── Elixir.Commanded.Subscriptions.beam
│           │       ├── Elixir.Commanded.Telemetry.beam
│           │       ├── Elixir.Commanded.UUID.beam
│           │       ├── Elixir.Commanded.beam
│           │       ├── Elixir.Jason.Encoder.Commanded.EventStore.SnapshotData.beam
│           │       ├── Elixir.Mix.Tasks.Commanded.Reset.beam
│           │       └── commanded.app
│           ├── credo
│           │   └── ebin
│           │       ├── Elixir.Credo.Application.beam
│           │       ├── Elixir.Credo.CLI.Command.Categories.CategoriesCommand.beam
│           │       ├── Elixir.Credo.CLI.Command.Categories.CategoriesOutput.beam
│           │       ├── Elixir.Credo.CLI.Command.Categories.Output.Default.beam
│           │       ├── Elixir.Credo.CLI.Command.Categories.Output.Json.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.DiffCommand.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.DiffOutput.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.DiffSummary.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.Output.Default.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.Output.FlyCheck.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.Output.Json.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.Output.Oneline.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.Task.FilterIssues.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.Task.FilterIssuesForExitStatus.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.Task.GetGitDiff.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.Task.PrintBeforeInfo.beam
│           │       ├── Elixir.Credo.CLI.Command.Diff.Task.PrintResultsAndSummary.beam
│           │       ├── Elixir.Credo.CLI.Command.Explain.ExplainCommand.ExplainCheck.beam
│           │       ├── Elixir.Credo.CLI.Command.Explain.ExplainCommand.ExplainIssue.beam
│           │       ├── Elixir.Credo.CLI.Command.Explain.ExplainCommand.ExplainIssuePreCheck.beam
│           │       ├── Elixir.Credo.CLI.Command.Explain.ExplainCommand.beam
│           │       ├── Elixir.Credo.CLI.Command.Explain.ExplainOutput.beam
│           │       ├── Elixir.Credo.CLI.Command.Explain.Output.Default.beam
│           │       ├── Elixir.Credo.CLI.Command.Explain.Output.Json.beam
│           │       ├── Elixir.Credo.CLI.Command.GenCheck.beam
│           │       ├── Elixir.Credo.CLI.Command.GenConfig.beam
│           │       ├── Elixir.Credo.CLI.Command.Help.beam
│           │       ├── Elixir.Credo.CLI.Command.Info.InfoCommand.PrintInfo.beam
│           │       ├── Elixir.Credo.CLI.Command.Info.InfoCommand.beam
│           │       ├── Elixir.Credo.CLI.Command.Info.InfoOutput.beam
│           │       ├── Elixir.Credo.CLI.Command.Info.Output.Default.beam
│           │       ├── Elixir.Credo.CLI.Command.Info.Output.Json.beam
│           │       ├── Elixir.Credo.CLI.Command.List.ListCommand.PrintBeforeInfo.beam
│           │       ├── Elixir.Credo.CLI.Command.List.ListCommand.PrintResultsAndSummary.beam
│           │       ├── Elixir.Credo.CLI.Command.List.ListCommand.beam
│           │       ├── Elixir.Credo.CLI.Command.List.ListOutput.beam
│           │       ├── Elixir.Credo.CLI.Command.List.Output.Default.beam
│           │       ├── Elixir.Credo.CLI.Command.List.Output.FlyCheck.beam
│           │       ├── Elixir.Credo.CLI.Command.List.Output.Json.beam
│           │       ├── Elixir.Credo.CLI.Command.List.Output.Oneline.beam
│           │       ├── Elixir.Credo.CLI.Command.List.Output.Sarif.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.Output.Default.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.Output.FlyCheck.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.Output.Json.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.Output.Oneline.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.Output.Sarif.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestCommand.ManipulateConfigIfRerun.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestCommand.PrintBeforeInfo.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestCommand.PrintResultsAndSummary.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestCommand.beam
│           │       ├── Elixir.Credo.CLI.Command.Suggest.SuggestOutput.beam
│           │       ├── Elixir.Credo.CLI.Command.Version.beam
│           │       ├── Elixir.Credo.CLI.Command.beam
│           │       ├── Elixir.Credo.CLI.ExitStatus.beam
│           │       ├── Elixir.Credo.CLI.Filename.beam
│           │       ├── Elixir.Credo.CLI.Filter.beam
│           │       ├── Elixir.Credo.CLI.Options.beam
│           │       ├── Elixir.Credo.CLI.Output.FirstRunHint.beam
│           │       ├── Elixir.Credo.CLI.Output.FormatDelegator.beam
│           │       ├── Elixir.Credo.CLI.Output.Formatter.Flycheck.beam
│           │       ├── Elixir.Credo.CLI.Output.Formatter.JSON.beam
│           │       ├── Elixir.Credo.CLI.Output.Formatter.Oneline.beam
│           │       ├── Elixir.Credo.CLI.Output.Formatter.SARIF.beam
│           │       ├── Elixir.Credo.CLI.Output.Shell.beam
│           │       ├── Elixir.Credo.CLI.Output.Summary.beam
│           │       ├── Elixir.Credo.CLI.Output.UI.beam
│           │       ├── Elixir.Credo.CLI.Output.beam
│           │       ├── Elixir.Credo.CLI.Sorter.beam
│           │       ├── Elixir.Credo.CLI.Switch.beam
│           │       ├── Elixir.Credo.CLI.Task.LoadAndValidateSourceFiles.beam
│           │       ├── Elixir.Credo.CLI.Task.PrepareChecksToRun.beam
│           │       ├── Elixir.Credo.CLI.Task.RunChecks.beam
│           │       ├── Elixir.Credo.CLI.Task.SetRelevantIssues.beam
│           │       ├── Elixir.Credo.CLI.beam
│           │       ├── Elixir.Credo.Check.ConfigComment.beam
│           │       ├── Elixir.Credo.Check.ConfigCommentFinder.beam
│           │       ├── Elixir.Credo.Check.Consistency.Collector.beam
│           │       ├── Elixir.Credo.Check.Consistency.ExceptionNames.Collector.beam
│           │       ├── Elixir.Credo.Check.Consistency.ExceptionNames.beam
│           │       ├── Elixir.Credo.Check.Consistency.LineEndings.Collector.beam
│           │       ├── Elixir.Credo.Check.Consistency.LineEndings.beam
│           │       ├── Elixir.Credo.Check.Consistency.MultiAliasImportRequireUse.Collector.beam
│           │       ├── Elixir.Credo.Check.Consistency.MultiAliasImportRequireUse.beam
│           │       ├── Elixir.Credo.Check.Consistency.ParameterPatternMatching.Collector.beam
│           │       ├── Elixir.Credo.Check.Consistency.ParameterPatternMatching.beam
│           │       ├── Elixir.Credo.Check.Consistency.SpaceAroundOperators.Collector.beam
│           │       ├── Elixir.Credo.Check.Consistency.SpaceAroundOperators.SpaceHelper.beam
│           │       ├── Elixir.Credo.Check.Consistency.SpaceAroundOperators.beam
│           │       ├── Elixir.Credo.Check.Consistency.SpaceInParentheses.Collector.beam
│           │       ├── Elixir.Credo.Check.Consistency.SpaceInParentheses.beam
│           │       ├── Elixir.Credo.Check.Consistency.TabsOrSpaces.Collector.beam
│           │       ├── Elixir.Credo.Check.Consistency.TabsOrSpaces.beam
│           │       ├── Elixir.Credo.Check.Consistency.UnusedVariableNames.Collector.beam
│           │       ├── Elixir.Credo.Check.Consistency.UnusedVariableNames.beam
│           │       ├── Elixir.Credo.Check.Context.beam
│           │       ├── Elixir.Credo.Check.Design.AliasUsage.beam
│           │       ├── Elixir.Credo.Check.Design.DuplicatedCode.beam
│           │       ├── Elixir.Credo.Check.Design.SkipTestWithoutComment.beam
│           │       ├── Elixir.Credo.Check.Design.TagFIXME.beam
│           │       ├── Elixir.Credo.Check.Design.TagHelper.beam
│           │       ├── Elixir.Credo.Check.Design.TagTODO.beam
│           │       ├── Elixir.Credo.Check.Params.beam
│           │       ├── Elixir.Credo.Check.Readability.AliasAs.beam
│           │       ├── Elixir.Credo.Check.Readability.AliasOrder.beam
│           │       ├── Elixir.Credo.Check.Readability.BlockPipe.beam
│           │       ├── Elixir.Credo.Check.Readability.FunctionNames.beam
│           │       ├── Elixir.Credo.Check.Readability.ImplTrue.beam
│           │       ├── Elixir.Credo.Check.Readability.LargeNumbers.beam
│           │       ├── Elixir.Credo.Check.Readability.MaxLineLength.beam
│           │       ├── Elixir.Credo.Check.Readability.ModuleAttributeNames.beam
│           │       ├── Elixir.Credo.Check.Readability.ModuleDoc.beam
│           │       ├── Elixir.Credo.Check.Readability.ModuleNames.beam
│           │       ├── Elixir.Credo.Check.Readability.MultiAlias.beam
│           │       ├── Elixir.Credo.Check.Readability.NestedFunctionCalls.PipeHelper.beam
│           │       ├── Elixir.Credo.Check.Readability.NestedFunctionCalls.beam
│           │       ├── Elixir.Credo.Check.Readability.OneArityFunctionInPipe.beam
│           │       ├── Elixir.Credo.Check.Readability.OnePipePerLine.beam
│           │       ├── Elixir.Credo.Check.Readability.ParenthesesInCondition.beam
│           │       ├── Elixir.Credo.Check.Readability.ParenthesesOnZeroArityDefs.beam
│           │       ├── Elixir.Credo.Check.Readability.PipeIntoAnonymousFunctions.beam
│           │       ├── Elixir.Credo.Check.Readability.PredicateFunctionNames.beam
│           │       ├── Elixir.Credo.Check.Readability.PreferImplicitTry.beam
│           │       ├── Elixir.Credo.Check.Readability.PreferUnquotedAtoms.beam
│           │       ├── Elixir.Credo.Check.Readability.RedundantBlankLines.beam
│           │       ├── Elixir.Credo.Check.Readability.Semicolons.beam
│           │       ├── Elixir.Credo.Check.Readability.SeparateAliasRequire.beam
│           │       ├── Elixir.Credo.Check.Readability.SingleFunctionToBlockPipe.beam
│           │       ├── Elixir.Credo.Check.Readability.SinglePipe.beam
│           │       ├── Elixir.Credo.Check.Readability.SpaceAfterCommas.beam
│           │       ├── Elixir.Credo.Check.Readability.Specs.beam
│           │       ├── Elixir.Credo.Check.Readability.StrictModuleLayout.beam
│           │       ├── Elixir.Credo.Check.Readability.StringSigils.beam
│           │       ├── Elixir.Credo.Check.Readability.TrailingBlankLine.beam
│           │       ├── Elixir.Credo.Check.Readability.TrailingWhiteSpace.beam
│           │       ├── Elixir.Credo.Check.Readability.UnnecessaryAliasExpansion.beam
│           │       ├── Elixir.Credo.Check.Readability.VariableNames.beam
│           │       ├── Elixir.Credo.Check.Readability.WithCustomTaggedTuple.beam
│           │       ├── Elixir.Credo.Check.Readability.WithSingleClause.beam
│           │       ├── Elixir.Credo.Check.Refactor.ABCSize.beam
│           │       ├── Elixir.Credo.Check.Refactor.AppendSingleItem.beam
│           │       ├── Elixir.Credo.Check.Refactor.Apply.beam
│           │       ├── Elixir.Credo.Check.Refactor.CaseTrivialMatches.beam
│           │       ├── Elixir.Credo.Check.Refactor.CondStatements.beam
│           │       ├── Elixir.Credo.Check.Refactor.CyclomaticComplexity.beam
│           │       ├── Elixir.Credo.Check.Refactor.DoubleBooleanNegation.beam
│           │       ├── Elixir.Credo.Check.Refactor.EnumHelpers.beam
│           │       ├── Elixir.Credo.Check.Refactor.FilterCount.beam
│           │       ├── Elixir.Credo.Check.Refactor.FilterFilter.beam
│           │       ├── Elixir.Credo.Check.Refactor.FilterReject.beam
│           │       ├── Elixir.Credo.Check.Refactor.FunctionArity.beam
│           │       ├── Elixir.Credo.Check.Refactor.IoPuts.beam
│           │       ├── Elixir.Credo.Check.Refactor.LongQuoteBlocks.beam
│           │       ├── Elixir.Credo.Check.Refactor.MapInto.beam
│           │       ├── Elixir.Credo.Check.Refactor.MapJoin.beam
│           │       ├── Elixir.Credo.Check.Refactor.MapMap.beam
│           │       ├── Elixir.Credo.Check.Refactor.MatchInCondition.beam
│           │       ├── Elixir.Credo.Check.Refactor.ModuleDependencies.beam
│           │       ├── Elixir.Credo.Check.Refactor.NegatedConditionsInUnless.beam
│           │       ├── Elixir.Credo.Check.Refactor.NegatedConditionsWithElse.beam
│           │       ├── Elixir.Credo.Check.Refactor.NegatedIsNil.beam
│           │       ├── Elixir.Credo.Check.Refactor.Nesting.beam
│           │       ├── Elixir.Credo.Check.Refactor.PassAsyncInTestCases.beam
│           │       ├── Elixir.Credo.Check.Refactor.PerceivedComplexity.beam
│           │       ├── Elixir.Credo.Check.Refactor.PipeChainStart.beam
│           │       ├── Elixir.Credo.Check.Refactor.RedundantWithClauseResult.beam
│           │       ├── Elixir.Credo.Check.Refactor.RejectFilter.beam
│           │       ├── Elixir.Credo.Check.Refactor.RejectReject.beam
│           │       ├── Elixir.Credo.Check.Refactor.UnlessWithElse.beam
│           │       ├── Elixir.Credo.Check.Refactor.UtcNowTruncate.beam
│           │       ├── Elixir.Credo.Check.Refactor.VariableRebinding.beam
│           │       ├── Elixir.Credo.Check.Refactor.WithClauses.beam
│           │       ├── Elixir.Credo.Check.Runner.beam
│           │       ├── Elixir.Credo.Check.Warning.ApplicationConfigInModuleAttribute.beam
│           │       ├── Elixir.Credo.Check.Warning.BoolOperationOnSameValues.beam
│           │       ├── Elixir.Credo.Check.Warning.Dbg.beam
│           │       ├── Elixir.Credo.Check.Warning.ExpensiveEmptyEnumCheck.beam
│           │       ├── Elixir.Credo.Check.Warning.ForbiddenModule.beam
│           │       ├── Elixir.Credo.Check.Warning.IExPry.beam
│           │       ├── Elixir.Credo.Check.Warning.IoInspect.beam
│           │       ├── Elixir.Credo.Check.Warning.LazyLogging.beam
│           │       ├── Elixir.Credo.Check.Warning.LeakyEnvironment.beam
│           │       ├── Elixir.Credo.Check.Warning.MapGetUnsafePass.beam
│           │       ├── Elixir.Credo.Check.Warning.MissedMetadataKeyInLoggerConfig.beam
│           │       ├── Elixir.Credo.Check.Warning.MixEnv.beam
│           │       ├── Elixir.Credo.Check.Warning.OperationOnSameValues.beam
│           │       ├── Elixir.Credo.Check.Warning.OperationWithConstantResult.beam
│           │       ├── Elixir.Credo.Check.Warning.RaiseInsideRescue.beam
│           │       ├── Elixir.Credo.Check.Warning.SpecWithStruct.beam
│           │       ├── Elixir.Credo.Check.Warning.StructFieldAmount.beam
│           │       ├── Elixir.Credo.Check.Warning.UnsafeExec.beam
│           │       ├── Elixir.Credo.Check.Warning.UnsafeToAtom.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedEnumOperation.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedFileOperation.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedFunctionReturnHelper.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedKeywordOperation.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedListOperation.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedOperation.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedPathOperation.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedRegexOperation.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedStringOperation.beam
│           │       ├── Elixir.Credo.Check.Warning.UnusedTupleOperation.beam
│           │       ├── Elixir.Credo.Check.Warning.WrongTestFileExtension.beam
│           │       ├── Elixir.Credo.Check.beam
│           │       ├── Elixir.Credo.Code.Block.beam
│           │       ├── Elixir.Credo.Code.Charlists.beam
│           │       ├── Elixir.Credo.Code.Heredocs.beam
│           │       ├── Elixir.Credo.Code.InterpolationHelper.beam
│           │       ├── Elixir.Credo.Code.Module.beam
│           │       ├── Elixir.Credo.Code.Name.beam
│           │       ├── Elixir.Credo.Code.Parameters.beam
│           │       ├── Elixir.Credo.Code.ParserError.beam
│           │       ├── Elixir.Credo.Code.Scope.beam
│           │       ├── Elixir.Credo.Code.Sigils.beam
│           │       ├── Elixir.Credo.Code.Strings.beam
│           │       ├── Elixir.Credo.Code.Token.beam
│           │       ├── Elixir.Credo.Code.TokenAstCorrelation.beam
│           │       ├── Elixir.Credo.Code.beam
│           │       ├── Elixir.Credo.ConfigBuilder.beam
│           │       ├── Elixir.Credo.ConfigFile.beam
│           │       ├── Elixir.Credo.Execution.ExecutionConfigFiles.beam
│           │       ├── Elixir.Credo.Execution.ExecutionIssues.beam
│           │       ├── Elixir.Credo.Execution.ExecutionSourceFiles.beam
│           │       ├── Elixir.Credo.Execution.ExecutionTiming.beam
│           │       ├── Elixir.Credo.Execution.Task.AppendDefaultConfig.beam
│           │       ├── Elixir.Credo.Execution.Task.AppendExtraConfig.beam
│           │       ├── Elixir.Credo.Execution.Task.AssignExitStatusForIssues.beam
│           │       ├── Elixir.Credo.Execution.Task.ConvertCLIOptionsToConfig.beam
│           │       ├── Elixir.Credo.Execution.Task.DetermineCommand.beam
│           │       ├── Elixir.Credo.Execution.Task.InitializeCommand.beam
│           │       ├── Elixir.Credo.Execution.Task.InitializePlugins.beam
│           │       ├── Elixir.Credo.Execution.Task.ParseOptions.beam
│           │       ├── Elixir.Credo.Execution.Task.RequireRequires.beam
│           │       ├── Elixir.Credo.Execution.Task.RunCommand.beam
│           │       ├── Elixir.Credo.Execution.Task.SetDefaultCommand.beam
│           │       ├── Elixir.Credo.Execution.Task.UseColors.beam
│           │       ├── Elixir.Credo.Execution.Task.ValidateConfig.beam
│           │       ├── Elixir.Credo.Execution.Task.ValidateOptions.beam
│           │       ├── Elixir.Credo.Execution.Task.WriteDebugReport.beam
│           │       ├── Elixir.Credo.Execution.Task.beam
│           │       ├── Elixir.Credo.Execution.beam
│           │       ├── Elixir.Credo.ExsLoader.beam
│           │       ├── Elixir.Credo.Issue.beam
│           │       ├── Elixir.Credo.IssueMeta.beam
│           │       ├── Elixir.Credo.Plugin.beam
│           │       ├── Elixir.Credo.Priority.beam
│           │       ├── Elixir.Credo.Service.ConfigFiles.beam
│           │       ├── Elixir.Credo.Service.ETSTableHelper.beam
│           │       ├── Elixir.Credo.Service.SourceFileAST.beam
│           │       ├── Elixir.Credo.Service.SourceFileLines.beam
│           │       ├── Elixir.Credo.Service.SourceFileScopePriorities.beam
│           │       ├── Elixir.Credo.Service.SourceFileScopes.beam
│           │       ├── Elixir.Credo.Service.SourceFileSource.beam
│           │       ├── Elixir.Credo.Severity.beam
│           │       ├── Elixir.Credo.SourceFile.beam
│           │       ├── Elixir.Credo.Sources.beam
│           │       ├── Elixir.Credo.Test.Assertions.beam
│           │       ├── Elixir.Credo.Test.Case.beam
│           │       ├── Elixir.Credo.Test.CheckRunner.beam
│           │       ├── Elixir.Credo.Test.SourceFiles.beam
│           │       ├── Elixir.Credo.Watcher.beam
│           │       ├── Elixir.Credo.beam
│           │       ├── Elixir.Inspect.Credo.SourceFile.beam
│           │       ├── Elixir.Mix.Tasks.Credo.Gen.Check.beam
│           │       ├── Elixir.Mix.Tasks.Credo.Gen.Config.beam
│           │       ├── Elixir.Mix.Tasks.Credo.beam
│           │       └── credo.app
│           ├── db_connection
│           │   └── ebin
│           │       ├── Elixir.DBConnection.App.beam
│           │       ├── Elixir.DBConnection.Backoff.beam
│           │       ├── Elixir.DBConnection.Connection.beam
│           │       ├── Elixir.DBConnection.ConnectionError.beam
│           │       ├── Elixir.DBConnection.ConnectionPool.Pool.beam
│           │       ├── Elixir.DBConnection.ConnectionPool.beam
│           │       ├── Elixir.DBConnection.EncodeError.beam
│           │       ├── Elixir.DBConnection.Holder.beam
│           │       ├── Elixir.DBConnection.LogEntry.beam
│           │       ├── Elixir.DBConnection.Ownership.Manager.beam
│           │       ├── Elixir.DBConnection.Ownership.Proxy.beam
│           │       ├── Elixir.DBConnection.Ownership.beam
│           │       ├── Elixir.DBConnection.OwnershipError.beam
│           │       ├── Elixir.DBConnection.Pool.beam
│           │       ├── Elixir.DBConnection.PrepareStream.beam
│           │       ├── Elixir.DBConnection.Query.beam
│           │       ├── Elixir.DBConnection.Stream.beam
│           │       ├── Elixir.DBConnection.Task.beam
│           │       ├── Elixir.DBConnection.TelemetryListener.beam
│           │       ├── Elixir.DBConnection.TransactionError.beam
│           │       ├── Elixir.DBConnection.Util.beam
│           │       ├── Elixir.DBConnection.Watcher.beam
│           │       ├── Elixir.DBConnection.beam
│           │       ├── Elixir.Enumerable.DBConnection.PrepareStream.beam
│           │       ├── Elixir.Enumerable.DBConnection.Stream.beam
│           │       └── db_connection.app
│           ├── decimal
│           │   └── ebin
│           │       ├── Elixir.Decimal.Context.beam
│           │       ├── Elixir.Decimal.Error.beam
│           │       ├── Elixir.Decimal.Macros.beam
│           │       ├── Elixir.Decimal.beam
│           │       ├── Elixir.Inspect.Decimal.beam
│           │       ├── Elixir.String.Chars.Decimal.beam
│           │       └── decimal.app
│           ├── ecto
│           │   └── ebin
│           │       ├── Elixir.Ecto.Adapter.Queryable.beam
│           │       ├── Elixir.Ecto.Adapter.Schema.beam
│           │       ├── Elixir.Ecto.Adapter.Storage.beam
│           │       ├── Elixir.Ecto.Adapter.Transaction.beam
│           │       ├── Elixir.Ecto.Adapter.beam
│           │       ├── Elixir.Ecto.Application.beam
│           │       ├── Elixir.Ecto.Association.BelongsTo.beam
│           │       ├── Elixir.Ecto.Association.Has.beam
│           │       ├── Elixir.Ecto.Association.HasThrough.beam
│           │       ├── Elixir.Ecto.Association.ManyToMany.beam
│           │       ├── Elixir.Ecto.Association.NotLoaded.beam
│           │       ├── Elixir.Ecto.Association.beam
│           │       ├── Elixir.Ecto.CastError.beam
│           │       ├── Elixir.Ecto.ChangeError.beam
│           │       ├── Elixir.Ecto.Changeset.Relation.beam
│           │       ├── Elixir.Ecto.Changeset.beam
│           │       ├── Elixir.Ecto.ConstraintError.beam
│           │       ├── Elixir.Ecto.Embedded.beam
│           │       ├── Elixir.Ecto.Enum.beam
│           │       ├── Elixir.Ecto.InvalidChangesetError.beam
│           │       ├── Elixir.Ecto.InvalidURLError.beam
│           │       ├── Elixir.Ecto.MigrationError.beam
│           │       ├── Elixir.Ecto.Multi.beam
│           │       ├── Elixir.Ecto.MultiplePrimaryKeyError.beam
│           │       ├── Elixir.Ecto.MultipleResultsError.beam
│           │       ├── Elixir.Ecto.NoPrimaryKeyFieldError.beam
│           │       ├── Elixir.Ecto.NoPrimaryKeyValueError.beam
│           │       ├── Elixir.Ecto.NoResultsError.beam
│           │       ├── Elixir.Ecto.ParameterizedType.beam
│           │       ├── Elixir.Ecto.Query.API.beam
│           │       ├── Elixir.Ecto.Query.BooleanExpr.beam
│           │       ├── Elixir.Ecto.Query.Builder.CTE.beam
│           │       ├── Elixir.Ecto.Query.Builder.Combination.beam
│           │       ├── Elixir.Ecto.Query.Builder.Distinct.beam
│           │       ├── Elixir.Ecto.Query.Builder.Dynamic.beam
│           │       ├── Elixir.Ecto.Query.Builder.Filter.beam
│           │       ├── Elixir.Ecto.Query.Builder.From.beam
│           │       ├── Elixir.Ecto.Query.Builder.GroupBy.beam
│           │       ├── Elixir.Ecto.Query.Builder.Join.beam
│           │       ├── Elixir.Ecto.Query.Builder.LimitOffset.beam
│           │       ├── Elixir.Ecto.Query.Builder.Lock.beam
│           │       ├── Elixir.Ecto.Query.Builder.OrderBy.beam
│           │       ├── Elixir.Ecto.Query.Builder.Preload.beam
│           │       ├── Elixir.Ecto.Query.Builder.Select.beam
│           │       ├── Elixir.Ecto.Query.Builder.Update.beam
│           │       ├── Elixir.Ecto.Query.Builder.Windows.beam
│           │       ├── Elixir.Ecto.Query.Builder.beam
│           │       ├── Elixir.Ecto.Query.ByExpr.beam
│           │       ├── Elixir.Ecto.Query.CastError.beam
│           │       ├── Elixir.Ecto.Query.CompileError.beam
│           │       ├── Elixir.Ecto.Query.DynamicExpr.beam
│           │       ├── Elixir.Ecto.Query.FromExpr.beam
│           │       ├── Elixir.Ecto.Query.JoinExpr.beam
│           │       ├── Elixir.Ecto.Query.LimitExpr.beam
│           │       ├── Elixir.Ecto.Query.Planner.beam
│           │       ├── Elixir.Ecto.Query.QueryExpr.beam
│           │       ├── Elixir.Ecto.Query.SelectExpr.beam
│           │       ├── Elixir.Ecto.Query.Tagged.beam
│           │       ├── Elixir.Ecto.Query.Values.beam
│           │       ├── Elixir.Ecto.Query.WindowAPI.beam
│           │       ├── Elixir.Ecto.Query.WithExpr.beam
│           │       ├── Elixir.Ecto.Query.beam
│           │       ├── Elixir.Ecto.QueryError.beam
│           │       ├── Elixir.Ecto.Queryable.Atom.beam
│           │       ├── Elixir.Ecto.Queryable.BitString.beam
│           │       ├── Elixir.Ecto.Queryable.Ecto.Query.beam
│           │       ├── Elixir.Ecto.Queryable.Ecto.SubQuery.beam
│           │       ├── Elixir.Ecto.Queryable.Tuple.beam
│           │       ├── Elixir.Ecto.Queryable.beam
│           │       ├── Elixir.Ecto.Repo.Assoc.beam
│           │       ├── Elixir.Ecto.Repo.Preloader.beam
│           │       ├── Elixir.Ecto.Repo.Queryable.beam
│           │       ├── Elixir.Ecto.Repo.Registry.beam
│           │       ├── Elixir.Ecto.Repo.Schema.beam
│           │       ├── Elixir.Ecto.Repo.Supervisor.beam
│           │       ├── Elixir.Ecto.Repo.Transaction.beam
│           │       ├── Elixir.Ecto.Repo.beam
│           │       ├── Elixir.Ecto.Schema.Loader.beam
│           │       ├── Elixir.Ecto.Schema.Metadata.beam
│           │       ├── Elixir.Ecto.Schema.beam
│           │       ├── Elixir.Ecto.StaleEntryError.beam
│           │       ├── Elixir.Ecto.SubQuery.beam
│           │       ├── Elixir.Ecto.SubQueryError.beam
│           │       ├── Elixir.Ecto.Type.beam
│           │       ├── Elixir.Ecto.UUID.beam
│           │       ├── Elixir.Ecto.beam
│           │       ├── Elixir.Inspect.Ecto.Association.NotLoaded.beam
│           │       ├── Elixir.Inspect.Ecto.Changeset.beam
│           │       ├── Elixir.Inspect.Ecto.Query.DynamicExpr.beam
│           │       ├── Elixir.Inspect.Ecto.Query.beam
│           │       ├── Elixir.Inspect.Ecto.Schema.Metadata.beam
│           │       ├── Elixir.Jason.Encoder.Ecto.Association.NotLoaded.beam
│           │       ├── Elixir.Jason.Encoder.Ecto.Schema.Metadata.beam
│           │       ├── Elixir.Mix.Ecto.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.Create.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.Drop.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.Gen.Repo.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.beam
│           │       └── ecto.app
│           ├── ecto_sql
│           │   └── ebin
│           │       ├── Elixir.Collectable.Ecto.Adapters.SQL.Stream.beam
│           │       ├── Elixir.Ecto.Adapter.Migration.beam
│           │       ├── Elixir.Ecto.Adapter.Structure.beam
│           │       ├── Elixir.Ecto.Adapters.MyXQL.beam
│           │       ├── Elixir.Ecto.Adapters.Postgres.Connection.beam
│           │       ├── Elixir.Ecto.Adapters.Postgres.beam
│           │       ├── Elixir.Ecto.Adapters.SQL.Application.beam
│           │       ├── Elixir.Ecto.Adapters.SQL.Connection.beam
│           │       ├── Elixir.Ecto.Adapters.SQL.Sandbox.Connection.beam
│           │       ├── Elixir.Ecto.Adapters.SQL.Sandbox.beam
│           │       ├── Elixir.Ecto.Adapters.SQL.Stream.beam
│           │       ├── Elixir.Ecto.Adapters.SQL.beam
│           │       ├── Elixir.Ecto.Adapters.Tds.beam
│           │       ├── Elixir.Ecto.Migration.Command.beam
│           │       ├── Elixir.Ecto.Migration.Constraint.beam
│           │       ├── Elixir.Ecto.Migration.Index.beam
│           │       ├── Elixir.Ecto.Migration.Reference.beam
│           │       ├── Elixir.Ecto.Migration.Runner.beam
│           │       ├── Elixir.Ecto.Migration.SchemaMigration.beam
│           │       ├── Elixir.Ecto.Migration.Table.beam
│           │       ├── Elixir.Ecto.Migration.beam
│           │       ├── Elixir.Ecto.Migrator.beam
│           │       ├── Elixir.Enumerable.Ecto.Adapters.SQL.Stream.beam
│           │       ├── Elixir.Mix.EctoSQL.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.Dump.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.Gen.Migration.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.Load.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.Migrate.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.Migrations.beam
│           │       ├── Elixir.Mix.Tasks.Ecto.Rollback.beam
│           │       └── ecto_sql.app
│           ├── eventstore
│           │   ├── ebin
│           │   │   ├── Elixir.EventStore.AdvisoryLocks.Lock.beam
│           │   │   ├── Elixir.EventStore.AdvisoryLocks.State.beam
│           │   │   ├── Elixir.EventStore.AdvisoryLocks.beam
│           │   │   ├── Elixir.EventStore.Application.beam
│           │   │   ├── Elixir.EventStore.Config.Parser.beam
│           │   │   ├── Elixir.EventStore.Config.Store.beam
│           │   │   ├── Elixir.EventStore.Config.beam
│           │   │   ├── Elixir.EventStore.EExIOListEngine.beam
│           │   │   ├── Elixir.EventStore.EventData.beam
│           │   │   ├── Elixir.EventStore.JsonSerializer.beam
│           │   │   ├── Elixir.EventStore.JsonbSerializer.beam
│           │   │   ├── Elixir.EventStore.MonitoredServer.State.beam
│           │   │   ├── Elixir.EventStore.MonitoredServer.beam
│           │   │   ├── Elixir.EventStore.Notifications.Listener.beam
│           │   │   ├── Elixir.EventStore.Notifications.Notification.beam
│           │   │   ├── Elixir.EventStore.Notifications.Publisher.State.beam
│           │   │   ├── Elixir.EventStore.Notifications.Publisher.beam
│           │   │   ├── Elixir.EventStore.Notifications.Supervisor.beam
│           │   │   ├── Elixir.EventStore.Page.beam
│           │   │   ├── Elixir.EventStore.PostgresTypes.beam
│           │   │   ├── Elixir.EventStore.PubSub.beam
│           │   │   ├── Elixir.EventStore.RecordedEvent.beam
│           │   │   ├── Elixir.EventStore.Serializer.beam
│           │   │   ├── Elixir.EventStore.Snapshots.SnapshotData.beam
│           │   │   ├── Elixir.EventStore.Snapshots.Snapshotter.beam
│           │   │   ├── Elixir.EventStore.Sql.Init.beam
│           │   │   ├── Elixir.EventStore.Sql.Reset.beam
│           │   │   ├── Elixir.EventStore.Sql.Statements.beam
│           │   │   ├── Elixir.EventStore.Storage.Appender.beam
│           │   │   ├── Elixir.EventStore.Storage.CreateStream.beam
│           │   │   ├── Elixir.EventStore.Storage.Database.beam
│           │   │   ├── Elixir.EventStore.Storage.DeleteStream.beam
│           │   │   ├── Elixir.EventStore.Storage.Initializer.beam
│           │   │   ├── Elixir.EventStore.Storage.Lock.beam
│           │   │   ├── Elixir.EventStore.Storage.Reader.EventAdapter.beam
│           │   │   ├── Elixir.EventStore.Storage.Reader.Query.beam
│           │   │   ├── Elixir.EventStore.Storage.Reader.beam
│           │   │   ├── Elixir.EventStore.Storage.Schema.beam
│           │   │   ├── Elixir.EventStore.Storage.Snapshot.beam
│           │   │   ├── Elixir.EventStore.Storage.Stream.beam
│           │   │   ├── Elixir.EventStore.Storage.Subscription.Ack.beam
│           │   │   ├── Elixir.EventStore.Storage.Subscription.Adapter.beam
│           │   │   ├── Elixir.EventStore.Storage.Subscription.CreateSubscription.beam
│           │   │   ├── Elixir.EventStore.Storage.Subscription.Delete.beam
│           │   │   ├── Elixir.EventStore.Storage.Subscription.QueryAllSubscriptions.beam
│           │   │   ├── Elixir.EventStore.Storage.Subscription.QuerySubscription.beam
│           │   │   ├── Elixir.EventStore.Storage.Subscription.beam
│           │   │   ├── Elixir.EventStore.Storage.beam
│           │   │   ├── Elixir.EventStore.Streams.Stream.beam
│           │   │   ├── Elixir.EventStore.Streams.StreamInfo.beam
│           │   │   ├── Elixir.EventStore.Subscriptions.Subscriber.beam
│           │   │   ├── Elixir.EventStore.Subscriptions.Subscription.beam
│           │   │   ├── Elixir.EventStore.Subscriptions.SubscriptionFsm.beam
│           │   │   ├── Elixir.EventStore.Subscriptions.SubscriptionState.beam
│           │   │   ├── Elixir.EventStore.Subscriptions.Supervisor.beam
│           │   │   ├── Elixir.EventStore.Subscriptions.beam
│           │   │   ├── Elixir.EventStore.Supervisor.beam
│           │   │   ├── Elixir.EventStore.Tasks.Create.beam
│           │   │   ├── Elixir.EventStore.Tasks.Drop.beam
│           │   │   ├── Elixir.EventStore.Tasks.Init.beam
│           │   │   ├── Elixir.EventStore.Tasks.Migrate.beam
│           │   │   ├── Elixir.EventStore.Tasks.Migration.beam
│           │   │   ├── Elixir.EventStore.Tasks.Migrations.beam
│           │   │   ├── Elixir.EventStore.Tasks.Output.beam
│           │   │   ├── Elixir.EventStore.TermSerializer.beam
│           │   │   ├── Elixir.EventStore.UUID.beam
│           │   │   ├── Elixir.EventStore.beam
│           │   │   ├── Elixir.Mix.EventStore.beam
│           │   │   ├── Elixir.Mix.Tasks.EventStore.Create.beam
│           │   │   ├── Elixir.Mix.Tasks.EventStore.Drop.beam
│           │   │   ├── Elixir.Mix.Tasks.EventStore.Init.beam
│           │   │   ├── Elixir.Mix.Tasks.EventStore.Migrate.beam
│           │   │   ├── Elixir.Mix.Tasks.EventStore.Migrations.beam
│           │   │   └── eventstore.app
│           │   └── priv -> ../../../../deps/eventstore/priv
│           ├── expo
│           │   └── ebin
│           │       ├── Elixir.Expo.MO.Composer.beam
│           │       ├── Elixir.Expo.MO.InvalidFileError.beam
│           │       ├── Elixir.Expo.MO.Parser.beam
│           │       ├── Elixir.Expo.MO.UnsupportedVersionError.beam
│           │       ├── Elixir.Expo.MO.beam
│           │       ├── Elixir.Expo.Message.Plural.beam
│           │       ├── Elixir.Expo.Message.Singular.beam
│           │       ├── Elixir.Expo.Message.beam
│           │       ├── Elixir.Expo.Messages.beam
│           │       ├── Elixir.Expo.PO.Composer.beam
│           │       ├── Elixir.Expo.PO.DuplicateMessagesError.beam
│           │       ├── Elixir.Expo.PO.Parser.beam
│           │       ├── Elixir.Expo.PO.SyntaxError.beam
│           │       ├── Elixir.Expo.PO.Tokenizer.beam
│           │       ├── Elixir.Expo.PO.beam
│           │       ├── Elixir.Expo.PluralForms.Known.beam
│           │       ├── Elixir.Expo.PluralForms.SyntaxError.beam
│           │       ├── Elixir.Expo.PluralForms.Tokenizer.beam
│           │       ├── Elixir.Expo.PluralForms.beam
│           │       ├── Elixir.Expo.Util.beam
│           │       ├── Elixir.Inspect.Expo.Message.Plural.beam
│           │       ├── Elixir.Inspect.Expo.Message.Singular.beam
│           │       ├── Elixir.Inspect.Expo.PluralForms.beam
│           │       ├── Elixir.Mix.Tasks.Expo.Msgfmt.beam
│           │       ├── Elixir.Mix.Tasks.Expo.Msguniq.beam
│           │       ├── expo.app
│           │       ├── expo_plural_forms_parser.beam
│           │       └── expo_po_parser.beam
│           ├── file_system
│           │   ├── ebin
│           │   │   ├── Elixir.FileSystem.Backend.beam
│           │   │   ├── Elixir.FileSystem.Backends.FSInotify.beam
│           │   │   ├── Elixir.FileSystem.Backends.FSMac.beam
│           │   │   ├── Elixir.FileSystem.Backends.FSPoll.beam
│           │   │   ├── Elixir.FileSystem.Backends.FSWindows.beam
│           │   │   ├── Elixir.FileSystem.Worker.beam
│           │   │   ├── Elixir.FileSystem.beam
│           │   │   └── file_system.app
│           │   └── priv -> ../../../../deps/file_system/priv
│           ├── fsm
│           │   └── ebin
│           │       ├── Elixir.Fsm.beam
│           │       └── fsm.app
│           ├── gen_stage
│           │   └── ebin
│           │       ├── Elixir.ConsumerSupervisor.Default.beam
│           │       ├── Elixir.ConsumerSupervisor.beam
│           │       ├── Elixir.GenStage.BroadcastDispatcher.beam
│           │       ├── Elixir.GenStage.Buffer.beam
│           │       ├── Elixir.GenStage.DemandDispatcher.beam
│           │       ├── Elixir.GenStage.Dispatcher.beam
│           │       ├── Elixir.GenStage.PartitionDispatcher.beam
│           │       ├── Elixir.GenStage.Stream.beam
│           │       ├── Elixir.GenStage.Streamer.beam
│           │       ├── Elixir.GenStage.Utils.beam
│           │       ├── Elixir.GenStage.beam
│           │       └── gen_stage.app
│           ├── gettext
│           │   └── ebin
│           │       ├── Elixir.Gettext.Application.beam
│           │       ├── Elixir.Gettext.Backend.beam
│           │       ├── Elixir.Gettext.Compiler.beam
│           │       ├── Elixir.Gettext.Error.beam
│           │       ├── Elixir.Gettext.Extractor.beam
│           │       ├── Elixir.Gettext.ExtractorAgent.beam
│           │       ├── Elixir.Gettext.Fuzzy.beam
│           │       ├── Elixir.Gettext.Interpolation.Default.beam
│           │       ├── Elixir.Gettext.Interpolation.beam
│           │       ├── Elixir.Gettext.Macros.beam
│           │       ├── Elixir.Gettext.Merger.beam
│           │       ├── Elixir.Gettext.MissingBindingsError.beam
│           │       ├── Elixir.Gettext.Plural.UnknownLocaleError.beam
│           │       ├── Elixir.Gettext.Plural.beam
│           │       ├── Elixir.Gettext.PluralFormError.beam
│           │       ├── Elixir.Gettext.beam
│           │       ├── Elixir.Mix.Tasks.Compile.Gettext.beam
│           │       ├── Elixir.Mix.Tasks.Gettext.Extract.beam
│           │       ├── Elixir.Mix.Tasks.Gettext.Merge.beam
│           │       └── gettext.app
│           ├── jason
│           │   └── ebin
│           │       ├── Elixir.Enumerable.Jason.OrderedObject.beam
│           │       ├── Elixir.Jason.Codegen.beam
│           │       ├── Elixir.Jason.DecodeError.beam
│           │       ├── Elixir.Jason.Decoder.Unescape.beam
│           │       ├── Elixir.Jason.Decoder.beam
│           │       ├── Elixir.Jason.Encode.beam
│           │       ├── Elixir.Jason.EncodeError.beam
│           │       ├── Elixir.Jason.Encoder.Any.beam
│           │       ├── Elixir.Jason.Encoder.Atom.beam
│           │       ├── Elixir.Jason.Encoder.BitString.beam
│           │       ├── Elixir.Jason.Encoder.Date.beam
│           │       ├── Elixir.Jason.Encoder.DateTime.beam
│           │       ├── Elixir.Jason.Encoder.Decimal.beam
│           │       ├── Elixir.Jason.Encoder.Float.beam
│           │       ├── Elixir.Jason.Encoder.Integer.beam
│           │       ├── Elixir.Jason.Encoder.Jason.Fragment.beam
│           │       ├── Elixir.Jason.Encoder.Jason.OrderedObject.beam
│           │       ├── Elixir.Jason.Encoder.List.beam
│           │       ├── Elixir.Jason.Encoder.Map.beam
│           │       ├── Elixir.Jason.Encoder.NaiveDateTime.beam
│           │       ├── Elixir.Jason.Encoder.Time.beam
│           │       ├── Elixir.Jason.Encoder.beam
│           │       ├── Elixir.Jason.Formatter.beam
│           │       ├── Elixir.Jason.Fragment.beam
│           │       ├── Elixir.Jason.Helpers.beam
│           │       ├── Elixir.Jason.OrderedObject.beam
│           │       ├── Elixir.Jason.Sigil.beam
│           │       ├── Elixir.Jason.beam
│           │       └── jason.app
│           ├── mime
│           │   └── ebin
│           │       ├── Elixir.MIME.beam
│           │       └── mime.app
│           ├── phoenix
│           │   ├── ebin
│           │   │   ├── Elixir.Mix.Phoenix.Context.beam
│           │   │   ├── Elixir.Mix.Phoenix.Schema.beam
│           │   │   ├── Elixir.Mix.Phoenix.beam
│           │   │   ├── Elixir.Mix.Tasks.Compile.Phoenix.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Digest.Clean.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Digest.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Auth.HashingLibrary.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Auth.Injector.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Auth.Migration.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Auth.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Cert.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Channel.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Context.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Embedded.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Html.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Json.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Live.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Notifier.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Presence.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Release.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Schema.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Secret.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.Socket.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Gen.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Routes.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.Server.beam
│           │   │   ├── Elixir.Mix.Tasks.Phx.beam
│           │   │   ├── Elixir.Phoenix.ActionClauseError.beam
│           │   │   ├── Elixir.Phoenix.Channel.Server.beam
│           │   │   ├── Elixir.Phoenix.Channel.beam
│           │   │   ├── Elixir.Phoenix.ChannelTest.NoopSerializer.beam
│           │   │   ├── Elixir.Phoenix.ChannelTest.beam
│           │   │   ├── Elixir.Phoenix.CodeReloader.Proxy.beam
│           │   │   ├── Elixir.Phoenix.CodeReloader.Server.beam
│           │   │   ├── Elixir.Phoenix.CodeReloader.beam
│           │   │   ├── Elixir.Phoenix.Config.beam
│           │   │   ├── Elixir.Phoenix.ConnTest.beam
│           │   │   ├── Elixir.Phoenix.Controller.Pipeline.beam
│           │   │   ├── Elixir.Phoenix.Controller.beam
│           │   │   ├── Elixir.Phoenix.Digester.Compressor.beam
│           │   │   ├── Elixir.Phoenix.Digester.Gzip.beam
│           │   │   ├── Elixir.Phoenix.Digester.beam
│           │   │   ├── Elixir.Phoenix.Endpoint.Cowboy2Adapter.beam
│           │   │   ├── Elixir.Phoenix.Endpoint.RenderErrors.beam
│           │   │   ├── Elixir.Phoenix.Endpoint.Supervisor.beam
│           │   │   ├── Elixir.Phoenix.Endpoint.SyncCodeReloadPlug.beam
│           │   │   ├── Elixir.Phoenix.Endpoint.Watcher.beam
│           │   │   ├── Elixir.Phoenix.Endpoint.beam
│           │   │   ├── Elixir.Phoenix.Flash.beam
│           │   │   ├── Elixir.Phoenix.Logger.beam
│           │   │   ├── Elixir.Phoenix.MissingParamError.beam
│           │   │   ├── Elixir.Phoenix.Naming.beam
│           │   │   ├── Elixir.Phoenix.NotAcceptableError.beam
│           │   │   ├── Elixir.Phoenix.Param.Any.beam
│           │   │   ├── Elixir.Phoenix.Param.Atom.beam
│           │   │   ├── Elixir.Phoenix.Param.BitString.beam
│           │   │   ├── Elixir.Phoenix.Param.Float.beam
│           │   │   ├── Elixir.Phoenix.Param.Integer.beam
│           │   │   ├── Elixir.Phoenix.Param.Map.beam
│           │   │   ├── Elixir.Phoenix.Param.beam
│           │   │   ├── Elixir.Phoenix.Presence.Tracker.beam
│           │   │   ├── Elixir.Phoenix.Presence.beam
│           │   │   ├── Elixir.Phoenix.Router.ConsoleFormatter.beam
│           │   │   ├── Elixir.Phoenix.Router.Helpers.beam
│           │   │   ├── Elixir.Phoenix.Router.MalformedURIError.beam
│           │   │   ├── Elixir.Phoenix.Router.NoRouteError.beam
│           │   │   ├── Elixir.Phoenix.Router.Resource.beam
│           │   │   ├── Elixir.Phoenix.Router.Route.beam
│           │   │   ├── Elixir.Phoenix.Router.Scope.beam
│           │   │   ├── Elixir.Phoenix.Router.beam
│           │   │   ├── Elixir.Phoenix.Socket.Broadcast.beam
│           │   │   ├── Elixir.Phoenix.Socket.InvalidMessageError.beam
│           │   │   ├── Elixir.Phoenix.Socket.Message.beam
│           │   │   ├── Elixir.Phoenix.Socket.PoolDrainer.beam
│           │   │   ├── Elixir.Phoenix.Socket.PoolSupervisor.beam
│           │   │   ├── Elixir.Phoenix.Socket.Reply.beam
│           │   │   ├── Elixir.Phoenix.Socket.Serializer.beam
│           │   │   ├── Elixir.Phoenix.Socket.Transport.beam
│           │   │   ├── Elixir.Phoenix.Socket.V1.JSONSerializer.beam
│           │   │   ├── Elixir.Phoenix.Socket.V2.JSONSerializer.beam
│           │   │   ├── Elixir.Phoenix.Socket.beam
│           │   │   ├── Elixir.Phoenix.Token.beam
│           │   │   ├── Elixir.Phoenix.Transports.LongPoll.Server.beam
│           │   │   ├── Elixir.Phoenix.Transports.LongPoll.beam
│           │   │   ├── Elixir.Phoenix.Transports.WebSocket.beam
│           │   │   ├── Elixir.Phoenix.VerifiedRoutes.beam
│           │   │   ├── Elixir.Phoenix.beam
│           │   │   ├── Elixir.Plug.Exception.Phoenix.ActionClauseError.beam
│           │   │   └── phoenix.app
│           │   └── priv -> ../../../../deps/phoenix/priv
│           ├── phoenix_pubsub
│           │   └── ebin
│           │       ├── Elixir.Phoenix.PubSub.Adapter.beam
│           │       ├── Elixir.Phoenix.PubSub.Application.beam
│           │       ├── Elixir.Phoenix.PubSub.BroadcastError.beam
│           │       ├── Elixir.Phoenix.PubSub.PG2.beam
│           │       ├── Elixir.Phoenix.PubSub.PG2Worker.beam
│           │       ├── Elixir.Phoenix.PubSub.Supervisor.beam
│           │       ├── Elixir.Phoenix.PubSub.beam
│           │       ├── Elixir.Phoenix.Tracker.Clock.beam
│           │       ├── Elixir.Phoenix.Tracker.DeltaGeneration.beam
│           │       ├── Elixir.Phoenix.Tracker.Replica.beam
│           │       ├── Elixir.Phoenix.Tracker.Shard.beam
│           │       ├── Elixir.Phoenix.Tracker.ShutdownHandler.beam
│           │       ├── Elixir.Phoenix.Tracker.State.beam
│           │       ├── Elixir.Phoenix.Tracker.beam
│           │       └── phoenix_pubsub.app
│           ├── phoenix_template
│           │   └── ebin
│           │       ├── Elixir.Phoenix.Template.EExEngine.beam
│           │       ├── Elixir.Phoenix.Template.Engine.beam
│           │       ├── Elixir.Phoenix.Template.ExsEngine.beam
│           │       ├── Elixir.Phoenix.Template.beam
│           │       └── phoenix_template.app
│           ├── plug
│           │   └── ebin
│           │       ├── Elixir.Inspect.Plug.Conn.beam
│           │       ├── Elixir.Plug.Adapters.Cowboy.beam
│           │       ├── Elixir.Plug.Adapters.Test.Conn.beam
│           │       ├── Elixir.Plug.Application.beam
│           │       ├── Elixir.Plug.BadRequestError.beam
│           │       ├── Elixir.Plug.BasicAuth.beam
│           │       ├── Elixir.Plug.Builder.beam
│           │       ├── Elixir.Plug.CSRFProtection.InvalidCSRFTokenError.beam
│           │       ├── Elixir.Plug.CSRFProtection.InvalidCrossOriginRequestError.beam
│           │       ├── Elixir.Plug.CSRFProtection.beam
│           │       ├── Elixir.Plug.Conn.Adapter.beam
│           │       ├── Elixir.Plug.Conn.AlreadySentError.beam
│           │       ├── Elixir.Plug.Conn.CookieOverflowError.beam
│           │       ├── Elixir.Plug.Conn.Cookies.beam
│           │       ├── Elixir.Plug.Conn.InvalidHeaderError.beam
│           │       ├── Elixir.Plug.Conn.InvalidQueryError.beam
│           │       ├── Elixir.Plug.Conn.NotSentError.beam
│           │       ├── Elixir.Plug.Conn.Query.beam
│           │       ├── Elixir.Plug.Conn.Status.beam
│           │       ├── Elixir.Plug.Conn.Unfetched.beam
│           │       ├── Elixir.Plug.Conn.Utils.beam
│           │       ├── Elixir.Plug.Conn.WrapperError.beam
│           │       ├── Elixir.Plug.Conn.beam
│           │       ├── Elixir.Plug.Debugger.beam
│           │       ├── Elixir.Plug.ErrorHandler.beam
│           │       ├── Elixir.Plug.Exception.Any.beam
│           │       ├── Elixir.Plug.Exception.beam
│           │       ├── Elixir.Plug.HTML.beam
│           │       ├── Elixir.Plug.Head.beam
│           │       ├── Elixir.Plug.Logger.beam
│           │       ├── Elixir.Plug.MIME.beam
│           │       ├── Elixir.Plug.MethodOverride.beam
│           │       ├── Elixir.Plug.Parsers.BadEncodingError.beam
│           │       ├── Elixir.Plug.Parsers.JSON.beam
│           │       ├── Elixir.Plug.Parsers.MULTIPART.beam
│           │       ├── Elixir.Plug.Parsers.ParseError.beam
│           │       ├── Elixir.Plug.Parsers.RequestTooLargeError.beam
│           │       ├── Elixir.Plug.Parsers.URLENCODED.beam
│           │       ├── Elixir.Plug.Parsers.UnsupportedMediaTypeError.beam
│           │       ├── Elixir.Plug.Parsers.beam
│           │       ├── Elixir.Plug.RequestId.beam
│           │       ├── Elixir.Plug.RewriteOn.beam
│           │       ├── Elixir.Plug.Router.InvalidSpecError.beam
│           │       ├── Elixir.Plug.Router.MalformedURIError.beam
│           │       ├── Elixir.Plug.Router.Utils.beam
│           │       ├── Elixir.Plug.Router.beam
│           │       ├── Elixir.Plug.SSL.beam
│           │       ├── Elixir.Plug.Session.COOKIE.beam
│           │       ├── Elixir.Plug.Session.ETS.beam
│           │       ├── Elixir.Plug.Session.Store.beam
│           │       ├── Elixir.Plug.Session.beam
│           │       ├── Elixir.Plug.Static.InvalidPathError.beam
│           │       ├── Elixir.Plug.Static.beam
│           │       ├── Elixir.Plug.Telemetry.beam
│           │       ├── Elixir.Plug.Test.beam
│           │       ├── Elixir.Plug.TimeoutError.beam
│           │       ├── Elixir.Plug.Upload.Supervisor.beam
│           │       ├── Elixir.Plug.Upload.Terminator.beam
│           │       ├── Elixir.Plug.Upload.beam
│           │       ├── Elixir.Plug.UploadError.beam
│           │       ├── Elixir.Plug.beam
│           │       ├── plug.app
│           │       └── plug_multipart.beam
│           ├── plug_crypto
│           │   └── ebin
│           │       ├── Elixir.Plug.Crypto.Application.beam
│           │       ├── Elixir.Plug.Crypto.KeyGenerator.beam
│           │       ├── Elixir.Plug.Crypto.MessageEncryptor.beam
│           │       ├── Elixir.Plug.Crypto.MessageVerifier.beam
│           │       ├── Elixir.Plug.Crypto.beam
│           │       └── plug_crypto.app
│           ├── postgrex
│           │   └── ebin
│           │       ├── Elixir.Collectable.Postgrex.Stream.beam
│           │       ├── Elixir.DBConnection.Query.Postgrex.Copy.beam
│           │       ├── Elixir.DBConnection.Query.Postgrex.Parameters.beam
│           │       ├── Elixir.DBConnection.Query.Postgrex.Query.beam
│           │       ├── Elixir.Enumerable.Postgrex.Stream.beam
│           │       ├── Elixir.Inspect.Postgrex.Stream.beam
│           │       ├── Elixir.Postgrex.App.beam
│           │       ├── Elixir.Postgrex.BinaryExtension.beam
│           │       ├── Elixir.Postgrex.BinaryUtils.beam
│           │       ├── Elixir.Postgrex.Box.beam
│           │       ├── Elixir.Postgrex.Circle.beam
│           │       ├── Elixir.Postgrex.Copy.beam
│           │       ├── Elixir.Postgrex.Cursor.beam
│           │       ├── Elixir.Postgrex.DefaultTypes.beam
│           │       ├── Elixir.Postgrex.Error.beam
│           │       ├── Elixir.Postgrex.ErrorCode.beam
│           │       ├── Elixir.Postgrex.Extension.beam
│           │       ├── Elixir.Postgrex.Extensions.Array.beam
│           │       ├── Elixir.Postgrex.Extensions.BitString.beam
│           │       ├── Elixir.Postgrex.Extensions.Bool.beam
│           │       ├── Elixir.Postgrex.Extensions.Box.beam
│           │       ├── Elixir.Postgrex.Extensions.Circle.beam
│           │       ├── Elixir.Postgrex.Extensions.Date.beam
│           │       ├── Elixir.Postgrex.Extensions.Float4.beam
│           │       ├── Elixir.Postgrex.Extensions.Float8.beam
│           │       ├── Elixir.Postgrex.Extensions.HStore.beam
│           │       ├── Elixir.Postgrex.Extensions.INET.beam
│           │       ├── Elixir.Postgrex.Extensions.Int2.beam
│           │       ├── Elixir.Postgrex.Extensions.Int4.beam
│           │       ├── Elixir.Postgrex.Extensions.Int8.beam
│           │       ├── Elixir.Postgrex.Extensions.Interval.beam
│           │       ├── Elixir.Postgrex.Extensions.JSON.beam
│           │       ├── Elixir.Postgrex.Extensions.JSONB.beam
│           │       ├── Elixir.Postgrex.Extensions.Line.beam
│           │       ├── Elixir.Postgrex.Extensions.LineSegment.beam
│           │       ├── Elixir.Postgrex.Extensions.Lquery.beam
│           │       ├── Elixir.Postgrex.Extensions.Ltree.beam
│           │       ├── Elixir.Postgrex.Extensions.Ltxtquery.beam
│           │       ├── Elixir.Postgrex.Extensions.MACADDR.beam
│           │       ├── Elixir.Postgrex.Extensions.Multirange.beam
│           │       ├── Elixir.Postgrex.Extensions.Name.beam
│           │       ├── Elixir.Postgrex.Extensions.Numeric.beam
│           │       ├── Elixir.Postgrex.Extensions.OID.beam
│           │       ├── Elixir.Postgrex.Extensions.Path.beam
│           │       ├── Elixir.Postgrex.Extensions.Point.beam
│           │       ├── Elixir.Postgrex.Extensions.Polygon.beam
│           │       ├── Elixir.Postgrex.Extensions.Range.beam
│           │       ├── Elixir.Postgrex.Extensions.Raw.beam
│           │       ├── Elixir.Postgrex.Extensions.Record.beam
│           │       ├── Elixir.Postgrex.Extensions.TID.beam
│           │       ├── Elixir.Postgrex.Extensions.TSVector.beam
│           │       ├── Elixir.Postgrex.Extensions.Time.beam
│           │       ├── Elixir.Postgrex.Extensions.TimeTZ.beam
│           │       ├── Elixir.Postgrex.Extensions.Timestamp.beam
│           │       ├── Elixir.Postgrex.Extensions.TimestampTZ.beam
│           │       ├── Elixir.Postgrex.Extensions.UUID.beam
│           │       ├── Elixir.Postgrex.Extensions.VoidBinary.beam
│           │       ├── Elixir.Postgrex.Extensions.VoidText.beam
│           │       ├── Elixir.Postgrex.Extensions.Xid8.beam
│           │       ├── Elixir.Postgrex.INET.beam
│           │       ├── Elixir.Postgrex.Interval.beam
│           │       ├── Elixir.Postgrex.Lexeme.beam
│           │       ├── Elixir.Postgrex.Line.beam
│           │       ├── Elixir.Postgrex.LineSegment.beam
│           │       ├── Elixir.Postgrex.MACADDR.beam
│           │       ├── Elixir.Postgrex.Messages.beam
│           │       ├── Elixir.Postgrex.Multirange.beam
│           │       ├── Elixir.Postgrex.Notifications.beam
│           │       ├── Elixir.Postgrex.Parameters.beam
│           │       ├── Elixir.Postgrex.Path.beam
│           │       ├── Elixir.Postgrex.Point.beam
│           │       ├── Elixir.Postgrex.Polygon.beam
│           │       ├── Elixir.Postgrex.Protocol.beam
│           │       ├── Elixir.Postgrex.Query.beam
│           │       ├── Elixir.Postgrex.QueryError.beam
│           │       ├── Elixir.Postgrex.Range.beam
│           │       ├── Elixir.Postgrex.ReplicationConnection.beam
│           │       ├── Elixir.Postgrex.Result.beam
│           │       ├── Elixir.Postgrex.SCRAM.LockedCache.beam
│           │       ├── Elixir.Postgrex.SCRAM.beam
│           │       ├── Elixir.Postgrex.SimpleConnection.beam
│           │       ├── Elixir.Postgrex.Stream.beam
│           │       ├── Elixir.Postgrex.SuperExtension.beam
│           │       ├── Elixir.Postgrex.TypeInfo.beam
│           │       ├── Elixir.Postgrex.TypeModule.beam
│           │       ├── Elixir.Postgrex.TypeServer.beam
│           │       ├── Elixir.Postgrex.TypeSupervisor.beam
│           │       ├── Elixir.Postgrex.Types.beam
│           │       ├── Elixir.Postgrex.Utils.beam
│           │       ├── Elixir.Postgrex.beam
│           │       ├── Elixir.String.Chars.Postgrex.Copy.beam
│           │       ├── Elixir.String.Chars.Postgrex.Query.beam
│           │       └── postgrex.app
│           ├── telemetry
│           │   ├── ebin
│           │   │   ├── telemetry.app
│           │   │   ├── telemetry.beam
│           │   │   ├── telemetry_app.beam
│           │   │   ├── telemetry_handler_table.beam
│           │   │   ├── telemetry_sup.beam
│           │   │   └── telemetry_test.beam
│           │   └── mix.rebar.config
│           ├── telemetry_metrics
│           │   └── ebin
│           │       ├── Elixir.Telemetry.Metrics.ConsoleReporter.beam
│           │       ├── Elixir.Telemetry.Metrics.Counter.beam
│           │       ├── Elixir.Telemetry.Metrics.Distribution.beam
│           │       ├── Elixir.Telemetry.Metrics.LastValue.beam
│           │       ├── Elixir.Telemetry.Metrics.Sum.beam
│           │       ├── Elixir.Telemetry.Metrics.Summary.beam
│           │       ├── Elixir.Telemetry.Metrics.beam
│           │       └── telemetry_metrics.app
│           ├── telemetry_poller
│           │   ├── ebin
│           │   │   ├── telemetry_poller.app
│           │   │   ├── telemetry_poller.beam
│           │   │   ├── telemetry_poller_app.beam
│           │   │   ├── telemetry_poller_builtin.beam
│           │   │   └── telemetry_poller_sup.beam
│           │   └── mix.rebar.config
│           ├── telemetry_registry
│           │   └── ebin
│           │       ├── Elixir.TelemetryRegistry.beam
│           │       ├── telemetry_registry.app
│           │       └── telemetry_registry.beam
│           ├── websock
│           │   └── ebin
│           │       ├── Elixir.WebSock.beam
│           │       └── websock.app
│           └── websock_adapter
│               └── ebin
│                   ├── Elixir.WebSockAdapter.UpgradeError.beam
│                   ├── Elixir.WebSockAdapter.UpgradeValidation.beam
│                   ├── Elixir.WebSockAdapter.beam
│                   └── websock_adapter.app
├── config
│   ├── config.exs
│   ├── dev.exs
│   ├── prod.exs
│   └── test.exs
├── deps
│   ├── backoff
│   │   ├── LICENSE.txt
│   │   ├── README.md
│   │   ├── _build
│   │   │   └── prod
│   │   │       └── lib
│   │   ├── hex_metadata.config
│   │   ├── rebar.config
│   │   ├── rebar.lock
│   │   └── src
│   │       ├── backoff.app.src
│   │       └── backoff.erl
│   ├── benchee
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── benchee
│   │   │   │   ├── benchmark
│   │   │   │   │   ├── benchmark_config.ex
│   │   │   │   │   ├── collect
│   │   │   │   │   │   ├── memory.ex
│   │   │   │   │   │   ├── reductions.ex
│   │   │   │   │   │   └── time.ex
│   │   │   │   │   ├── collect.ex
│   │   │   │   │   ├── function_call_overhead.ex
│   │   │   │   │   ├── hooks.ex
│   │   │   │   │   ├── repeated_measurement.ex
│   │   │   │   │   ├── runner.ex
│   │   │   │   │   └── scenario_context.ex
│   │   │   │   ├── benchmark.ex
│   │   │   │   ├── collection_data.ex
│   │   │   │   ├── configuration.ex
│   │   │   │   ├── conversion
│   │   │   │   │   ├── count.ex
│   │   │   │   │   ├── deviation_percent.ex
│   │   │   │   │   ├── duration.ex
│   │   │   │   │   ├── format.ex
│   │   │   │   │   ├── memory.ex
│   │   │   │   │   ├── scale.ex
│   │   │   │   │   └── unit.ex
│   │   │   │   ├── conversion.ex
│   │   │   │   ├── errors.ex
│   │   │   │   ├── formatter.ex
│   │   │   │   ├── formatters
│   │   │   │   │   ├── console
│   │   │   │   │   │   ├── helpers.ex
│   │   │   │   │   │   ├── memory.ex
│   │   │   │   │   │   ├── reductions.ex
│   │   │   │   │   │   └── run_time.ex
│   │   │   │   │   ├── console.ex
│   │   │   │   │   └── tagged_save.ex
│   │   │   │   ├── output
│   │   │   │   │   ├── benchmark_printer.ex
│   │   │   │   │   ├── profile_printer.ex
│   │   │   │   │   └── progress_printer.ex
│   │   │   │   ├── profile.ex
│   │   │   │   ├── relative_statistics.ex
│   │   │   │   ├── scenario.ex
│   │   │   │   ├── scenario_loader.ex
│   │   │   │   ├── statistics.ex
│   │   │   │   ├── suite.ex
│   │   │   │   ├── system.ex
│   │   │   │   └── utility
│   │   │   │       ├── deep_convert.ex
│   │   │   │       ├── erlang_version.ex
│   │   │   │       ├── file_creation.ex
│   │   │   │       ├── parallel.ex
│   │   │   │       └── repeat_n.ex
│   │   │   └── benchee.ex
│   │   └── mix.exs
│   ├── bunt
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── bunt.ex
│   │   │   └── bunt_ansi.ex
│   │   └── mix.exs
│   ├── castore
│   │   ├── README.md
│   │   ├── VERSION
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── castore.ex
│   │   ├── mix.exs
│   │   └── priv
│   │       └── cacerts.pem
│   ├── commanded
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── application.ex
│   │   │   ├── commanded
│   │   │   │   ├── aggregates
│   │   │   │   │   ├── aggregate.ex
│   │   │   │   │   ├── aggregate_lifespan.ex
│   │   │   │   │   ├── aggregate_state_builder.ex
│   │   │   │   │   ├── default_lifespan.ex
│   │   │   │   │   ├── execution_context.ex
│   │   │   │   │   ├── multi.ex
│   │   │   │   │   └── supervisor.ex
│   │   │   │   ├── application
│   │   │   │   │   ├── config.ex
│   │   │   │   │   └── supervisor.ex
│   │   │   │   ├── assertions
│   │   │   │   │   └── event_assertions.ex
│   │   │   │   ├── commands
│   │   │   │   │   ├── composite_router.ex
│   │   │   │   │   ├── dispatcher.ex
│   │   │   │   │   ├── execution_result.ex
│   │   │   │   │   ├── handler.ex
│   │   │   │   │   └── router.ex
│   │   │   │   ├── event
│   │   │   │   │   ├── error_handler.ex
│   │   │   │   │   ├── failure_context.ex
│   │   │   │   │   ├── handler.ex
│   │   │   │   │   ├── mapper.ex
│   │   │   │   │   ├── supervisor.ex
│   │   │   │   │   ├── upcast.ex
│   │   │   │   │   └── upcaster.ex
│   │   │   │   ├── event_store
│   │   │   │   │   ├── adapter.ex
│   │   │   │   │   ├── adapters
│   │   │   │   │   │   ├── in_memory
│   │   │   │   │   │   │   ├── persistent_subscription.ex
│   │   │   │   │   │   │   ├── subscriber.ex
│   │   │   │   │   │   │   └── subscription.ex
│   │   │   │   │   │   └── in_memory.ex
│   │   │   │   │   ├── event_data.ex
│   │   │   │   │   ├── recorded_event.ex
│   │   │   │   │   ├── snapshot_data.ex
│   │   │   │   │   ├── subscription.ex
│   │   │   │   │   └── type_provider.ex
│   │   │   │   ├── event_store.ex
│   │   │   │   ├── middleware
│   │   │   │   │   ├── consistency_guarantee.ex
│   │   │   │   │   ├── extract_aggregate_identity.ex
│   │   │   │   │   ├── logger.ex
│   │   │   │   │   ├── middleware.ex
│   │   │   │   │   └── pipeline.ex
│   │   │   │   ├── process_managers
│   │   │   │   │   ├── failure_context.ex
│   │   │   │   │   ├── process_manager.ex
│   │   │   │   │   ├── process_manager_instance.ex
│   │   │   │   │   ├── process_router.ex
│   │   │   │   │   └── supervisor.ex
│   │   │   │   ├── pubsub
│   │   │   │   │   ├── adapter.ex
│   │   │   │   │   ├── local_pubsub.ex
│   │   │   │   │   └── phoenix_pubsub.ex
│   │   │   │   ├── pubsub.ex
│   │   │   │   ├── registration
│   │   │   │   │   ├── adapter.ex
│   │   │   │   │   ├── global_registry.ex
│   │   │   │   │   └── local_registry.ex
│   │   │   │   ├── registration.ex
│   │   │   │   ├── serialization
│   │   │   │   │   ├── json_decoder.ex
│   │   │   │   │   ├── json_serializer.ex
│   │   │   │   │   ├── module_name_type_provider.ex
│   │   │   │   │   └── serializer.ex
│   │   │   │   ├── snapshotting.ex
│   │   │   │   ├── subscriptions
│   │   │   │   │   └── registry.ex
│   │   │   │   ├── subscriptions.ex
│   │   │   │   ├── telemetry.ex
│   │   │   │   └── uuid.ex
│   │   │   ├── commanded.ex
│   │   │   └── mix
│   │   │       └── tasks
│   │   │           └── commanded.reset.ex
│   │   ├── mix.exs
│   │   └── test
│   │       ├── event_store
│   │       │   └── support
│   │       │       ├── append_events_test_case.ex
│   │       │       ├── event_store_prefix_test_case.ex
│   │       │       ├── in_memory_test_case.ex
│   │       │       ├── snapshot_test_case.ex
│   │       │       ├── subscriber.ex
│   │       │       └── subscription_test_case.ex
│   │       ├── example_domain
│   │       │   ├── bank_account
│   │       │   │   ├── account_balance_handler.ex
│   │       │   │   ├── bank_account.ex
│   │       │   │   ├── bank_account_batch_handler.ex
│   │       │   │   ├── bank_account_handler.ex
│   │       │   │   ├── deposit_money_handler.ex
│   │       │   │   ├── open_account_handler.ex
│   │       │   │   └── withdraw_money_handler.ex
│   │       │   ├── bank_app.ex
│   │       │   ├── bank_router.ex
│   │       │   └── money_transfer
│   │       │       ├── money_transfer.ex
│   │       │       ├── transfer_money_command_handler.ex
│   │       │       └── transfer_money_process_manager.ex
│   │       ├── helpers
│   │       │   ├── command_audit_middleware.ex
│   │       │   ├── compile_time_assertions.ex
│   │       │   ├── enumerable.ex
│   │       │   ├── event_factory.ex
│   │       │   ├── process_helper.ex
│   │       │   └── wait.ex
│   │       ├── registration
│   │       │   └── support
│   │       │       ├── registered_server.ex
│   │       │       ├── registered_supervisor.ex
│   │       │       └── registration_test_case.ex
│   │       └── support
│   │           ├── aggregate_case.ex
│   │           ├── default_app.ex
│   │           ├── distributed_app.ex
│   │           ├── mock_event_store_case.ex
│   │           ├── mocked_app.ex
│   │           ├── mocks.ex
│   │           └── shared_test_case.ex
│   ├── credo
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── credo
│   │   │   │   ├── application.ex
│   │   │   │   ├── check
│   │   │   │   │   ├── config_comment.ex
│   │   │   │   │   ├── config_comment_finder.ex
│   │   │   │   │   ├── consistency
│   │   │   │   │   │   ├── collector.ex
│   │   │   │   │   │   ├── exception_names
│   │   │   │   │   │   │   └── collector.ex
│   │   │   │   │   │   ├── exception_names.ex
│   │   │   │   │   │   ├── line_endings
│   │   │   │   │   │   │   └── collector.ex
│   │   │   │   │   │   ├── line_endings.ex
│   │   │   │   │   │   ├── multi_alias_import_require_use
│   │   │   │   │   │   │   └── collector.ex
│   │   │   │   │   │   ├── multi_alias_import_require_use.ex
│   │   │   │   │   │   ├── parameter_pattern_matching
│   │   │   │   │   │   │   └── collector.ex
│   │   │   │   │   │   ├── parameter_pattern_matching.ex
│   │   │   │   │   │   ├── space_around_operators
│   │   │   │   │   │   │   ├── collector.ex
│   │   │   │   │   │   │   └── space_helper.ex
│   │   │   │   │   │   ├── space_around_operators.ex
│   │   │   │   │   │   ├── space_in_parentheses
│   │   │   │   │   │   │   └── collector.ex
│   │   │   │   │   │   ├── space_in_parentheses.ex
│   │   │   │   │   │   ├── tabs_or_spaces
│   │   │   │   │   │   │   └── collector.ex
│   │   │   │   │   │   ├── tabs_or_spaces.ex
│   │   │   │   │   │   ├── unused_variable_names
│   │   │   │   │   │   │   └── collector.ex
│   │   │   │   │   │   └── unused_variable_names.ex
│   │   │   │   │   ├── context.ex
│   │   │   │   │   ├── design
│   │   │   │   │   │   ├── alias_usage.ex
│   │   │   │   │   │   ├── duplicated_code.ex
│   │   │   │   │   │   ├── skip_test_without_comment.ex
│   │   │   │   │   │   ├── tag_fixme.ex
│   │   │   │   │   │   ├── tag_helper.ex
│   │   │   │   │   │   └── tag_todo.ex
│   │   │   │   │   ├── params.ex
│   │   │   │   │   ├── readability
│   │   │   │   │   │   ├── alias_as.ex
│   │   │   │   │   │   ├── alias_order.ex
│   │   │   │   │   │   ├── block_pipe.ex
│   │   │   │   │   │   ├── function_names.ex
│   │   │   │   │   │   ├── impl_true.ex
│   │   │   │   │   │   ├── large_numbers.ex
│   │   │   │   │   │   ├── max_line_length.ex
│   │   │   │   │   │   ├── module_attribute_names.ex
│   │   │   │   │   │   ├── module_doc.ex
│   │   │   │   │   │   ├── module_names.ex
│   │   │   │   │   │   ├── multi_alias.ex
│   │   │   │   │   │   ├── nested_function_calls.ex
│   │   │   │   │   │   ├── one_arity_function_in_pipe.ex
│   │   │   │   │   │   ├── one_pipe_per_line.ex
│   │   │   │   │   │   ├── parentheses_in_condition.ex
│   │   │   │   │   │   ├── parentheses_on_zero_arity_defs.ex
│   │   │   │   │   │   ├── pipe_into_anonymous_functions.ex
│   │   │   │   │   │   ├── predicate_function_names.ex
│   │   │   │   │   │   ├── prefer_implicit_try.ex
│   │   │   │   │   │   ├── prefer_unquoted_atoms.ex
│   │   │   │   │   │   ├── redundant_blank_lines.ex
│   │   │   │   │   │   ├── semicolons.ex
│   │   │   │   │   │   ├── separate_alias_require.ex
│   │   │   │   │   │   ├── single_function_to_block_pipe.ex
│   │   │   │   │   │   ├── single_pipe.ex
│   │   │   │   │   │   ├── space_after_commas.ex
│   │   │   │   │   │   ├── specs.ex
│   │   │   │   │   │   ├── strict_module_layout.ex
│   │   │   │   │   │   ├── string_sigils.ex
│   │   │   │   │   │   ├── trailing_blank_line.ex
│   │   │   │   │   │   ├── trailing_white_space.ex
│   │   │   │   │   │   ├── unnecessary_alias_expansion.ex
│   │   │   │   │   │   ├── variable_names.ex
│   │   │   │   │   │   ├── with_custom_tagged_tuple.ex
│   │   │   │   │   │   └── with_single_clause.ex
│   │   │   │   │   ├── refactor
│   │   │   │   │   │   ├── abc_size.ex
│   │   │   │   │   │   ├── append_single_item.ex
│   │   │   │   │   │   ├── apply.ex
│   │   │   │   │   │   ├── case_trivial_matches.ex
│   │   │   │   │   │   ├── cond_statements.ex
│   │   │   │   │   │   ├── cyclomatic_complexity.ex
│   │   │   │   │   │   ├── double_boolean_negation.ex
│   │   │   │   │   │   ├── enum_helpers.ex
│   │   │   │   │   │   ├── filter_count.ex
│   │   │   │   │   │   ├── filter_filter.ex
│   │   │   │   │   │   ├── filter_reject.ex
│   │   │   │   │   │   ├── function_arity.ex
│   │   │   │   │   │   ├── io_puts.ex
│   │   │   │   │   │   ├── long_quote_blocks.ex
│   │   │   │   │   │   ├── map_into.ex
│   │   │   │   │   │   ├── map_join.ex
│   │   │   │   │   │   ├── map_map.ex
│   │   │   │   │   │   ├── match_in_condition.ex
│   │   │   │   │   │   ├── module_dependencies.ex
│   │   │   │   │   │   ├── negated_conditions_in_unless.ex
│   │   │   │   │   │   ├── negated_conditions_with_else.ex
│   │   │   │   │   │   ├── negated_is_nil.ex
│   │   │   │   │   │   ├── nesting.ex
│   │   │   │   │   │   ├── pass_async_in_test_cases.ex
│   │   │   │   │   │   ├── perceived_complexity.ex
│   │   │   │   │   │   ├── pipe_chain_start.ex
│   │   │   │   │   │   ├── redundant_with_clause_result.ex
│   │   │   │   │   │   ├── reject_filter.ex
│   │   │   │   │   │   ├── reject_reject.ex
│   │   │   │   │   │   ├── unless_with_else.ex
│   │   │   │   │   │   ├── utc_now_truncate.ex
│   │   │   │   │   │   ├── variable_rebinding.ex
│   │   │   │   │   │   └── with_clauses.ex
│   │   │   │   │   ├── runner.ex
│   │   │   │   │   └── warning
│   │   │   │   │       ├── application_config_in_module_attribute.ex
│   │   │   │   │       ├── bool_operation_on_same_values.ex
│   │   │   │   │       ├── dbg.ex
│   │   │   │   │       ├── expensive_empty_enum_check.ex
│   │   │   │   │       ├── forbidden_module.ex
│   │   │   │   │       ├── iex_pry.ex
│   │   │   │   │       ├── io_inspect.ex
│   │   │   │   │       ├── lazy_logging.ex
│   │   │   │   │       ├── leaky_environment.ex
│   │   │   │   │       ├── map_get_unsafe_pass.ex
│   │   │   │   │       ├── missed_metadata_key_in_logger_config.ex
│   │   │   │   │       ├── mix_env.ex
│   │   │   │   │       ├── operation_on_same_values.ex
│   │   │   │   │       ├── operation_with_constant_result.ex
│   │   │   │   │       ├── raise_inside_rescue.ex
│   │   │   │   │       ├── spec_with_struct.ex
│   │   │   │   │       ├── struct_field_amount.ex
│   │   │   │   │       ├── unsafe_exec.ex
│   │   │   │   │       ├── unsafe_to_atom.ex
│   │   │   │   │       ├── unused_enum_operation.ex
│   │   │   │   │       ├── unused_file_operation.ex
│   │   │   │   │       ├── unused_function_return_helper.ex
│   │   │   │   │       ├── unused_keyword_operation.ex
│   │   │   │   │       ├── unused_list_operation.ex
│   │   │   │   │       ├── unused_operation.ex
│   │   │   │   │       ├── unused_path_operation.ex
│   │   │   │   │       ├── unused_regex_operation.ex
│   │   │   │   │       ├── unused_string_operation.ex
│   │   │   │   │       ├── unused_tuple_operation.ex
│   │   │   │   │       └── wrong_test_file_extension.ex
│   │   │   │   ├── check.ex
│   │   │   │   ├── cli
│   │   │   │   │   ├── command
│   │   │   │   │   │   ├── categories
│   │   │   │   │   │   │   ├── categories_command.ex
│   │   │   │   │   │   │   ├── categories_output.ex
│   │   │   │   │   │   │   └── output
│   │   │   │   │   │   │       ├── default.ex
│   │   │   │   │   │   │       └── json.ex
│   │   │   │   │   │   ├── diff
│   │   │   │   │   │   │   ├── diff_command.ex
│   │   │   │   │   │   │   ├── diff_output.ex
│   │   │   │   │   │   │   ├── diff_summary.ex
│   │   │   │   │   │   │   ├── output
│   │   │   │   │   │   │   │   ├── default.ex
│   │   │   │   │   │   │   │   ├── flycheck.ex
│   │   │   │   │   │   │   │   ├── json.ex
│   │   │   │   │   │   │   │   └── oneline.ex
│   │   │   │   │   │   │   └── task
│   │   │   │   │   │   │       ├── filter_issues.ex
│   │   │   │   │   │   │       ├── filter_issues_for_exit_status.ex
│   │   │   │   │   │   │       ├── get_git_diff.ex
│   │   │   │   │   │   │       ├── print_before_info.ex
│   │   │   │   │   │   │       └── print_results_and_summary.ex
│   │   │   │   │   │   ├── explain
│   │   │   │   │   │   │   ├── explain_command.ex
│   │   │   │   │   │   │   ├── explain_output.ex
│   │   │   │   │   │   │   └── output
│   │   │   │   │   │   │       ├── default.ex
│   │   │   │   │   │   │       └── json.ex
│   │   │   │   │   │   ├── gen.check.ex
│   │   │   │   │   │   ├── gen.config.ex
│   │   │   │   │   │   ├── help.ex
│   │   │   │   │   │   ├── info
│   │   │   │   │   │   │   ├── info_command.ex
│   │   │   │   │   │   │   ├── info_output.ex
│   │   │   │   │   │   │   └── output
│   │   │   │   │   │   │       ├── default.ex
│   │   │   │   │   │   │       └── json.ex
│   │   │   │   │   │   ├── list
│   │   │   │   │   │   │   ├── list_command.ex
│   │   │   │   │   │   │   ├── list_output.ex
│   │   │   │   │   │   │   └── output
│   │   │   │   │   │   │       ├── default.ex
│   │   │   │   │   │   │       ├── flycheck.ex
│   │   │   │   │   │   │       ├── json.ex
│   │   │   │   │   │   │       ├── oneline.ex
│   │   │   │   │   │   │       └── sarif.ex
│   │   │   │   │   │   ├── suggest
│   │   │   │   │   │   │   ├── output
│   │   │   │   │   │   │   │   ├── default.ex
│   │   │   │   │   │   │   │   ├── flycheck.ex
│   │   │   │   │   │   │   │   ├── json.ex
│   │   │   │   │   │   │   │   ├── oneline.ex
│   │   │   │   │   │   │   │   └── sarif.ex
│   │   │   │   │   │   │   ├── suggest_command.ex
│   │   │   │   │   │   │   └── suggest_output.ex
│   │   │   │   │   │   └── version.ex
│   │   │   │   │   ├── command.ex
│   │   │   │   │   ├── exit_status.ex
│   │   │   │   │   ├── filename.ex
│   │   │   │   │   ├── filter.ex
│   │   │   │   │   ├── options.ex
│   │   │   │   │   ├── output
│   │   │   │   │   │   ├── first_run_hint.ex
│   │   │   │   │   │   ├── format_delegator.ex
│   │   │   │   │   │   ├── formatter
│   │   │   │   │   │   │   ├── flycheck.ex
│   │   │   │   │   │   │   ├── json.ex
│   │   │   │   │   │   │   ├── oneline.ex
│   │   │   │   │   │   │   └── sarif.ex
│   │   │   │   │   │   ├── shell.ex
│   │   │   │   │   │   ├── summary.ex
│   │   │   │   │   │   └── ui.ex
│   │   │   │   │   ├── output.ex
│   │   │   │   │   ├── sorter.ex
│   │   │   │   │   ├── switch.ex
│   │   │   │   │   └── task
│   │   │   │   │       ├── load_and_validate_source_files.ex
│   │   │   │   │       ├── prepare_checks_to_run.ex
│   │   │   │   │       ├── run_checks.ex
│   │   │   │   │       └── set_relevant_issues.ex
│   │   │   │   ├── cli.ex
│   │   │   │   ├── code
│   │   │   │   │   ├── block.ex
│   │   │   │   │   ├── charlists.ex
│   │   │   │   │   ├── heredocs.ex
│   │   │   │   │   ├── interpolation_helper.ex
│   │   │   │   │   ├── module.ex
│   │   │   │   │   ├── name.ex
│   │   │   │   │   ├── parameters.ex
│   │   │   │   │   ├── scope.ex
│   │   │   │   │   ├── sigils.ex
│   │   │   │   │   ├── strings.ex
│   │   │   │   │   ├── token.ex
│   │   │   │   │   └── token_ast_correlation.ex
│   │   │   │   ├── code.ex
│   │   │   │   ├── config_builder.ex
│   │   │   │   ├── config_file.ex
│   │   │   │   ├── execution
│   │   │   │   │   ├── execution_config_files.ex
│   │   │   │   │   ├── execution_issues.ex
│   │   │   │   │   ├── execution_source_files.ex
│   │   │   │   │   ├── execution_timing.ex
│   │   │   │   │   ├── task
│   │   │   │   │   │   ├── append_default_config.ex
│   │   │   │   │   │   ├── append_extra_config.ex
│   │   │   │   │   │   ├── assign_exit_status_for_issues.ex
│   │   │   │   │   │   ├── convert_cli_options_to_config.ex
│   │   │   │   │   │   ├── determine_command.ex
│   │   │   │   │   │   ├── initialize_command.ex
│   │   │   │   │   │   ├── initialize_plugins.ex
│   │   │   │   │   │   ├── parse_options.ex
│   │   │   │   │   │   ├── require_requires.ex
│   │   │   │   │   │   ├── run_command.ex
│   │   │   │   │   │   ├── set_default_command.ex
│   │   │   │   │   │   ├── use_colors.ex
│   │   │   │   │   │   ├── validate_config.ex
│   │   │   │   │   │   ├── validate_options.ex
│   │   │   │   │   │   └── write_debug_report.ex
│   │   │   │   │   └── task.ex
│   │   │   │   ├── execution.ex
│   │   │   │   ├── exs_loader.ex
│   │   │   │   ├── issue.ex
│   │   │   │   ├── issue_meta.ex
│   │   │   │   ├── plugin.ex
│   │   │   │   ├── priority.ex
│   │   │   │   ├── service
│   │   │   │   │   ├── config_files.ex
│   │   │   │   │   ├── ets_table_helper.ex
│   │   │   │   │   ├── source_file_ast.ex
│   │   │   │   │   ├── source_file_lines.ex
│   │   │   │   │   ├── source_file_scope_priorities.ex
│   │   │   │   │   ├── source_file_scopes.ex
│   │   │   │   │   └── source_file_source.ex
│   │   │   │   ├── severity.ex
│   │   │   │   ├── source_file.ex
│   │   │   │   ├── sources.ex
│   │   │   │   ├── test
│   │   │   │   │   ├── assertions.ex
│   │   │   │   │   ├── case.ex
│   │   │   │   │   ├── check_runner.ex
│   │   │   │   │   └── source_files.ex
│   │   │   │   └── watcher.ex
│   │   │   ├── credo.ex
│   │   │   └── mix
│   │   │       └── tasks
│   │   │           ├── credo.ex
│   │   │           ├── credo.gen.check.ex
│   │   │           └── credo.gen.config.ex
│   │   └── mix.exs
│   ├── db_connection
│   │   ├── CHANGELOG.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── db_connection
│   │   │   │   ├── app.ex
│   │   │   │   ├── backoff.ex
│   │   │   │   ├── connection.ex
│   │   │   │   ├── connection_error.ex
│   │   │   │   ├── connection_pool
│   │   │   │   │   └── pool.ex
│   │   │   │   ├── connection_pool.ex
│   │   │   │   ├── holder.ex
│   │   │   │   ├── log_entry.ex
│   │   │   │   ├── ownership
│   │   │   │   │   ├── manager.ex
│   │   │   │   │   └── proxy.ex
│   │   │   │   ├── ownership.ex
│   │   │   │   ├── pool.ex
│   │   │   │   ├── query.ex
│   │   │   │   ├── task.ex
│   │   │   │   ├── telemetry_listener.ex
│   │   │   │   ├── util.ex
│   │   │   │   └── watcher.ex
│   │   │   └── db_connection.ex
│   │   └── mix.exs
│   ├── decimal
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE.txt
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── decimal
│   │   │   │   ├── context.ex
│   │   │   │   ├── error.ex
│   │   │   │   └── macros.ex
│   │   │   └── decimal.ex
│   │   └── mix.exs
│   ├── deep_merge
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── deep_merge
│   │   │   │   └── resolver.ex
│   │   │   └── deep_merge.ex
│   │   └── mix.exs
│   ├── dialyxir
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── dialyxir
│   │   │   │   ├── dialyzer.ex
│   │   │   │   ├── filter_map.ex
│   │   │   │   ├── formatter
│   │   │   │   │   ├── dialyxir.ex
│   │   │   │   │   ├── dialyzer.ex
│   │   │   │   │   ├── github.ex
│   │   │   │   │   ├── ignore_file.ex
│   │   │   │   │   ├── ignore_file_strict.ex
│   │   │   │   │   ├── raw.ex
│   │   │   │   │   ├── short.ex
│   │   │   │   │   └── utils.ex
│   │   │   │   ├── formatter.ex
│   │   │   │   ├── output.ex
│   │   │   │   ├── plt.ex
│   │   │   │   ├── project.ex
│   │   │   │   ├── warning.ex
│   │   │   │   ├── warning_helpers.ex
│   │   │   │   ├── warnings
│   │   │   │   │   ├── app_call.ex
│   │   │   │   │   ├── apply.ex
│   │   │   │   │   ├── binary_construction.ex
│   │   │   │   │   ├── call.ex
│   │   │   │   │   ├── call_to_missing_function.ex
│   │   │   │   │   ├── call_with_opaque.ex
│   │   │   │   │   ├── call_without_opaque.ex
│   │   │   │   │   ├── callback_argument_type_mismatch.ex
│   │   │   │   │   ├── callback_info_missing.ex
│   │   │   │   │   ├── callback_missing.ex
│   │   │   │   │   ├── callback_not_exported.ex
│   │   │   │   │   ├── callback_spec_argument_type_mismatch.ex
│   │   │   │   │   ├── callback_spec_type_mismatch.ex
│   │   │   │   │   ├── callback_type_mismatch.ex
│   │   │   │   │   ├── contract_diff.ex
│   │   │   │   │   ├── contract_range.ex
│   │   │   │   │   ├── contract_subtype.ex
│   │   │   │   │   ├── contract_supertype.ex
│   │   │   │   │   ├── contract_with_opaque.ex
│   │   │   │   │   ├── exact_equality.ex
│   │   │   │   │   ├── extra_range.ex
│   │   │   │   │   ├── function_application_arguments.ex
│   │   │   │   │   ├── function_application_no_function.ex
│   │   │   │   │   ├── guard_fail.ex
│   │   │   │   │   ├── guard_fail_pattern.ex
│   │   │   │   │   ├── improper_list_construction.ex
│   │   │   │   │   ├── invalid_contract.ex
│   │   │   │   │   ├── map_update.ex
│   │   │   │   │   ├── missing_range.ex
│   │   │   │   │   ├── negative_guard_fail.ex
│   │   │   │   │   ├── no_return.ex
│   │   │   │   │   ├── opaque_equality.ex
│   │   │   │   │   ├── opaque_guard.ex
│   │   │   │   │   ├── opaque_match.ex
│   │   │   │   │   ├── opaque_nonequality.ex
│   │   │   │   │   ├── opaque_type_test.ex
│   │   │   │   │   ├── overlapping_contract.ex
│   │   │   │   │   ├── pattern_match.ex
│   │   │   │   │   ├── pattern_match_covered.ex
│   │   │   │   │   ├── record_construction.ex
│   │   │   │   │   ├── record_match.ex
│   │   │   │   │   ├── record_matching.ex
│   │   │   │   │   ├── unknown_behaviour.ex
│   │   │   │   │   ├── unknown_function.ex
│   │   │   │   │   ├── unknown_type.ex
│   │   │   │   │   ├── unmatched_return.ex
│   │   │   │   │   └── unused_function.ex
│   │   │   │   └── warnings.ex
│   │   │   ├── dialyxir.ex
│   │   │   └── mix
│   │   │       └── tasks
│   │   │           ├── dialyzer
│   │   │           │   └── explain.ex
│   │   │           └── dialyzer.ex
│   │   └── mix.exs
│   ├── earmark_parser
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── RELEASE.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── earmark_parser
│   │   │   │   ├── ast
│   │   │   │   │   ├── emitter.ex
│   │   │   │   │   ├── inline.ex
│   │   │   │   │   └── renderer
│   │   │   │   │       ├── ast_walker.ex
│   │   │   │   │       ├── footnote_renderer.ex
│   │   │   │   │       ├── html_renderer.ex
│   │   │   │   │       └── table_renderer.ex
│   │   │   │   ├── ast_renderer.ex
│   │   │   │   ├── block
│   │   │   │   │   ├── block_quote.ex
│   │   │   │   │   ├── code.ex
│   │   │   │   │   ├── fn_def.ex
│   │   │   │   │   ├── fn_list.ex
│   │   │   │   │   ├── heading.ex
│   │   │   │   │   ├── html.ex
│   │   │   │   │   ├── html_comment.ex
│   │   │   │   │   ├── html_oneline.ex
│   │   │   │   │   ├── ial.ex
│   │   │   │   │   ├── id_def.ex
│   │   │   │   │   ├── list.ex
│   │   │   │   │   ├── list_item.ex
│   │   │   │   │   ├── para.ex
│   │   │   │   │   ├── ruler.ex
│   │   │   │   │   ├── table.ex
│   │   │   │   │   └── text.ex
│   │   │   │   ├── context.ex
│   │   │   │   ├── enum
│   │   │   │   │   └── ext.ex
│   │   │   │   ├── helpers
│   │   │   │   │   ├── ast_helpers.ex
│   │   │   │   │   ├── attr_parser.ex
│   │   │   │   │   ├── html_parser.ex
│   │   │   │   │   ├── leex_helpers.ex
│   │   │   │   │   ├── line_helpers.ex
│   │   │   │   │   ├── lookahead_helpers.ex
│   │   │   │   │   ├── pure_link_helpers.ex
│   │   │   │   │   ├── reparse_helpers.ex
│   │   │   │   │   ├── string_helpers.ex
│   │   │   │   │   └── yecc_helpers.ex
│   │   │   │   ├── helpers.ex
│   │   │   │   ├── line.ex
│   │   │   │   ├── line_scanner
│   │   │   │   │   └── rgx.ex
│   │   │   │   ├── line_scanner.ex
│   │   │   │   ├── message.ex
│   │   │   │   ├── options.ex
│   │   │   │   ├── parser
│   │   │   │   │   ├── footnote_parser.ex
│   │   │   │   │   ├── link_parser.ex
│   │   │   │   │   ├── list_info.ex
│   │   │   │   │   └── list_parser.ex
│   │   │   │   └── parser.ex
│   │   │   └── earmark_parser.ex
│   │   ├── mix.exs
│   │   └── src
│   │       ├── earmark_parser_link_text_lexer.erl
│   │       ├── earmark_parser_link_text_lexer.xrl
│   │       ├── earmark_parser_link_text_parser.erl
│   │       ├── earmark_parser_link_text_parser.yrl
│   │       ├── earmark_parser_string_lexer.erl
│   │       └── earmark_parser_string_lexer.xrl
│   ├── ecto
│   │   ├── CHANGELOG.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── integration_test
│   │   │   ├── cases
│   │   │   │   ├── assoc.exs
│   │   │   │   ├── interval.exs
│   │   │   │   ├── joins.exs
│   │   │   │   ├── preload.exs
│   │   │   │   ├── repo.exs
│   │   │   │   ├── type.exs
│   │   │   │   └── windows.exs
│   │   │   └── support
│   │   │       ├── schemas.exs
│   │   │       └── types.exs
│   │   ├── lib
│   │   │   ├── ecto
│   │   │   │   ├── adapter
│   │   │   │   │   ├── queryable.ex
│   │   │   │   │   ├── schema.ex
│   │   │   │   │   ├── storage.ex
│   │   │   │   │   └── transaction.ex
│   │   │   │   ├── adapter.ex
│   │   │   │   ├── application.ex
│   │   │   │   ├── association.ex
│   │   │   │   ├── changeset
│   │   │   │   │   └── relation.ex
│   │   │   │   ├── changeset.ex
│   │   │   │   ├── embedded.ex
│   │   │   │   ├── enum.ex
│   │   │   │   ├── exceptions.ex
│   │   │   │   ├── json.ex
│   │   │   │   ├── multi.ex
│   │   │   │   ├── parameterized_type.ex
│   │   │   │   ├── query
│   │   │   │   │   ├── api.ex
│   │   │   │   │   ├── builder
│   │   │   │   │   │   ├── combination.ex
│   │   │   │   │   │   ├── cte.ex
│   │   │   │   │   │   ├── distinct.ex
│   │   │   │   │   │   ├── dynamic.ex
│   │   │   │   │   │   ├── filter.ex
│   │   │   │   │   │   ├── from.ex
│   │   │   │   │   │   ├── group_by.ex
│   │   │   │   │   │   ├── join.ex
│   │   │   │   │   │   ├── limit_offset.ex
│   │   │   │   │   │   ├── lock.ex
│   │   │   │   │   │   ├── order_by.ex
│   │   │   │   │   │   ├── preload.ex
│   │   │   │   │   │   ├── select.ex
│   │   │   │   │   │   ├── update.ex
│   │   │   │   │   │   └── windows.ex
│   │   │   │   │   ├── builder.ex
│   │   │   │   │   ├── inspect.ex
│   │   │   │   │   ├── planner.ex
│   │   │   │   │   └── window_api.ex
│   │   │   │   ├── query.ex
│   │   │   │   ├── queryable.ex
│   │   │   │   ├── repo
│   │   │   │   │   ├── assoc.ex
│   │   │   │   │   ├── preloader.ex
│   │   │   │   │   ├── queryable.ex
│   │   │   │   │   ├── registry.ex
│   │   │   │   │   ├── schema.ex
│   │   │   │   │   ├── supervisor.ex
│   │   │   │   │   └── transaction.ex
│   │   │   │   ├── repo.ex
│   │   │   │   ├── schema
│   │   │   │   │   ├── loader.ex
│   │   │   │   │   └── metadata.ex
│   │   │   │   ├── schema.ex
│   │   │   │   ├── type.ex
│   │   │   │   └── uuid.ex
│   │   │   ├── ecto.ex
│   │   │   └── mix
│   │   │       ├── ecto.ex
│   │   │       └── tasks
│   │   │           ├── ecto.create.ex
│   │   │           ├── ecto.drop.ex
│   │   │           ├── ecto.ex
│   │   │           └── ecto.gen.repo.ex
│   │   └── mix.exs
│   ├── ecto_sql
│   │   ├── CHANGELOG.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── integration_test
│   │   │   ├── sql
│   │   │   │   ├── alter.exs
│   │   │   │   ├── lock.exs
│   │   │   │   ├── logging.exs
│   │   │   │   ├── migration.exs
│   │   │   │   ├── migrator.exs
│   │   │   │   ├── query_many.exs
│   │   │   │   ├── sandbox.exs
│   │   │   │   ├── sql.exs
│   │   │   │   ├── stream.exs
│   │   │   │   ├── subquery.exs
│   │   │   │   └── transaction.exs
│   │   │   └── support
│   │   │       ├── file_helpers.exs
│   │   │       ├── migration.exs
│   │   │       └── repo.exs
│   │   ├── lib
│   │   │   ├── ecto
│   │   │   │   ├── adapter
│   │   │   │   │   ├── migration.ex
│   │   │   │   │   └── structure.ex
│   │   │   │   ├── adapters
│   │   │   │   │   ├── myxql
│   │   │   │   │   │   └── connection.ex
│   │   │   │   │   ├── myxql.ex
│   │   │   │   │   ├── postgres
│   │   │   │   │   │   └── connection.ex
│   │   │   │   │   ├── postgres.ex
│   │   │   │   │   ├── sql
│   │   │   │   │   │   ├── application.ex
│   │   │   │   │   │   ├── connection.ex
│   │   │   │   │   │   ├── sandbox.ex
│   │   │   │   │   │   └── stream.ex
│   │   │   │   │   ├── sql.ex
│   │   │   │   │   ├── tds
│   │   │   │   │   │   ├── connection.ex
│   │   │   │   │   │   └── types.ex
│   │   │   │   │   └── tds.ex
│   │   │   │   ├── migration
│   │   │   │   │   ├── runner.ex
│   │   │   │   │   └── schema_migration.ex
│   │   │   │   ├── migration.ex
│   │   │   │   └── migrator.ex
│   │   │   └── mix
│   │   │       ├── ecto_sql.ex
│   │   │       └── tasks
│   │   │           ├── ecto.dump.ex
│   │   │           ├── ecto.gen.migration.ex
│   │   │           ├── ecto.load.ex
│   │   │           ├── ecto.migrate.ex
│   │   │           ├── ecto.migrations.ex
│   │   │           └── ecto.rollback.ex
│   │   └── mix.exs
│   ├── erlex
│   │   ├── LICENSE.md
│   │   ├── README.md
│   │   ├── VERSION
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── erlex.ex
│   │   ├── mix.exs
│   │   └── src
│   │       ├── erlex_lexer.erl
│   │       ├── erlex_lexer.xrl
│   │       ├── erlex_parser.erl
│   │       └── erlex_parser.yrl
│   ├── eventstore
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── guides
│   │   │   ├── Architecture.md
│   │   │   ├── Cluster.md
│   │   │   ├── Event Serialization.md
│   │   │   ├── FAQ.md
│   │   │   ├── Getting Started.md
│   │   │   ├── Subscriptions.md
│   │   │   ├── Upgrades.md
│   │   │   ├── Usage.md
│   │   │   └── upgrades
│   │   │       └── 0.17-1.0.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── event_store
│   │   │   │   ├── advisory_locks.ex
│   │   │   │   ├── application.ex
│   │   │   │   ├── config
│   │   │   │   │   ├── parser.ex
│   │   │   │   │   └── store.ex
│   │   │   │   ├── config.ex
│   │   │   │   ├── eex_iolist_engine.ex
│   │   │   │   ├── event_data.ex
│   │   │   │   ├── json_serializer.ex
│   │   │   │   ├── jsonb_serializer.ex
│   │   │   │   ├── monitored_server.ex
│   │   │   │   ├── notifications
│   │   │   │   │   ├── listener.ex
│   │   │   │   │   ├── notification.ex
│   │   │   │   │   ├── publisher.ex
│   │   │   │   │   └── supervisor.ex
│   │   │   │   ├── page.ex
│   │   │   │   ├── pubsub.ex
│   │   │   │   ├── recorded_event.ex
│   │   │   │   ├── serializer.ex
│   │   │   │   ├── snapshots
│   │   │   │   │   ├── snapshot_data.ex
│   │   │   │   │   └── snapshotter.ex
│   │   │   │   ├── sql
│   │   │   │   │   ├── init.ex
│   │   │   │   │   ├── reset.ex
│   │   │   │   │   ├── statements
│   │   │   │   │   │   ├── advisory_unlock.sql.eex
│   │   │   │   │   │   ├── count_streams.sql.eex
│   │   │   │   │   │   ├── create_stream.sql.eex
│   │   │   │   │   │   ├── delete_snapshot.sql.eex
│   │   │   │   │   │   ├── delete_subscription.sql.eex
│   │   │   │   │   │   ├── hard_delete_stream.sql.eex
│   │   │   │   │   │   ├── insert_events.sql.eex
│   │   │   │   │   │   ├── insert_events_any_version.sql.eex
│   │   │   │   │   │   ├── insert_link_events.sql.eex
│   │   │   │   │   │   ├── insert_snapshot.sql.eex
│   │   │   │   │   │   ├── insert_subscription.sql.eex
│   │   │   │   │   │   ├── query_all_subscriptions.sql.eex
│   │   │   │   │   │   ├── query_snapshot.sql.eex
│   │   │   │   │   │   ├── query_stream_events_backward.sql.eex
│   │   │   │   │   │   ├── query_stream_events_forward.sql.eex
│   │   │   │   │   │   ├── query_stream_info.sql.eex
│   │   │   │   │   │   ├── query_streams.sql.eex
│   │   │   │   │   │   ├── query_subscription.sql.eex
│   │   │   │   │   │   ├── soft_delete_stream.sql.eex
│   │   │   │   │   │   ├── subscription_ack.sql.eex
│   │   │   │   │   │   └── try_advisory_lock.sql.eex
│   │   │   │   │   └── statements.ex
│   │   │   │   ├── storage
│   │   │   │   │   ├── appender.ex
│   │   │   │   │   ├── create_stream.ex
│   │   │   │   │   ├── database.ex
│   │   │   │   │   ├── delete_stream.ex
│   │   │   │   │   ├── initializer.ex
│   │   │   │   │   ├── lock.ex
│   │   │   │   │   ├── reader.ex
│   │   │   │   │   ├── schema.ex
│   │   │   │   │   ├── snapshot.ex
│   │   │   │   │   ├── stream.ex
│   │   │   │   │   └── subscription.ex
│   │   │   │   ├── storage.ex
│   │   │   │   ├── streams
│   │   │   │   │   ├── stream.ex
│   │   │   │   │   └── stream_info.ex
│   │   │   │   ├── subscriptions
│   │   │   │   │   ├── subscriber.ex
│   │   │   │   │   ├── subscription.ex
│   │   │   │   │   ├── subscription_fsm.ex
│   │   │   │   │   ├── subscription_state.ex
│   │   │   │   │   └── supervisor.ex
│   │   │   │   ├── subscriptions.ex
│   │   │   │   ├── supervisor.ex
│   │   │   │   ├── tasks
│   │   │   │   │   ├── create.ex
│   │   │   │   │   ├── drop.ex
│   │   │   │   │   ├── init.ex
│   │   │   │   │   ├── migrate.ex
│   │   │   │   │   ├── migrations.ex
│   │   │   │   │   └── output.ex
│   │   │   │   ├── term_serializer.ex
│   │   │   │   └── uuid.ex
│   │   │   ├── event_store.ex
│   │   │   ├── mix
│   │   │   │   ├── event_store.ex
│   │   │   │   └── tasks
│   │   │   │       ├── event_store.create.ex
│   │   │   │       ├── event_store.drop.ex
│   │   │   │       ├── event_store.init.ex
│   │   │   │       ├── event_store.migrate.ex
│   │   │   │       └── event_store.migrations.ex
│   │   │   └── register_postgres_types.ex
│   │   ├── mix.exs
│   │   └── priv
│   │       └── event_store
│   │           └── migrations
│   │               ├── v0.10.0.sql
│   │               ├── v0.11.0.sql
│   │               ├── v0.13.0.sql
│   │               ├── v0.14.0.sql
│   │               ├── v0.17.0.sql
│   │               ├── v0.9.0.sql
│   │               ├── v1.1.0.sql
│   │               ├── v1.2.0.sql
│   │               ├── v1.3.0.sql
│   │               └── v1.3.2.sql
│   ├── ex_doc
│   │   ├── CHANGELOG.md
│   │   ├── Cheatsheet.cheatmd
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── formatters
│   │   │   ├── epub
│   │   │   │   ├── dist
│   │   │   │   │   ├── epub-4WIP524F.js
│   │   │   │   │   ├── epub-elixir-FD6K6ZU3.css
│   │   │   │   │   └── epub-erlang-KYSDNUA3.css
│   │   │   │   └── metainfo
│   │   │   │       ├── com.apple.ibooks.display-options.xml
│   │   │   │       └── container.xml
│   │   │   └── html
│   │   │       └── dist
│   │   │           ├── html-XBCM4BHM.js
│   │   │           ├── html-elixir-VYWJUHZE.css
│   │   │           ├── html-erlang-TPJSOIRZ.css
│   │   │           ├── inline_html-4XT25SPW.js
│   │   │           ├── lato-all-400-normal-MNITWADU.woff
│   │   │           ├── lato-all-700-normal-XMT5XFBS.woff
│   │   │           ├── lato-latin-400-normal-W7754I4D.woff2
│   │   │           ├── lato-latin-700-normal-2XVSBPG4.woff2
│   │   │           ├── lato-latin-ext-400-normal-N27NCBWW.woff2
│   │   │           ├── lato-latin-ext-700-normal-Q2L5DVMW.woff2
│   │   │           └── remixicon-QPNJX265.woff2
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── ex_doc
│   │   │   │   ├── application.ex
│   │   │   │   ├── autolink.ex
│   │   │   │   ├── cli.ex
│   │   │   │   ├── config.ex
│   │   │   │   ├── doc_ast.ex
│   │   │   │   ├── formatter
│   │   │   │   │   ├── epub
│   │   │   │   │   │   ├── assets.ex
│   │   │   │   │   │   ├── templates
│   │   │   │   │   │   │   ├── content_template.eex
│   │   │   │   │   │   │   ├── extra_template.eex
│   │   │   │   │   │   │   ├── head_template.eex
│   │   │   │   │   │   │   ├── media-types.txt
│   │   │   │   │   │   │   ├── module_template.eex
│   │   │   │   │   │   │   ├── nav_grouped_item_template.eex
│   │   │   │   │   │   │   ├── nav_template.eex
│   │   │   │   │   │   │   ├── title_template.eex
│   │   │   │   │   │   │   └── toc_item_template.eex
│   │   │   │   │   │   └── templates.ex
│   │   │   │   │   ├── epub.ex
│   │   │   │   │   ├── html
│   │   │   │   │   │   ├── assets.ex
│   │   │   │   │   │   ├── search_data.ex
│   │   │   │   │   │   ├── templates
│   │   │   │   │   │   │   ├── api_reference_entry_template.eex
│   │   │   │   │   │   │   ├── api_reference_template.eex
│   │   │   │   │   │   │   ├── detail_template.eex
│   │   │   │   │   │   │   ├── extra_template.eex
│   │   │   │   │   │   │   ├── footer_template.eex
│   │   │   │   │   │   │   ├── head_template.eex
│   │   │   │   │   │   │   ├── module_template.eex
│   │   │   │   │   │   │   ├── not_found_template.eex
│   │   │   │   │   │   │   ├── redirect_template.eex
│   │   │   │   │   │   │   ├── search_template.eex
│   │   │   │   │   │   │   ├── sidebar_template.eex
│   │   │   │   │   │   │   └── summary_template.eex
│   │   │   │   │   │   └── templates.ex
│   │   │   │   │   └── html.ex
│   │   │   │   ├── formatter.ex
│   │   │   │   ├── group_matcher.ex
│   │   │   │   ├── language
│   │   │   │   │   ├── elixir.ex
│   │   │   │   │   ├── erlang.ex
│   │   │   │   │   └── source.ex
│   │   │   │   ├── language.ex
│   │   │   │   ├── markdown
│   │   │   │   │   └── earmark.ex
│   │   │   │   ├── markdown.ex
│   │   │   │   ├── nodes.ex
│   │   │   │   ├── refs.ex
│   │   │   │   ├── retriever.ex
│   │   │   │   ├── shell_lexer.ex
│   │   │   │   └── utils.ex
│   │   │   ├── ex_doc.ex
│   │   │   └── mix
│   │   │       └── tasks
│   │   │           └── docs.ex
│   │   └── mix.exs
│   ├── expo
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── expo
│   │   │   │   ├── message
│   │   │   │   │   ├── plural.ex
│   │   │   │   │   └── singular.ex
│   │   │   │   ├── message.ex
│   │   │   │   ├── messages.ex
│   │   │   │   ├── mo
│   │   │   │   │   ├── composer.ex
│   │   │   │   │   ├── invalid_file_error.ex
│   │   │   │   │   ├── parser.ex
│   │   │   │   │   └── unsupported_version_error.ex
│   │   │   │   ├── mo.ex
│   │   │   │   ├── plural_forms
│   │   │   │   │   ├── known.ex
│   │   │   │   │   ├── syntax_error.ex
│   │   │   │   │   └── tokenizer.ex
│   │   │   │   ├── plural_forms.ex
│   │   │   │   ├── po
│   │   │   │   │   ├── composer.ex
│   │   │   │   │   ├── duplicate_translations_error.ex
│   │   │   │   │   ├── parser.ex
│   │   │   │   │   ├── syntax_error.ex
│   │   │   │   │   └── tokenizer.ex
│   │   │   │   ├── po.ex
│   │   │   │   └── util.ex
│   │   │   └── mix
│   │   │       └── tasks
│   │   │           ├── expo.msgmft.ex
│   │   │           └── expo.msguniq.ex
│   │   ├── mix.exs
│   │   └── src
│   │       ├── expo_plural_forms_parser.erl
│   │       ├── expo_plural_forms_parser.yrl
│   │       ├── expo_po_parser.erl
│   │       └── expo_po_parser.yrl
│   ├── file_system
│   │   ├── README.md
│   │   ├── c_src
│   │   │   └── mac
│   │   │       ├── cli.c
│   │   │       ├── cli.h
│   │   │       ├── common.h
│   │   │       ├── compat.c
│   │   │       ├── compat.h
│   │   │       └── main.c
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── file_system
│   │   │   │   ├── backend.ex
│   │   │   │   ├── backends
│   │   │   │   │   ├── fs_inotify.ex
│   │   │   │   │   ├── fs_mac.ex
│   │   │   │   │   ├── fs_poll.ex
│   │   │   │   │   └── fs_windows.ex
│   │   │   │   └── worker.ex
│   │   │   └── file_system.ex
│   │   ├── mix.exs
│   │   └── priv
│   │       └── inotifywait.exe
│   ├── fsm
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── fsm.ex
│   │   └── mix.exs
│   ├── gen_stage
│   │   ├── CHANGELOG.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── consumer_supervisor.ex
│   │   │   ├── gen_stage
│   │   │   │   ├── buffer.ex
│   │   │   │   ├── dispatcher.ex
│   │   │   │   ├── dispatchers
│   │   │   │   │   ├── broadcast_dispatcher.ex
│   │   │   │   │   ├── demand_dispatcher.ex
│   │   │   │   │   └── partition_dispatcher.ex
│   │   │   │   ├── stream.ex
│   │   │   │   ├── streamer.ex
│   │   │   │   └── utils.ex
│   │   │   └── gen_stage.ex
│   │   └── mix.exs
│   ├── gettext
│   │   ├── CHANGELOG.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── gettext
│   │   │   │   ├── application.ex
│   │   │   │   ├── backend.ex
│   │   │   │   ├── compiler.ex
│   │   │   │   ├── error.ex
│   │   │   │   ├── extractor.ex
│   │   │   │   ├── extractor_agent.ex
│   │   │   │   ├── fuzzy.ex
│   │   │   │   ├── interpolation
│   │   │   │   │   └── default.ex
│   │   │   │   ├── interpolation.ex
│   │   │   │   ├── macros.ex
│   │   │   │   ├── merger.ex
│   │   │   │   ├── missing_bindings_error.ex
│   │   │   │   ├── plural.ex
│   │   │   │   └── plural_form_error.ex
│   │   │   ├── gettext.ex
│   │   │   └── mix
│   │   │       └── tasks
│   │   │           ├── compile.gettext.ex
│   │   │           ├── gettext.extract.ex
│   │   │           └── gettext.merge.ex
│   │   └── mix.exs
│   ├── jason
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── codegen.ex
│   │   │   ├── decoder.ex
│   │   │   ├── encode.ex
│   │   │   ├── encoder.ex
│   │   │   ├── formatter.ex
│   │   │   ├── fragment.ex
│   │   │   ├── helpers.ex
│   │   │   ├── jason.ex
│   │   │   ├── ordered_object.ex
│   │   │   └── sigil.ex
│   │   └── mix.exs
│   ├── makeup
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── makeup
│   │   │   │   ├── application.ex
│   │   │   │   ├── formatter.ex
│   │   │   │   ├── formatters
│   │   │   │   │   └── html
│   │   │   │   │       ├── html_formatter.ex
│   │   │   │   │       └── scripts
│   │   │   │   │           └── group_highlighter_javascript.js
│   │   │   │   ├── lexer
│   │   │   │   │   ├── combinators.ex
│   │   │   │   │   ├── groups.ex
│   │   │   │   │   ├── postprocess.ex
│   │   │   │   │   └── types.ex
│   │   │   │   ├── lexer.ex
│   │   │   │   ├── registry.ex
│   │   │   │   ├── styles
│   │   │   │   │   └── html
│   │   │   │   │       ├── style.ex
│   │   │   │   │       ├── style_map.ex
│   │   │   │   │       └── token_style.ex
│   │   │   │   └── token
│   │   │   │       ├── utils
│   │   │   │       │   └── hierarchy.ex
│   │   │   │       └── utils.ex
│   │   │   └── makeup.ex
│   │   └── mix.exs
│   ├── makeup_elixir
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── makeup
│   │   │       └── lexers
│   │   │           ├── elixir_lexer
│   │   │           │   ├── application.ex
│   │   │           │   ├── atoms.ex
│   │   │           │   ├── atoms.ex.exs
│   │   │           │   ├── helper.ex
│   │   │           │   ├── testing.ex
│   │   │           │   ├── variables.ex
│   │   │           │   └── variables.ex.exs
│   │   │           └── elixir_lexer.ex
│   │   └── mix.exs
│   ├── makeup_erlang
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── makeup
│   │   │       └── lexers
│   │   │           ├── erlang_lexer
│   │   │           │   ├── application.ex
│   │   │           │   ├── helper.ex
│   │   │           │   └── testing.ex
│   │   │           └── erlang_lexer.ex
│   │   └── mix.exs
│   ├── mime
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── mime.ex
│   │   └── mix.exs
│   ├── nimble_parsec
│   │   ├── CHANGELOG.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── mix
│   │   │   │   └── tasks
│   │   │   │       └── nimble_parsec.compile.ex
│   │   │   ├── nimble_parsec
│   │   │   │   ├── compiler.ex
│   │   │   │   └── recorder.ex
│   │   │   └── nimble_parsec.ex
│   │   └── mix.exs
│   ├── phoenix
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE.md
│   │   ├── README.md
│   │   ├── assets
│   │   │   └── js
│   │   │       └── phoenix
│   │   │           ├── ajax.js
│   │   │           ├── channel.js
│   │   │           ├── constants.js
│   │   │           ├── index.js
│   │   │           ├── longpoll.js
│   │   │           ├── presence.js
│   │   │           ├── push.js
│   │   │           ├── serializer.js
│   │   │           ├── socket.js
│   │   │           ├── timer.js
│   │   │           └── utils.js
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── mix
│   │   │   │   ├── phoenix
│   │   │   │   │   ├── context.ex
│   │   │   │   │   └── schema.ex
│   │   │   │   ├── phoenix.ex
│   │   │   │   └── tasks
│   │   │   │       ├── compile.phoenix.ex
│   │   │   │       ├── phx.digest.clean.ex
│   │   │   │       ├── phx.digest.ex
│   │   │   │       ├── phx.ex
│   │   │   │       ├── phx.gen.auth
│   │   │   │       │   ├── hashing_library.ex
│   │   │   │       │   ├── injector.ex
│   │   │   │       │   └── migration.ex
│   │   │   │       ├── phx.gen.auth.ex
│   │   │   │       ├── phx.gen.cert.ex
│   │   │   │       ├── phx.gen.channel.ex
│   │   │   │       ├── phx.gen.context.ex
│   │   │   │       ├── phx.gen.embedded.ex
│   │   │   │       ├── phx.gen.ex
│   │   │   │       ├── phx.gen.html.ex
│   │   │   │       ├── phx.gen.json.ex
│   │   │   │       ├── phx.gen.live.ex
│   │   │   │       ├── phx.gen.notifier.ex
│   │   │   │       ├── phx.gen.presence.ex
│   │   │   │       ├── phx.gen.release.ex
│   │   │   │       ├── phx.gen.schema.ex
│   │   │   │       ├── phx.gen.secret.ex
│   │   │   │       ├── phx.gen.socket.ex
│   │   │   │       ├── phx.routes.ex
│   │   │   │       └── phx.server.ex
│   │   │   ├── phoenix
│   │   │   │   ├── channel
│   │   │   │   │   └── server.ex
│   │   │   │   ├── channel.ex
│   │   │   │   ├── code_reloader
│   │   │   │   │   ├── proxy.ex
│   │   │   │   │   └── server.ex
│   │   │   │   ├── code_reloader.ex
│   │   │   │   ├── config.ex
│   │   │   │   ├── controller
│   │   │   │   │   └── pipeline.ex
│   │   │   │   ├── controller.ex
│   │   │   │   ├── digester
│   │   │   │   │   ├── compressor.ex
│   │   │   │   │   └── gzip.ex
│   │   │   │   ├── digester.ex
│   │   │   │   ├── endpoint
│   │   │   │   │   ├── cowboy2_adapter.ex
│   │   │   │   │   ├── render_errors.ex
│   │   │   │   │   ├── supervisor.ex
│   │   │   │   │   ├── sync_code_reload_plug.ex
│   │   │   │   │   └── watcher.ex
│   │   │   │   ├── endpoint.ex
│   │   │   │   ├── exceptions.ex
│   │   │   │   ├── flash.ex
│   │   │   │   ├── logger.ex
│   │   │   │   ├── naming.ex
│   │   │   │   ├── param.ex
│   │   │   │   ├── presence.ex
│   │   │   │   ├── router
│   │   │   │   │   ├── console_formatter.ex
│   │   │   │   │   ├── helpers.ex
│   │   │   │   │   ├── resource.ex
│   │   │   │   │   ├── route.ex
│   │   │   │   │   └── scope.ex
│   │   │   │   ├── router.ex
│   │   │   │   ├── socket
│   │   │   │   │   ├── message.ex
│   │   │   │   │   ├── pool_supervisor.ex
│   │   │   │   │   ├── serializer.ex
│   │   │   │   │   ├── serializers
│   │   │   │   │   │   ├── v1_json_serializer.ex
│   │   │   │   │   │   └── v2_json_serializer.ex
│   │   │   │   │   └── transport.ex
│   │   │   │   ├── socket.ex
│   │   │   │   ├── test
│   │   │   │   │   ├── channel_test.ex
│   │   │   │   │   └── conn_test.ex
│   │   │   │   ├── token.ex
│   │   │   │   ├── transports
│   │   │   │   │   ├── long_poll.ex
│   │   │   │   │   ├── long_poll_server.ex
│   │   │   │   │   └── websocket.ex
│   │   │   │   └── verified_routes.ex
│   │   │   └── phoenix.ex
│   │   ├── mix.exs
│   │   ├── package.json
│   │   └── priv
│   │       ├── static
│   │       │   ├── favicon.ico
│   │       │   ├── phoenix.cjs.js
│   │       │   ├── phoenix.cjs.js.map
│   │       │   ├── phoenix.js
│   │       │   ├── phoenix.min.js
│   │       │   ├── phoenix.mjs
│   │       │   ├── phoenix.mjs.map
│   │       │   └── phoenix.png
│   │       └── templates
│   │           ├── phx.gen.auth
│   │           │   ├── auth.ex
│   │           │   ├── auth_test.exs
│   │           │   ├── confirmation_controller.ex
│   │           │   ├── confirmation_controller_test.exs
│   │           │   ├── confirmation_edit.html.heex
│   │           │   ├── confirmation_html.ex
│   │           │   ├── confirmation_instructions_live.ex
│   │           │   ├── confirmation_instructions_live_test.exs
│   │           │   ├── confirmation_live.ex
│   │           │   ├── confirmation_live_test.exs
│   │           │   ├── confirmation_new.html.heex
│   │           │   ├── conn_case.exs
│   │           │   ├── context_fixtures_functions.ex
│   │           │   ├── context_functions.ex
│   │           │   ├── forgot_password_live.ex
│   │           │   ├── forgot_password_live_test.exs
│   │           │   ├── login_live.ex
│   │           │   ├── login_live_test.exs
│   │           │   ├── migration.ex
│   │           │   ├── notifier.ex
│   │           │   ├── registration_controller.ex
│   │           │   ├── registration_controller_test.exs
│   │           │   ├── registration_html.ex
│   │           │   ├── registration_live.ex
│   │           │   ├── registration_live_test.exs
│   │           │   ├── registration_new.html.heex
│   │           │   ├── reset_password_controller.ex
│   │           │   ├── reset_password_controller_test.exs
│   │           │   ├── reset_password_edit.html.heex
│   │           │   ├── reset_password_html.ex
│   │           │   ├── reset_password_live.ex
│   │           │   ├── reset_password_live_test.exs
│   │           │   ├── reset_password_new.html.heex
│   │           │   ├── routes.ex
│   │           │   ├── schema.ex
│   │           │   ├── schema_token.ex
│   │           │   ├── session_controller.ex
│   │           │   ├── session_controller_test.exs
│   │           │   ├── session_html.ex
│   │           │   ├── session_new.html.heex
│   │           │   ├── settings_controller.ex
│   │           │   ├── settings_controller_test.exs
│   │           │   ├── settings_edit.html.heex
│   │           │   ├── settings_html.ex
│   │           │   ├── settings_live.ex
│   │           │   ├── settings_live_test.exs
│   │           │   └── test_cases.exs
│   │           ├── phx.gen.channel
│   │           │   ├── channel.ex
│   │           │   ├── channel_case.ex
│   │           │   └── channel_test.exs
│   │           ├── phx.gen.context
│   │           │   ├── access_no_schema.ex
│   │           │   ├── context.ex
│   │           │   ├── context_test.exs
│   │           │   ├── fixtures.ex
│   │           │   ├── fixtures_module.ex
│   │           │   ├── schema_access.ex
│   │           │   └── test_cases.exs
│   │           ├── phx.gen.embedded
│   │           │   └── embedded_schema.ex
│   │           ├── phx.gen.html
│   │           │   ├── controller.ex
│   │           │   ├── controller_test.exs
│   │           │   ├── edit.html.heex
│   │           │   ├── html.ex
│   │           │   ├── index.html.heex
│   │           │   ├── new.html.heex
│   │           │   ├── resource_form.html.heex
│   │           │   └── show.html.heex
│   │           ├── phx.gen.json
│   │           │   ├── changeset_json.ex
│   │           │   ├── controller.ex
│   │           │   ├── controller_test.exs
│   │           │   ├── fallback_controller.ex
│   │           │   └── json.ex
│   │           ├── phx.gen.live
│   │           │   ├── core_components.ex
│   │           │   ├── form_component.ex
│   │           │   ├── index.ex
│   │           │   ├── index.html.heex
│   │           │   ├── live_test.exs
│   │           │   ├── show.ex
│   │           │   └── show.html.heex
│   │           ├── phx.gen.notifier
│   │           │   ├── notifier.ex
│   │           │   └── notifier_test.exs
│   │           ├── phx.gen.presence
│   │           │   └── presence.ex
│   │           ├── phx.gen.release
│   │           │   ├── Dockerfile.eex
│   │           │   ├── dockerignore.eex
│   │           │   ├── rel
│   │           │   │   ├── migrate.bat.eex
│   │           │   │   ├── migrate.sh.eex
│   │           │   │   ├── server.bat.eex
│   │           │   │   └── server.sh.eex
│   │           │   └── release.ex
│   │           ├── phx.gen.schema
│   │           │   ├── migration.exs
│   │           │   └── schema.ex
│   │           └── phx.gen.socket
│   │               ├── socket.ex
│   │               └── socket.js
│   ├── phoenix_pubsub
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── phoenix
│   │   │       ├── pubsub
│   │   │       │   ├── adapter.ex
│   │   │       │   ├── application.ex
│   │   │       │   ├── pg2.ex
│   │   │       │   └── supervisor.ex
│   │   │       ├── pubsub.ex
│   │   │       ├── tracker
│   │   │       │   ├── clock.ex
│   │   │       │   ├── delta_generation.ex
│   │   │       │   ├── replica.ex
│   │   │       │   ├── shard.ex
│   │   │       │   ├── shutdown_handler.ex
│   │   │       │   └── state.ex
│   │   │       └── tracker.ex
│   │   ├── mix.exs
│   │   └── test
│   │       └── shared
│   │           └── pubsub_test.exs
│   ├── phoenix_template
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── phoenix
│   │   │       ├── template
│   │   │       │   ├── eex_engine.ex
│   │   │       │   ├── engine.ex
│   │   │       │   └── exs_engine.ex
│   │   │       └── template.ex
│   │   └── mix.exs
│   ├── plug
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── plug
│   │   │   │   ├── adapters
│   │   │   │   │   ├── cowboy.ex
│   │   │   │   │   └── test
│   │   │   │   │       └── conn.ex
│   │   │   │   ├── application.ex
│   │   │   │   ├── basic_auth.ex
│   │   │   │   ├── builder.ex
│   │   │   │   ├── conn
│   │   │   │   │   ├── adapter.ex
│   │   │   │   │   ├── cookies.ex
│   │   │   │   │   ├── query.ex
│   │   │   │   │   ├── status.ex
│   │   │   │   │   ├── unfetched.ex
│   │   │   │   │   ├── utils.ex
│   │   │   │   │   └── wrapper_error.ex
│   │   │   │   ├── conn.ex
│   │   │   │   ├── csrf_protection.ex
│   │   │   │   ├── debugger.ex
│   │   │   │   ├── error_handler.ex
│   │   │   │   ├── exceptions.ex
│   │   │   │   ├── head.ex
│   │   │   │   ├── html.ex
│   │   │   │   ├── logger.ex
│   │   │   │   ├── method_override.ex
│   │   │   │   ├── mime.ex
│   │   │   │   ├── parsers
│   │   │   │   │   ├── json.ex
│   │   │   │   │   ├── multipart.ex
│   │   │   │   │   └── urlencoded.ex
│   │   │   │   ├── parsers.ex
│   │   │   │   ├── request_id.ex
│   │   │   │   ├── rewrite_on.ex
│   │   │   │   ├── router
│   │   │   │   │   └── utils.ex
│   │   │   │   ├── router.ex
│   │   │   │   ├── session
│   │   │   │   │   ├── cookie.ex
│   │   │   │   │   ├── ets.ex
│   │   │   │   │   └── store.ex
│   │   │   │   ├── session.ex
│   │   │   │   ├── ssl.ex
│   │   │   │   ├── static.ex
│   │   │   │   ├── telemetry.ex
│   │   │   │   ├── templates
│   │   │   │   │   ├── debugger.html.eex
│   │   │   │   │   └── debugger.md.eex
│   │   │   │   ├── test.ex
│   │   │   │   ├── upload
│   │   │   │   │   ├── supervisor.ex
│   │   │   │   │   └── terminator.ex
│   │   │   │   └── upload.ex
│   │   │   └── plug.ex
│   │   ├── mix.exs
│   │   └── src
│   │       └── plug_multipart.erl
│   ├── plug_crypto
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── plug
│   │   │       ├── crypto
│   │   │       │   ├── application.ex
│   │   │       │   ├── key_generator.ex
│   │   │       │   ├── message_encryptor.ex
│   │   │       │   └── message_verifier.ex
│   │   │       └── crypto.ex
│   │   └── mix.exs
│   ├── postgrex
│   │   ├── CHANGELOG.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── postgrex
│   │   │   │   ├── app.ex
│   │   │   │   ├── binary_extension.ex
│   │   │   │   ├── binary_utils.ex
│   │   │   │   ├── builtins.ex
│   │   │   │   ├── default_types.ex
│   │   │   │   ├── errcodes.txt
│   │   │   │   ├── error.ex
│   │   │   │   ├── error_code.ex
│   │   │   │   ├── extension.ex
│   │   │   │   ├── extensions
│   │   │   │   │   ├── array.ex
│   │   │   │   │   ├── bit_string.ex
│   │   │   │   │   ├── bool.ex
│   │   │   │   │   ├── box.ex
│   │   │   │   │   ├── circle.ex
│   │   │   │   │   ├── date.ex
│   │   │   │   │   ├── float4.ex
│   │   │   │   │   ├── float8.ex
│   │   │   │   │   ├── hstore.ex
│   │   │   │   │   ├── inet.ex
│   │   │   │   │   ├── int2.ex
│   │   │   │   │   ├── int4.ex
│   │   │   │   │   ├── int8.ex
│   │   │   │   │   ├── interval.ex
│   │   │   │   │   ├── json.ex
│   │   │   │   │   ├── jsonb.ex
│   │   │   │   │   ├── line.ex
│   │   │   │   │   ├── line_segment.ex
│   │   │   │   │   ├── lquery.ex
│   │   │   │   │   ├── ltree.ex
│   │   │   │   │   ├── ltxtquery.ex
│   │   │   │   │   ├── macaddr.ex
│   │   │   │   │   ├── multirange.ex
│   │   │   │   │   ├── name.ex
│   │   │   │   │   ├── numeric.ex
│   │   │   │   │   ├── oid.ex
│   │   │   │   │   ├── path.ex
│   │   │   │   │   ├── point.ex
│   │   │   │   │   ├── polygon.ex
│   │   │   │   │   ├── range.ex
│   │   │   │   │   ├── raw.ex
│   │   │   │   │   ├── record.ex
│   │   │   │   │   ├── tid.ex
│   │   │   │   │   ├── time.ex
│   │   │   │   │   ├── timestamp.ex
│   │   │   │   │   ├── timestamptz.ex
│   │   │   │   │   ├── timetz.ex
│   │   │   │   │   ├── tsvector.ex
│   │   │   │   │   ├── uuid.ex
│   │   │   │   │   ├── void_binary.ex
│   │   │   │   │   ├── void_text.ex
│   │   │   │   │   └── xid8.ex
│   │   │   │   ├── messages.ex
│   │   │   │   ├── notifications.ex
│   │   │   │   ├── parameters.ex
│   │   │   │   ├── protocol.ex
│   │   │   │   ├── query.ex
│   │   │   │   ├── replication_connection.ex
│   │   │   │   ├── result.ex
│   │   │   │   ├── scram
│   │   │   │   │   └── locked_cache.ex
│   │   │   │   ├── scram.ex
│   │   │   │   ├── simple_connection.ex
│   │   │   │   ├── stream.ex
│   │   │   │   ├── super_extension.ex
│   │   │   │   ├── type_info.ex
│   │   │   │   ├── type_module.ex
│   │   │   │   ├── type_server.ex
│   │   │   │   ├── type_supervisor.ex
│   │   │   │   ├── types.ex
│   │   │   │   └── utils.ex
│   │   │   └── postgrex.ex
│   │   └── mix.exs
│   ├── statistex
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE.md
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── statistex
│   │   │   │   ├── helper.ex
│   │   │   │   ├── mode.ex
│   │   │   │   └── percentile.ex
│   │   │   └── statistex.ex
│   │   └── mix.exs
│   ├── telemetry
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── NOTICE
│   │   ├── README.md
│   │   ├── _build
│   │   │   └── prod
│   │   │       └── lib
│   │   ├── hex_metadata.config
│   │   ├── mix.exs
│   │   ├── rebar.config
│   │   ├── rebar.lock
│   │   └── src
│   │       ├── telemetry.app.src
│   │       ├── telemetry.erl
│   │       ├── telemetry.hrl
│   │       ├── telemetry_app.erl
│   │       ├── telemetry_handler_table.erl
│   │       ├── telemetry_sup.erl
│   │       └── telemetry_test.erl
│   ├── telemetry_metrics
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   ├── telemetry_metrics
│   │   │   │   ├── console_reporter.ex
│   │   │   │   ├── counter.ex
│   │   │   │   ├── distribution.ex
│   │   │   │   ├── last_value.ex
│   │   │   │   ├── sum.ex
│   │   │   │   └── summary.ex
│   │   │   └── telemetry_metrics.ex
│   │   └── mix.exs
│   ├── telemetry_poller
│   │   ├── CHANGELOG.md
│   │   ├── LICENSE
│   │   ├── NOTICE
│   │   ├── README.md
│   │   ├── _build
│   │   │   └── prod
│   │   │       └── lib
│   │   ├── hex_metadata.config
│   │   ├── rebar.config
│   │   ├── rebar.lock
│   │   └── src
│   │       ├── telemetry_poller.app.src
│   │       ├── telemetry_poller.erl
│   │       ├── telemetry_poller_app.erl
│   │       ├── telemetry_poller_builtin.erl
│   │       └── telemetry_poller_sup.erl
│   ├── telemetry_registry
│   │   ├── CODEOWNERS
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── VERSION
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── telemetry_registry.ex
│   │   ├── mix.exs
│   │   ├── rebar.config
│   │   ├── rebar.lock
│   │   └── src
│   │       ├── telemetry_registry.app.src
│   │       └── telemetry_registry.erl
│   ├── websock
│   │   ├── LICENSE
│   │   ├── README.md
│   │   ├── hex_metadata.config
│   │   ├── lib
│   │   │   └── websock.ex
│   │   ├── mix.exs
│   │   └── test
│   │       └── test_helper.exs
│   └── websock_adapter
│       ├── CHANGELOG.md
│       ├── LICENSE
│       ├── README.md
│       ├── hex_metadata.config
│       ├── lib
│       │   ├── websock_adapter
│       │   │   ├── cowboy_adapter.ex
│       │   │   ├── upgrade_error.ex
│       │   │   └── upgrade_validation.ex
│       │   └── websock_adapter.ex
│       └── mix.exs
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
│   │   ├── chess.ex
│   │   ├── domain
│   │   │   ├── aggregates
│   │   │   ├── board.ex
│   │   │   ├── color.ex
│   │   │   ├── commands
│   │   │   │   ├── create_game.ex
│   │   │   │   └── make_move.ex
│   │   │   ├── events
│   │   │   ├── game_state.ex
│   │   │   ├── logic
│   │   │   │   ├── check_validator.ex
│   │   │   │   └── game_rules.ex
│   │   │   ├── move.ex
│   │   │   ├── move_validator.ex
│   │   │   ├── piece.ex
│   │   │   └── position.ex
│   │   ├── event_store.ex
│   │   ├── game
│   │   │   ├── aggregate
│   │   │   ├── commands
│   │   │   ├── events
│   │   │   ├── finished.ex
│   │   │   ├── progressed.ex
│   │   │   ├── semantic_events.ex
│   │   │   └── started.ex
│   │   ├── game.ex
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
│   │       ├── 20231027120000_create_games.exs
│   │       └── 20231028120000_add_game_mode_to_games.exs
│   └── static
│       ├── css
│       │   ├── atoms
│       │   │   └── index.css
│       │   ├── base.css
│       │   ├── molecules
│       │   │   └── index.css
│       │   ├── organisms
│       │   │   └── index.css
│       │   ├── pages
│       │   ├── style.css
│       │   └── templates
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
│   │   ├── game_mode_test.exs
│   │   └── infrastructure
│   │       └── projectors
│   │           └── game_projector_test.exs
│   ├── support
│   │   └── data_case.ex
│   └── test_helper.exs
└── tree.md

541 directories, 3925 files
