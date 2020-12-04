# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveStorage::Blob`.
# Please instead update this file by running `tapioca dsl`.

# typed: false
module ActiveStorage
  class Blob
    include ActiveStorage::Blob::GeneratedAssociationMethods
    extend ActiveStorage::Blob::GeneratedRelationMethods
  end
end

module ActiveStorage::Blob::GeneratedAssociationMethods
  sig { returns(T::Array[T.untyped]) }
  def attachment_ids; end

  sig { params(ids: T::Array[T.untyped]).returns(T::Array[T.untyped]) }
  def attachment_ids=(ids); end

  sig { returns(::ActiveRecord::Associations::CollectionProxy[ActiveStorage::Attachment]) }
  def attachments; end

  sig { params(value: T::Enumerable[T.untyped]).void }
  def attachments=(value); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def build_preview_image_attachment(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def build_preview_image_blob(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_preview_image_attachment(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_preview_image_attachment!(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_preview_image_blob(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def create_preview_image_blob!(*args, &blk); end

  sig { returns(T.nilable(T.untyped)) }
  def preview_image_attachment; end

  sig { params(value: T.nilable(T.untyped)).void }
  def preview_image_attachment=(value); end

  sig { returns(T.nilable(T.untyped)) }
  def preview_image_blob; end

  sig { params(value: T.nilable(T.untyped)).void }
  def preview_image_blob=(value); end

  sig { returns(T.nilable(T.untyped)) }
  def reload_preview_image_attachment; end

  sig { returns(T.nilable(T.untyped)) }
  def reload_preview_image_blob; end
end

module ActiveStorage::Blob::GeneratedRelationMethods
  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def unattached(*args, &blk); end

  sig { params(args: T.untyped, blk: T.untyped).returns(T.untyped) }
  def with_attached_preview_image(*args, &blk); end
end