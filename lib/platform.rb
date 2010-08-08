module SlowGrowl
  if RUBY_PLATFORM =~ /linux/i
      NOTIFIER = :rnotify
      REQUIRE_GEMS = ['gtk2', 'rnotify']
      DEPENDENT_GEMS = ['gtk2', 'ruby-libnotify']
  else
    NOTIFIER = :growl
    REQUIRE_GEMS = DEPENDENT_GEMS = ['growl']
  end
end
