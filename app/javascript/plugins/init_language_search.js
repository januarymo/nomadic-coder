import 'select2';
import 'select2/dist/css/select2.css';

const initLanguageSearch = () => {
  $('.js-language-search').select2({
    width: "100%",
    placeholder: "Language"
  });
}

export { initLanguageSearch }
