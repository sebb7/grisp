-module(grisp_led_drv).

% API
-export([open/0]).
-export([command/2]).

%--- API -----------------------------------------------------------------------

open() -> open_port({spawn_driver, "grisp_led_drv"}, [binary]).

command(Port, Command) -> Port ! {self(), {command, Command}}.