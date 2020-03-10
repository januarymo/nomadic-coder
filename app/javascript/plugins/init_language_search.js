import 'select2';
import 'select2/dist/css/select2.css';

const initLanguageSearch = () => {
  $('.js-language-search').select2({
    placeholder: "Languages"
  });
}

export { initLanguageSearch }
