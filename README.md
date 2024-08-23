![gamification-of-elearning-benefits-1](https://github.com/user-attachments/assets/255b3e23-f21d-46a0-a23f-5987f8affd6d)

# Gamified Learning Platform Smart Contract

### Vision
The Gamified Learning Platform aims to revolutionize education by integrating blockchain technology with gamified learning. This platform empowers instructors to create courses with rewards for students who complete tasks, creating a competitive and engaging learning environment. With transparent and automated task approval, learners are incentivized through smart contract-based rewards.

### Flowchart
Below is a simplified flowchart of the platform’s operation:

1. **Instructor Creates a Course**  
   ⬇️  
2. **Students Enroll and Submit Tasks**  
   ⬇️  
3. **Instructor Reviews and Approves Tasks**  
   ⬇️  
4. **Students Earn Rewards for Completing Tasks**

```plaintext
[Instructor] -> [Create Course] -> [Student Enrollment]
                     ⬇
               [Submit Task] -> [Instructor Approval] -> [Earn Rewards]
```

### Smart Contract Overview
This Solidity-based smart contract includes functionalities for:
- Creating courses with specified rewards and tasks.
- Allowing students to submit tasks for instructor approval.
- Managing the approval of tasks and distribution of rewards.

### Deployment Details
- **Network**: Edu-Chain Testnet
- **Contract Address**: '0xAbE46029938cDB6FF2E53EAf72d4B8f6d0d93987'
![Screenshot from 2024-08-23 12-54-54](https://github.com/user-attachments/assets/a193bba1-0892-413f-9b54-87b7455a77cf)


### Features
- **Instructor-Controlled Courses**: Instructors create and manage courses.
- **Student Task Submissions**: Students submit tasks for review.
- **Automated Reward Distribution**: Rewards are distributed upon task approval.
- **Event Logging**: Key actions like course creation, task submission, and approval are logged for transparency.

### Setup and Deployment
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/gamified-learning-platform.git
   cd gamified-learning-platform
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Compile the contract:
   ```bash
   npx hardhat compile
   ```

4. Deploy to EduChain:
   ```bash
   npx hardhat run --network educhain scripts/deploy.js
   ```

### Future Scope
- **Tokenized Rewards**: Introducing platform-native tokens as rewards for completed tasks.
- **Decentralized Governance**: Implementing DAO-based governance for community-driven decision-making.
- **NFT-Based Certificates**: Awarding NFTs as certificates of course completion.
- **Advanced Analytics**: Adding AI-powered analytics to track student progress and enhance learning strategies.

### Contact
- **Name**: PRITISHA GOSWAMI
- **Email**: pritishagoswami333@gmail.com
- **LinkedIn**: https://www.linkedin.com/in/pritishaa-goswami-824284320?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app
- **GitHub**: https://github.com/pritishagoswami999

