class BandPhotoCollection
  def initialize hash = nil
    return unless hash
    @band_photos = []
    hash[:band_photos_attributes].each do |attrs|
      @band_photos << BandPhoto.new(attrs)
    end
  end

  # needed for the fake nested attributes form
  def new_record?
    true
  end

  # needed for the fake nested attributes form
  def band_photos_attributes=(attrs = [])
  end

  def band_photos
    @band_photos ||= [BandPhoto.new]
  end

  def save
    if @band_photos.all?(&:valid?)
      @band_photos.map(&:save)
    end
  end
end
