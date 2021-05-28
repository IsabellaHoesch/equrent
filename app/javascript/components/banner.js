import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["No gear? no problem!", "Any sport, any time!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };