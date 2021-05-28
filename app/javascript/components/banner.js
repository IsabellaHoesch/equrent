import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Save money, rent sport equipment from people near you!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };