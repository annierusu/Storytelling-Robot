import story_generation as ai
import json



def main():
    # print(qt_translate("hello", language_to='fr'))
    # print(qt_translate("hello", language_to='en'))
    # print(qt_translate("hello", language_to='es'))
    phrase = "the quick brown fox jumps over the lazy dog"
    print(ai.qt_translate(phrase, language_to='fr'))



if __name__ == "__main__":
    main()