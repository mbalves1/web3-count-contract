const { ethers } = require("hardhat");

async function main() {
    // Obtém a fábrica do contrato
    const Counter = await ethers.getContractFactory("Counter");

    // Faz o deploy do contrato
    const counter = await Counter.deploy();

    // Aguarda até que o contrato seja implantado
    await counter.deployed();

    // Exibe o endereço onde o contrato foi implantado
    console.log("Counter deployed to:", counter.address);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});