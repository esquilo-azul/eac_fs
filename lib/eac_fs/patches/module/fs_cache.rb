# frozen_string_literal: true

require 'eac_fs/contexts'

class Module
  # @return [EacFs::StorageTree]
  def fs_cache
    ::EacFs::Contexts.cache.current.child('fs_cache', *name.split('::'))
  end
end
