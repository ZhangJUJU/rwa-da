function methods = all_methods()
  % Return a cell array of all methods.
  % 
  % Each method is a struct containing:
  %    method.name   = name of the method
  %    method.method = function that does training and testing
  %    method.args   = extra arguments to pass to that function.
  %
  % Each method is invoked as
  %    [y_tgt] = method.method(x_src, y_src, x_tgt, method.args{:})
  methods = {};
  
  if 1
    methods{end+1} = struct(...
      'name',     'Source SVM',...
      'method',   @predict_liblinear_cv,...
      'args',     struct());
  end
  
  if 1
    methods{end+1} = struct(...
      'name',   'RWA',...
      'method', @predict_rwa,...
      'args',   struct());
  end
  
end
