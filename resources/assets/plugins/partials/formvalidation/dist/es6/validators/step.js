import t from"../utils/format";export default function e(){const e=(t,e)=>{const s=Math.pow(10,e);const a=t*s;let n;switch(true){case a===0:n=0;break;case a>0:n=1;break;case a<0:n=-1;break}const r=a%1===.5*n;return r?(Math.floor(a)+(n>0?1:0))/s:Math.round(a)/s};const s=(t,s)=>{if(s===0){return 1}const a=`${t}`.split(".");const n=`${s}`.split(".");const r=(a.length===1?0:a[1].length)+(n.length===1?0:n[1].length);return e(t-s*Math.floor(t/s),r)};return{validate(e){if(e.value===""){return{valid:true}}const a=parseFloat(e.value);if(isNaN(a)||!isFinite(a)){return{valid:false}}const n=Object.assign({},{baseValue:0,message:"",step:1},e.options);const r=s(a-n.baseValue,n.step);return{message:t(e.l10n?n.message||e.l10n.step.default:n.message,`${n.step}`),valid:r===0||r===n.step}}}}