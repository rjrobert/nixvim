{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    nvim-nio
    plenary-nvim
  ];

  plugins = {
    neotest = {
      enable = true;
      lazyLoad.settings = {
        keys = [
          {
            __unkeyed-1 = "<leader>tt";
            __unkeyed-2 = "<CMD>Neotest run<CR>";
            desc = "Run (Nearest)";
          }
          {
            __unkeyed-1 = "<leader>ts";
            __unkeyed-2 = "<CMD>Neotest summary<CR>";
            desc = "Test Summary";
          }
        ];
      };
      settings = {
        # log_level = "trace";
        status.virtual_text = true;
        output = {
          enabled = true;
          open_on_run = true;
        };
        summary.enabled = true;
        # quickfix.open.__raw =
        #   #lua
        #   ''
        #     require("trouble").open({ mode = "quickfix", focus = false })
        #   '';
        # consumers.trouble.__raw =
        #   #lua
        #   ''
        #     function(client)
        #       client.listeners.results = function(adapter_id, results, partial)
        #         if partial then
        #           return
        #         end
        #         local tree = assert(client:get_position(nil, { adapter = adapter_id }))
        #
        #         local failed = 0
        #         for pos_id, result in pairs(results) do
        #           if result.status == "failed" and tree:get_key(pos_id) then
        #             failed = failed + 1
        #           end
        #         end
        #         vim.schedule(function()
        #           local trouble = require("trouble")
        #           if trouble.is_open() then
        #             trouble.refresh()
        #             if failed == 0 then
        #               trouble.close()
        #             end
        #           end
        #         end)
        #         return {}
        #       end
        #     end
        #   '';
      };
    };
  };
}
