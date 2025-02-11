(** Modules we use to interact with clients (to which we are a server). *)

include Wayland.Wayland_server
include Wayland_protocols.Xdg_shell_server
include Wayland_protocols.Xdg_output_unstable_v1_server
include Wayland_protocols.Gtk_primary_selection_server
include Wayland_protocols.Wp_primary_selection_unstable_v1_server
include Wayland_protocols.Server_decoration_server
