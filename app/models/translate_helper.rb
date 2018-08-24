require "google/cloud/translate"
require "google/cloud/storage"

class TranslateHelper

  def initialize
    @google_translation_instance = set_up_google_translation_instance
  end

  def translate_text(text, lng)
    @google_translation_instance.translate(text, to: lng)
  end
  # def google_storage_instance
  #   storage = Google::Cloud::Storage.new project: 'jinglish-stories', keyfile: "/Users/flatironschool/Development/code/rails/natsuki_rosa_website/app/Jinglish-Stories-f3523a8500d2.json"
  # end
  private

  def set_up_google_translation_instance
    Google::Cloud::Translate.new(
<<<<<<< HEAD
      project: 'shiba-golden',
      keyfile: '/Users/flatironschool/Development/code/rails/natsuki_rosa_website/config/application.yml'
=======
      project: 
      keyfile:
>>>>>>> natsuki
    )
  end
end
