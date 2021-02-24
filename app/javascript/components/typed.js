import Typed from 'typed.js';
const typed = () => {
  const typed_text = document.getElementById('typed-strings');
  if (typed_text) {
    new Typed('.typed', {
      strings: ['Going mental?',"Hire me, I'll debug your Code"],
      typeSpeed: 60,
      backSpeed: 60,
      loop: true,
      showCursor: false,
    })
  }  
};
export { typed };
