using ArgParse

function parse_commandline()
   s = ArgParseSettings()

   @add_arg_table s begin
      "--q_loc"
         help="directory that contains the quiz's tasks (.jl files) OR an individual .jl file"
         required=true
      "--q_name"
         help="it will be the name of the quiz in the moodle system - default is: proba"
         default="proba"
      "--num_of"
         help="how many instances of the exercises should be generated - default is 1"
         arg_type=Int
         default=1
      "--root_cat"
         help="set the root category for the quiz - default is ncs"
         default="ncs"
   end

   parse_args(s)
end