# config/unicorn.rb に下記内容を記載
# ※パスは変更する。
rails_root = File.expand_path('../spring', __FILE__)

worker_processes 2
working_directory rails_root

listen "#{rails_root}/tmp/unicorn.sock"
pid "#{rails_root}/tmp/unicorn.pid"

stderr_path "#{rails_root}/log/unicorn_error.log"
stdout_path "#{rails_root}/log/unicorn.log"