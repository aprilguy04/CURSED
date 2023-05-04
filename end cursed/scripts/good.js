function openNav() {
  document.getElementById("myNav").style.width = "100%";
}

function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}


const urlParams = new URLSearchParams(window.location.search)
const goodId = urlParams.get('id')

const getGood = async () => {
  if (!goodId) return undefined

  const response = await fetch('../index.xml')
  const xmlString = await response.text()
  const parser = new DOMParser()
  const xmlDoc = parser.parseFromString(xmlString, 'text/xml')

  const good = {}

  let item = undefined

  xmlDoc
    .getElementsByTagName('goods')[0]
    .childNodes.forEach(nodeParent => {
    nodeParent.childNodes.forEach(node => {
      if (
        node.nodeName === 'id' &&
        node.innerHTML.toString() === goodId.toString()
      ) {
        item = nodeParent
      }
    })
  })

  if (item === undefined) return undefined

  item.childNodes.forEach(node => {
    if (node.nodeName[0] !== '#') {
      good[node.nodeName] = node.innerHTML
    }
  })

  return good
}

getGood().then(good => {
  const NAME = document.getElementById('name')
  const PRICE = document.getElementById('price')
  const CHARGES = document.getElementById('charges')
  const ART = document.getElementById('art')
  const IMAGE = document.getElementById('image')
  const CAL = document.getElementById('cal')

  NAME.innerHTML = NAME.innerHTML + ' ' + good.name
  PRICE.innerHTML = PRICE.innerHTML + ' ' + good.price
  CHARGES.innerHTML = CHARGES.innerHTML + ' ' + good.charges
  ART.innerHTML = ART.innerHTML + ' ' + good.art
  IMAGE.src = good.image
  CAL.innerHTML = CAL.innerHTML + ' ' + good.cal
})
