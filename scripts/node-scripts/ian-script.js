const fs = require('fs')
const path = require('path')
const { execSync } = require('child_process')

const currentPath = '/home/malachi/chia'
const newPath = ['/home/malachi/chia/new-dir']
const delayInSeconds = 1
const HDD = []

const sleep = (ms) => {
  return new Promise(resolve => setTimeout(resolve, ms));
}

const infiniteLoop = async (delay) => {
  while (true) {
    const currentDirContent = fs.readdirSync(currentPath, 'utf8')
    for (i of currentDirContent) {
      if (path.extname(i) === '.plot') {
        execSync(`mv ${currentPath}/${i} ${newPath}/${i}`, {encoding: 'utf8'})
      }
    }
    console.log('end')
    await sleep(delay)
  }
}

infiniteLoop(delayInSeconds * 1000);
