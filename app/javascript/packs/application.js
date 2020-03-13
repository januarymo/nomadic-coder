import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initLanguageSearch } from '../plugins/init_language_search';

import { initFlashAlert } from '../plugins/init_flash_alert'

initMapbox();
initLanguageSearch();

initFlashAlert()
