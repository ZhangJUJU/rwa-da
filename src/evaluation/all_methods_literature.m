function methods = all_methods_literature(varargin)
  % Methods from the literature
  
  if length(varargin) == 1 && isstruct(varargin{1})
    opts = varargin{1};
  else
    opts = struct(varargin{:});
  end
  if ~isfield(opts,'toolbox_sa') opts.toolbox_sa = false; end
  if ~isfield(opts,'include_sa') opts.include_sa = true; end
  if ~isfield(opts,'include_tca') opts.include_tca = false; end
  if ~isfield(opts,'include_gfk') opts.include_gfk = false; end
  if ~isfield(opts,'include_flda') opts.include_flda = false; end
  
  methods = {};
  
  if opts.include_sa
    if opts.toolbox_sa
      methods{end+1} = struct(...
        'name',   'SA',...
        'method', @predict_da_toolbox,...
        'args',   {{'ftTrans_sa'}});
    else
      methods{end+1} = struct(...
        'name',   'SA',...
        'method', @predict_sa,...
        'args',   {{'subspace_dim',80}});
    end
  end
  if 1
    methods{end+1} = struct(...
      'name',     'CORAL',...
      'method',   @predict_coral,...
      'args',     {{}});
  end
end
