
# rquery 1.0.0 2018/09/10

 * Fix key_inspector_postgresql quoting issue. 
 * More tests.
 * Export a default database description.
 * Check more on project and extend interfaces.

# rquery 0.6.2 2018/08/14

 * fix in-memory order_by!
 * aggregate aliases.
 * try to clean up immediate mode hooks a bit.

# rquery 0.6.1 2018/08/01

 * Change to immediate execution.
 * Subtitute in values in presentation layer (rqdatatable depends on this).
 * Fix name disambiguation.
 * Better column dependency calculation.
 * Re-map function names.
 * Improve extend narrowing.
 * Start on schema qualification.
 * Get rid of %>>% and old dbi fn-names.
 * Try to improve use of regexps.
 * Add qlook().
 * Add affine_transform().
 * Documentation fixes.

# rquery 0.5.0 2018/06/18

 * Make DBI suggested.
 * Rename dbi_ prefixes to rq_ (for now have aliases from old to new).
 * Per-connection options.
 * Add expand_grid()/complete_design().
 * Get rid of embedded data cases and print-execution.
 * Move to new wrapr ops.
 * Rationalize names of table description methods.
 * Add rquery_executor hook.
 * Don't default to setting up a temporary RSQLite database.
 * Limit wrapr re-exports.
 * Add ability to use %:=% in parsing.
 * Move to executor options.
 * Separate execute() and materialize() roles.
 * Fix natural_join() semantics and make "by" a required argument.

# rquery 0.4.4 2018/05/14

 * Fix if_else NA treatment.
 * Fix orderby() limit bug.
 * Better detection of column types: dbi_coltypes().
 * Improve execute() performance in simple case.
 * materialize_node().
 * Minor documentation fixes.

# rquery 0.4.3 2018/05/07

 * Add assign_slice(), if_else_op(), map_column_values(), and set_indicator().
 * Bug fixes (esp on data.frame path).
 * Work on printing/formatting.
 * Improve column requirement checking.
 * Improve column ordering.
 * Make db_table() more prominent.
 * Documentation improvements.

# rquery 0.4.2 2018/04/05

 * Work around RPostgreSQL issue (dbTableExists does not work).
 * More controls on dbi_ steps through package options.
 * Push LIMIT deeper into pipelines.
 * Add connection config tools.

# rquery 0.4.1 2018/03/17

 * Fix re-run/re-create situations.
 * Pipe database connection.
 * Better quantile calc (assume window functions).
 * Improve dependency decls.
 * Further limit direct dependencies.
 * Work with more DB drivers.
 * SQL node for sets of columns.

# rquery 0.4.0 2018/03/10

 * Move to wrapr 1.2.0
 * Add wrapr_function.relop().
 * Column checks on extend.
 * Default sql_node to copying incoming columns.
 * NULL column ops.
 * rsummary().
 * "Non SQL" nodes.
 * New rquery_intro vingette.
 * Improved help examples.
 * Stricter argument checking.

# rquery 0.3.1 2018/02/10

 * Be compatible with both wrapr 1.1.1 and 1.2.0.
 
# rquery 0.3.0 2018/01/31
 
 * Fix "desc".
 * Minor format change in rename (anticipate wrapr 1.2.0).
 * Get ready for S3 wrapr_applicable and pipe_step (un-block wrapr 1.2.0 release).

# rquery 0.2.0 2017/01/22

 * Don't store DB reference.
 * Prepare for wrapr 1.1.0 features.
 * Ad-hoc query modes.
 * Fix statement partitioner.
 * More flexibility on assignment notation.
  
# rquery 0.1.0 2017/12/03

 * Initial experiment

