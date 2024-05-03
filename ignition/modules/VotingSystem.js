const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("VotingSystemModule", (m) => {
  const vote = m.contract("VotingSystem")

  return { vote };
});
