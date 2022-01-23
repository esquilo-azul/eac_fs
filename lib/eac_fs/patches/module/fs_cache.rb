# frozen_string_literal: true

require 'eac_fs/storage_tree'

class Module
  # @return [EacFs::StorageTree]
  def fs_cache
    ::EacFs::StorageTree.context.current.child('fs_cache', *name.split('::'))
  end
end
