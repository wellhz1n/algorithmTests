const readline = require('node:readline');
const AnagramChecker = () => {
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout,
    });
    const getWordValue = (question) => {
        return new Promise((resolve, reject) => {
            rl.question(question, resolve);
        });
    }
    const check = async () => {
            let wordOne = "";
            let wordTwo = "";
            wordOne = (await getWordValue("Digite a primeira palavra:\n")).trim();
            wordTwo = (await getWordValue("Digite a segunda palavra:\n")).trim();
            let result = true;
            for (let item of wordOne) {
                let numberOfWords = wordOne.split('').filter(x => x === item).length;
                if (wordTwo.split('').filter(x => x === item).length !== numberOfWords) {
                    result = false;
                    break;
                }
            }
            return result;
    }
    return {check}
}

AnagramChecker().check().then((result) => {
    console.log(result);
});
