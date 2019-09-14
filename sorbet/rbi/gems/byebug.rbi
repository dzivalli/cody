# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/byebug/all/byebug.rbi
#
# byebug-9.1.0
module Byebug
  def add_catchpoint(arg0); end
  def breakpoints; end
  def catchpoints; end
  def contexts; end
  def current_context; end
  def debug_load(*arg0); end
  def displays; end
  def displays=(arg0); end
  def init_file; end
  def init_file=(arg0); end
  def lock; end
  def mode; end
  def mode=(arg0); end
  def post_mortem=(arg0); end
  def post_mortem?; end
  def raised_exception; end
  def rc_dirs; end
  def run_init_script; end
  def run_rc_file(base_path); end
  def self.actual_control_port; end
  def self.actual_port; end
  def self.actual_port=(arg0); end
  def self.add_catchpoint(arg0); end
  def self.attach; end
  def self.breakpoints; end
  def self.catchpoints; end
  def self.contexts; end
  def self.current_context; end
  def self.debug_load(*arg0); end
  def self.handle_post_mortem; end
  def self.interrupt; end
  def self.load_settings; end
  def self.lock; end
  def self.parse_host_and_port(host_port_spec); end
  def self.post_mortem=(arg0); end
  def self.post_mortem?; end
  def self.raised_exception; end
  def self.start; end
  def self.start_client(host = nil, port = nil); end
  def self.start_control(host = nil, ctrl_port = nil); end
  def self.start_server(host = nil, port = nil); end
  def self.started?; end
  def self.stop; end
  def self.stoppable?; end
  def self.thread_context(arg0); end
  def self.tracing=(arg0); end
  def self.tracing?; end
  def self.unlock; end
  def self.verbose=(arg0); end
  def self.verbose?; end
  def self.wait_connection; end
  def self.wait_connection=(arg0); end
  def start; end
  def started?; end
  def stop; end
  def stoppable?; end
  def thread_context(arg0); end
  def tracing=(arg0); end
  def tracing?; end
  def unlock; end
  def verbose=(arg0); end
  def verbose?; end
  extend Byebug
  include Byebug::Helpers::ReflectionHelper
end
module Kernel
  def byebug; end
  def debugger; end
end
module Byebug::Helpers
end
module Byebug::Helpers::ReflectionHelper
  def commands; end
end
class Byebug::Context
  def at_breakpoint(breakpoint); end
  def at_catchpoint(exception); end
  def at_end; end
  def at_line; end
  def at_return(return_value); end
  def at_tracing; end
  def backtrace; end
  def dead?; end
  def file(*args, &block); end
  def frame; end
  def frame=(pos); end
  def frame_binding(*arg0); end
  def frame_class(*arg0); end
  def frame_file(*arg0); end
  def frame_line(*arg0); end
  def frame_method(*arg0); end
  def frame_self(*arg0); end
  def full_location; end
  def ignored?; end
  def ignored_file?(path); end
  def interrupt; end
  def line(*args, &block); end
  def location; end
  def processor; end
  def resume; end
  def self.ignored_files; end
  def self.ignored_files=(arg0); end
  def self.interface; end
  def self.interface=(arg0); end
  def self.processor; end
  def self.processor=(arg0); end
  def stack_size; end
  def step_into(*arg0); end
  def step_out(*arg0); end
  def step_over(*arg0); end
  def stop_reason; end
  def suspend; end
  def suspended?; end
  def switch; end
  def thnum; end
  def thread; end
  def tracing; end
  def tracing=(arg0); end
  extend Forwardable
  include Byebug::Helpers::FileHelper
end
class Byebug::DebugThread < Thread
  def self.inherited(arg0); end
end
class Byebug::Breakpoint
  def enabled=(arg0); end
  def enabled?; end
  def expr; end
  def expr=(arg0); end
  def hit_condition; end
  def hit_condition=(arg0); end
  def hit_count; end
  def hit_value; end
  def hit_value=(arg0); end
  def id; end
  def initialize(arg0, arg1, arg2); end
  def inspect; end
  def pos; end
  def self.add(file, line, expr = nil); end
  def self.first; end
  def self.last; end
  def self.none?; end
  def self.potential_line?(filename, lineno); end
  def self.potential_lines(filename); end
  def self.remove(id); end
  def source; end
end
module Byebug::Helpers::FileHelper
  def get_line(filename, lineno); end
  def get_lines(filename); end
  def n_lines(filename); end
  def normalize(filename); end
  def shortpath(fullpath); end
  def virtual_file?(name); end
end
class Byebug::Frame
  def _binding; end
  def _class; end
  def _method; end
  def _self; end
  def args; end
  def c_args; end
  def c_frame?; end
  def current?; end
  def deco_args; end
  def deco_block; end
  def deco_call; end
  def deco_class; end
  def deco_file; end
  def deco_method; end
  def deco_pos; end
  def file; end
  def initialize(context, pos); end
  def line; end
  def locals; end
  def mark; end
  def pos; end
  def prefix_and_default(arg_type); end
  def ruby_args; end
  def to_hash; end
  def use_short_style?(arg); end
  include Byebug::Helpers::FileHelper
end
module Byebug::Helpers::PathHelper
  def all_files; end
  def bin_file; end
  def gem_files; end
  def glob_for(dir); end
  def lib_files; end
  def root_path; end
  def test_files; end
end
module Byebug::Helpers::EvalHelper
  def allowing_other_threads; end
  def error_eval(str, binding = nil); end
  def error_msg(e); end
  def in_new_thread; end
  def msg(e); end
  def multiple_thread_eval(expression); end
  def safe_eval(str, binding); end
  def safe_inspect(var); end
  def safe_to_s(var); end
  def separate_thread_eval(expression); end
  def silent_eval(str, binding = nil); end
  def warning_eval(str, binding = nil); end
  def warning_msg(e); end
end
class Byebug::CommandNotFound < NoMethodError
  def build_cmd(*args); end
  def help; end
  def initialize(input, parent = nil); end
  def name; end
end
class Byebug::CommandProcessor
  def after_repl; end
  def at_breakpoint(brkpt); end
  def at_catchpoint(exception); end
  def at_end; end
  def at_line; end
  def at_return(return_value); end
  def at_tracing; end
  def auto_cmds_for(run_level); end
  def before_repl; end
  def command_list; end
  def commands(*args, &block); end
  def confirm(*args, &block); end
  def context; end
  def errmsg(*args, &block); end
  def frame(*args, &block); end
  def initialize(context); end
  def interface; end
  def pr(*args, &block); end
  def prc(*args, &block); end
  def prev_line; end
  def prev_line=(arg0); end
  def printer; end
  def proceed!; end
  def process_commands; end
  def prompt; end
  def prv(*args, &block); end
  def puts(*args, &block); end
  def repl; end
  def run_auto_cmds(run_level); end
  def run_cmd(input); end
  def safely; end
  extend Forwardable
  include Byebug::Helpers::EvalHelper
end
module Byebug::Helpers::StringHelper
  def camelize(str); end
  def deindent(str, leading_spaces: nil); end
  def prettify(str); end
end
class Byebug::Setting
  def boolean?; end
  def help; end
  def initialize; end
  def integer?; end
  def self.[](name); end
  def self.[]=(name, value); end
  def self.find(shortcut); end
  def self.help_all; end
  def self.settings; end
  def to_s; end
  def to_sym; end
  def value; end
  def value=(arg0); end
end
class Byebug::History
  def buffer; end
  def clear; end
  def default_max_size; end
  def ignore?(buf); end
  def initialize; end
  def last_ids(n); end
  def pop; end
  def push(cmd); end
  def restore; end
  def save; end
  def size; end
  def size=(arg0); end
  def specific_max_size(number); end
  def to_s(n_cmds); end
end
class Byebug::LocalInterface < Byebug::Interface
  def initialize; end
  def readline(prompt); end
  def with_repl_like_sigint; end
end
class Byebug::ScriptInterface < Byebug::Interface
  def close; end
  def initialize(file, verbose = nil); end
  def read_command(prompt); end
  def readline(*arg0); end
end
class Byebug::RemoteInterface < Byebug::Interface
  def close; end
  def confirm(prompt); end
  def initialize(socket); end
  def read_command(prompt); end
  def readline(prompt); end
end
class Byebug::Interface
  def autorestore; end
  def autosave; end
  def close; end
  def command_queue; end
  def command_queue=(arg0); end
  def confirm(prompt); end
  def errmsg(message); end
  def error; end
  def history; end
  def history=(arg0); end
  def initialize; end
  def input; end
  def last_if_empty(input); end
  def output; end
  def prepare_input(prompt); end
  def print(message); end
  def puts(message); end
  def read_command(prompt); end
  def read_file(filename); end
  def read_input(prompt, save_hist = nil); end
  def split_commands(cmd_line); end
  include Byebug::Helpers::FileHelper
end
class Byebug::ScriptProcessor < Byebug::CommandProcessor
  def after_repl; end
  def commands; end
  def prompt; end
  def repl; end
  def without_exceptions; end
end
class Byebug::PostMortemProcessor < Byebug::CommandProcessor
  def commands; end
  def prompt; end
end
class Byebug::Command
  def arguments; end
  def confirm(*args, &block); end
  def context; end
  def errmsg(*args, &block); end
  def frame; end
  def help(*args, &block); end
  def initialize(processor, input = nil); end
  def match(*args, &block); end
  def pr(*args, &block); end
  def prc(*args, &block); end
  def print(*args, &block); end
  def processor; end
  def prv(*args, &block); end
  def puts(*args, &block); end
  def self.allow_in_control; end
  def self.allow_in_control=(arg0); end
  def self.allow_in_post_mortem; end
  def self.allow_in_post_mortem=(arg0); end
  def self.always_run; end
  def self.always_run=(arg0); end
  def self.columnize(width); end
  def self.help; end
  def self.match(input); end
  def self.to_s; end
  extend Forwardable
end
module Byebug::Helpers::ParseHelper
  def get_int(str, cmd, min = nil, max = nil); end
  def parse_steps(str, cmd); end
  def syntax_valid?(code); end
  def without_stderr; end
end
class Byebug::BreakCommand < Byebug::Command
  def add_line_breakpoint(file, line); end
  def execute; end
  def line_breakpoint(location); end
  def method_breakpoint(location); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  def target_object(str); end
  include Byebug::Helpers::EvalHelper
  include Byebug::Helpers::FileHelper
  include Byebug::Helpers::ParseHelper
end
class Byebug::CatchCommand < Byebug::Command
  def add(exception); end
  def clear; end
  def execute; end
  def info; end
  def remove(exception); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::EvalHelper
end
class Byebug::ConditionCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ParseHelper
end
class Byebug::ContinueCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ParseHelper
end
class Byebug::DebugCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::EvalHelper
end
class Byebug::DeleteCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ParseHelper
end
class Byebug::CommandList
  def each; end
  def initialize(commands); end
  def match(input); end
  def to_s; end
  def width; end
  include Enumerable
end
module Byebug::Subcommands
  def execute; end
  def self.included(command); end
  def subcommand_list(*args, &block); end
  extend Forwardable
end
module Byebug::Subcommands::ClassMethods
  def help; end
  def subcommand_list; end
  include Byebug::Helpers::ReflectionHelper
end
module Byebug::Helpers::ToggleHelper
  def enable_disable_breakpoints(is_enable, args); end
  def enable_disable_display(is_enable, args); end
  def n_displays; end
  def select_breakpoints(is_enable, args); end
  include Byebug::Helpers::ParseHelper
end
class Byebug::DisableCommand < Byebug::Command
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  extend Byebug::Subcommands::ClassMethods
  include Byebug::Subcommands
end
class Byebug::DisableCommand::BreakpointsCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ToggleHelper
end
class Byebug::DisableCommand::DisplayCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ToggleHelper
end
class Byebug::DisplayCommand < Byebug::Command
  def display_expression(exp); end
  def eval_expr(expression); end
  def execute; end
  def print_display_expressions; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::EvalHelper
end
module Byebug::Helpers::FrameHelper
  def adjust_frame(new_frame); end
  def direction(step); end
  def frame_err(msg); end
  def index_from_start(i); end
  def jump_frames(steps); end
  def navigate_to_frame(jump_no); end
  def out_of_bounds?(pos); end
  def switch_to_frame(frame); end
end
class Byebug::DownCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::FrameHelper
  include Byebug::Helpers::ParseHelper
end
class Byebug::EditCommand < Byebug::Command
  def edit_error(type, file); end
  def editor; end
  def execute; end
  def location(matched); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::EnableCommand < Byebug::Command
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  extend Byebug::Subcommands::ClassMethods
  include Byebug::Subcommands
end
class Byebug::EnableCommand::BreakpointsCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ToggleHelper
end
class Byebug::EnableCommand::DisplayCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ToggleHelper
end
class Byebug::FinishCommand < Byebug::Command
  def execute; end
  def max_frames; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ParseHelper
end
class Byebug::FrameCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::FrameHelper
  include Byebug::Helpers::ParseHelper
end
class Byebug::HelpCommand < Byebug::Command
  def command; end
  def execute; end
  def help_for(input, cmd); end
  def help_for_all; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  def subcommand; end
end
class Byebug::HistoryCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ParseHelper
end
class Byebug::InfoCommand < Byebug::Command
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  extend Byebug::Subcommands::ClassMethods
  include Byebug::Subcommands
end
class Byebug::InfoCommand::BreakpointsCommand < Byebug::Command
  def execute; end
  def info_breakpoint(brkpt); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::InfoCommand::DisplayCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::InfoCommand::FileCommand < Byebug::Command
  def execute; end
  def info_file_basic(file); end
  def info_file_breakpoints(file); end
  def info_file_mtime(file); end
  def info_file_sha1(file); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::FileHelper
  include Byebug::Helpers::StringHelper
end
class Byebug::InfoCommand::LineCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::InfoCommand::ProgramCommand < Byebug::Command
  def execute; end
  def format_stop_reason(stop_reason); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::InterruptCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::IrbCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  def with_clean_argv; end
end
class Byebug::KillCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::ListCommand < Byebug::Command
  def amend(line, max_line); end
  def display_lines(min, max); end
  def execute; end
  def lower(size, direction = nil); end
  def lower_bound(range); end
  def move(line, size, direction = nil); end
  def parse_range(input, size, max_line); end
  def range(input, max_line); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  def set_range(size, max_line); end
  def split_range(str); end
  def upper_bound(range); end
  def valid_range?(first, last, max); end
  include Byebug::Helpers::FileHelper
  include Byebug::Helpers::ParseHelper
end
class Byebug::MethodCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::EvalHelper
end
class Byebug::NextCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ParseHelper
end
class Byebug::PryCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::QuitCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
module Byebug::Helpers::BinHelper
  def which(cmd); end
end
class Byebug::RestartCommand < Byebug::Command
  def execute; end
  def prepend_byebug_bin(cmd); end
  def prepend_ruby_bin(cmd); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::BinHelper
  include Byebug::Helpers::PathHelper
end
class Byebug::SaveCommand < Byebug::Command
  def execute; end
  def save_breakpoints(file); end
  def save_catchpoints(file); end
  def save_displays(file); end
  def save_settings(file); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::SetCommand < Byebug::Command
  def execute; end
  def get_onoff(arg, default); end
  def self.description; end
  def self.help; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ParseHelper
end
class Byebug::ShowCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.help; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::SourceCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::StepCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ParseHelper
end
module Byebug::Helpers::ThreadHelper
  def context_from_thread(thnum); end
  def current_thread?(ctx); end
  def debug_flag(ctx); end
  def display_context(ctx); end
  def location(ctx); end
  def status_flag(ctx); end
  def thread_arguments(ctx); end
end
class Byebug::ThreadCommand < Byebug::Command
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  extend Byebug::Subcommands::ClassMethods
  include Byebug::Subcommands
end
class Byebug::ThreadCommand::CurrentCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ThreadHelper
end
class Byebug::ThreadCommand::ListCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ThreadHelper
end
class Byebug::ThreadCommand::ResumeCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ThreadHelper
end
class Byebug::ThreadCommand::StopCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ThreadHelper
end
class Byebug::ThreadCommand::SwitchCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ThreadHelper
end
class Byebug::TracevarCommand < Byebug::Command
  def execute; end
  def on_change(name, value, stop); end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::UndisplayCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::ParseHelper
end
class Byebug::UntracevarCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
end
class Byebug::UpCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::FrameHelper
  include Byebug::Helpers::ParseHelper
end
module Byebug::Helpers::VarHelper
  def var_args; end
  def var_global; end
  def var_instance(str); end
  def var_list(ary, binding = nil); end
  def var_local; end
  include Byebug::Helpers::EvalHelper
end
class Byebug::VarCommand < Byebug::Command
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  extend Byebug::Subcommands::ClassMethods
  include Byebug::Subcommands
end
class Byebug::VarCommand::AllCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::VarHelper
end
class Byebug::VarCommand::ArgsCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::VarHelper
end
class Byebug::VarCommand::ConstCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  def str_obj; end
  include Byebug::Helpers::EvalHelper
end
class Byebug::VarCommand::InstanceCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::VarHelper
end
class Byebug::VarCommand::LocalCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::VarHelper
end
class Byebug::VarCommand::GlobalCommand < Byebug::Command
  def execute; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::VarHelper
end
class Byebug::WhereCommand < Byebug::Command
  def execute; end
  def print_backtrace; end
  def self.description; end
  def self.regexp; end
  def self.short_description; end
  include Byebug::Helpers::FrameHelper
end
class Byebug::ControlProcessor < Byebug::CommandProcessor
  def commands; end
  def initialize(context = nil); end
  def prompt; end
end
module Byebug::Printers
end
class Byebug::Printers::Base
  def array_of_args(collection, &_block); end
  def contents; end
  def contents_files; end
  def locate(path); end
  def parts(path); end
  def translate(string, args = nil); end
  def type; end
end
class Byebug::Printers::Base::MissedPath < StandardError
end
class Byebug::Printers::Base::MissedArgument < StandardError
end
class Byebug::Printers::Plain < Byebug::Printers::Base
  def contents_files; end
  def print(path, args = nil); end
  def print_collection(path, collection, &block); end
  def print_variables(variables, *_); end
end
class Byebug::AutoprySetting < Byebug::Setting
  def banner; end
  def initialize; end
  def value; end
  def value=(v); end
end
class Byebug::StackOnErrorSetting < Byebug::Setting
  def banner; end
end
class Byebug::HistfileSetting < Byebug::Setting
  def banner; end
  def to_s; end
end
class Byebug::WidthSetting < Byebug::Setting
  def banner; end
  def to_s; end
end
class Byebug::SavefileSetting < Byebug::Setting
  def banner; end
  def to_s; end
end
class Byebug::FullpathSetting < Byebug::Setting
  def banner; end
end
class Byebug::BasenameSetting < Byebug::Setting
  def banner; end
end
class Byebug::ListsizeSetting < Byebug::Setting
  def banner; end
  def to_s; end
end
class Byebug::AutolistSetting < Byebug::Setting
  def banner; end
  def initialize; end
  def value; end
  def value=(v); end
end
class Byebug::AutosaveSetting < Byebug::Setting
  def banner; end
end
class Byebug::CallstyleSetting < Byebug::Setting
  def banner; end
  def to_s; end
end
class Byebug::PostMortemSetting < Byebug::Setting
  def banner; end
  def initialize; end
  def value; end
  def value=(v); end
end
class Byebug::HistsizeSetting < Byebug::Setting
  def banner; end
  def to_s; end
end
class Byebug::AutoirbSetting < Byebug::Setting
  def banner; end
  def initialize; end
  def value; end
  def value=(v); end
end
class Byebug::LinetraceSetting < Byebug::Setting
  def banner; end
  def value; end
  def value=(v); end
end
class Exception
  def __bb_context; end
end
