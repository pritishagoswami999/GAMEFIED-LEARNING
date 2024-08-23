// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GamifiedLearning {
    // Struct to define a course
    struct Course {
        uint256 courseId;
        string courseName;
        address instructor;
        uint256 rewardPerTask;
        uint256 totalTasks;
        bool isActive;
    }

    // Struct to track task submissions by students
    struct TaskSubmission {
        bool isCompleted;
        bool isApproved;
    }

    // Course-related mappings
    mapping(uint256 => Course) public courses;
    mapping(uint256 => mapping(address => mapping(uint256 => TaskSubmission))) public taskSubmissions;

    // State variables
    uint256 public nextCourseId;

    // Events
    event CourseCreated(uint256 courseId, string courseName, address instructor);
    event TaskSubmitted(uint256 courseId, address student, uint256 taskId);
    event TaskApproved(uint256 courseId, address student, uint256 taskId);

    // Function to create a new course
    function createCourse(string memory _courseName, uint256 _rewardPerTask, uint256 _totalTasks) public {
        courses[nextCourseId] = Course({
            courseId: nextCourseId,
            courseName: _courseName,
            instructor: msg.sender,
            rewardPerTask: _rewardPerTask,
            totalTasks: _totalTasks,
            isActive: true
        });
        
        emit CourseCreated(nextCourseId, _courseName, msg.sender);
        nextCourseId++;
    }

    function submitTask(uint256 _courseId, uint256 _taskId) public {
        require(courses[_courseId].isActive, "Course is not active");
        require(_taskId < courses[_courseId].totalTasks, "Invalid task ID");
        require(!taskSubmissions[_courseId][msg.sender][_taskId].isCompleted, "Task already submitted");

        taskSubmissions[_courseId][msg.sender][_taskId].isCompleted = true;
        
        emit TaskSubmitted(_courseId, msg.sender, _taskId);
    }

    // Instructor approves a submitted task
    function approveTask(uint256 _courseId, address _student, uint256 _taskId) public {
        require(courses[_courseId].instructor == msg.sender, "Not the instructor");
        require(taskSubmissions[_courseId][_student][_taskId].isCompleted, "Task not yet submitted");
        require(!taskSubmissions[_courseId][_student][_taskId].isApproved, "Task already approved");

        taskSubmissions[_courseId][_student][_taskId].isApproved = true;
        
        emit TaskApproved(_courseId, _student, _taskId);
    }
}

