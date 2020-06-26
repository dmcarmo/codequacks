import Typed from 'typed.js';
const typed = () => { 
  new Typed('.typed', {
    strings: ['Going mental?',"Hire me, I'll debug your Code", ""],
    typeSpeed: 40,
    loop: true,
    loopCount: 4,
    showCursor: false
  })
};
export { typed };
