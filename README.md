<div align="center">

# Robotics Technology (CS 3015)

**FAST-NUCES · BS Computer Science · Fall 2024**

My complete Robotics course collection – sixteen weeks of lecture slides, hands-on workshops with the MATLAB Robotics Toolbox and ESP8266, assignments with MATLAB code, quiz solutions, the semester project brief, my own notes and the course textbook.

[![Course](https://img.shields.io/badge/Course-CS%203015-1e3a8a?style=for-the-badge)](#course-overview)
[![Subject](https://img.shields.io/badge/Subject-Robotics-6d28d9?style=for-the-badge)](#topics-covered)
[![FAST-NUCES](https://img.shields.io/badge/FAST--NUCES-Fall%202024-166534?style=for-the-badge)](#course-overview)
[![MATLAB](https://img.shields.io/badge/MATLAB-Robotics%20Toolbox-b45309?style=for-the-badge)](#workshops)
[![Website](https://img.shields.io/badge/Website-Live-0b7285?style=for-the-badge)](https://rohaan2802.github.io/Robotics_Technology/)

</div>

---

## Live Links

| What | Link |
|---|---|
| Repository | [rohaan2802/Robotics_Technology](https://github.com/rohaan2802/Robotics_Technology) |
| Website (GitHub Pages) | [rohaan2802.github.io/Robotics_Technology](https://rohaan2802.github.io/Robotics_Technology/) |
| Download whole repository (ZIP) | [main.zip](https://github.com/rohaan2802/Robotics_Technology/archive/refs/heads/main.zip) |
| Course folder | [Lecture #01](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2301) |
| Course folder | [Lecture #02](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2302) |
| Course folder | [Lecture #03](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2303) |
| Course folder | [Lecture #04](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2304) |
| Course folder | [Lecture #05](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2305) |
| Course folder | [Lecture #06](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2306) |
| Course folder | [Lecture #07](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2307) |
| Course folder | [Lecture #08](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2308) |
| Course folder | [Lecture #09](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2309) |
| Course folder | [Lecture #10](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2310) |
| Course folder | [Lecture #11](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2311) |
| Course folder | [Lecture #12](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2312) |
| Course folder | [Lecture #13](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2313) |
| Course folder | [Lecture #14](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2314) |
| Course folder | [Lecture #15](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2315) |
| Course folder | [Lecture #16](https://github.com/rohaan2802/Robotics_Technology/tree/main/Lecture%20%2316) |
| Course folder | [Assignments](https://github.com/rohaan2802/Robotics_Technology/tree/main/Assignments) |
| Course folder | [Quizes](https://github.com/rohaan2802/Robotics_Technology/tree/main/Quizes) |
| Course folder | [WORK_SHOPS](https://github.com/rohaan2802/Robotics_Technology/tree/main/WORK_SHOPS) |
| Final project folder | [Final_Project](https://github.com/rohaan2802/Robotics_Technology/tree/main/Final_Project) |
| Final project | [Robotics - Semester Project.pdf](https://github.com/rohaan2802/Robotics_Technology/blob/main/Final_Project/Robotics%20-%20Semester%20Project.pdf) |
| Study notes | [Notes](https://github.com/rohaan2802/Robotics_Technology/tree/main/Notes) |
| Study notes | [Robotic Notes.pdf](https://github.com/rohaan2802/Robotics_Technology/blob/main/Notes/Robotic%20Notes.pdf) |
| Study notes | [Euler angles.txt](https://github.com/rohaan2802/Robotics_Technology/blob/main/Notes/Euler%20angles.txt) |
| Study notes | [Degrees of Freedom (DOF).txt](https://github.com/rohaan2802/Robotics_Technology/blob/main/Notes/Degrees%20of%20Freedom%20%28DOF%29.txt) |
| Other useful path | [Robotics, Vision and Control_2nd edition.pdf](https://github.com/rohaan2802/Robotics_Technology/blob/main/Books/Robotics%2C%20Vision%20and%20Control_2nd%20edition.pdf) |
| Other useful path | [Lecture 6 video (YouTube)](https://www.youtube.com/watch?v=_xcUYlF9lpI) |
| Other useful path | [Lecture 12 video (YouTube)](https://www.youtube.com/watch?v=OkkEuMe-uyc) |
| Other useful path | [LICENSE](https://github.com/rohaan2802/Robotics_Technology/blob/main/LICENSE) |

---

## Table of Contents

- [Course Overview](#course-overview)
- [Topics Covered](#topics-covered)
- [Repository at a Glance](#repository-at-a-glance)
- [Lectures](#lectures)
- [Workshops](#workshops)
- [Assignments](#assignments)
- [Quizzes and Semester Project](#quizzes-and-semester-project)
- [Notes](#notes)
- [Book](#book)
- [Folder Structure](#folder-structure)
- [Screenshots](#screenshots)
- [Getting the Files](#getting-the-files)
- [License](#license)
- [Author](#author)

---

## Course Overview

Robotics (CS 3015) was taught by Ms. Umarah Qaseem in Fall 2024 at FAST-NUCES. The course starts with frames, poses and rotations, builds up to forward and inverse kinematics with Denavit-Hartenberg parameters, then covers trajectory planning, mobile robots, microcontrollers (Arduino, ESP32/ESP8266), the Robot Operating System, sensors and control. Weekly workshops put the theory into practice with Peter Corke's Robotics Toolbox for MATLAB.

The course textbook is *Robotics, Vision and Control* (2nd edition) by Peter Corke, included in `Books/`.

## Topics Covered

| Unit | Topics |
|---|---|
| **1. Foundations** | History of robotics, laws of robotics, industrial, humanoid and mobile robots, applications |
| **2. Pose and transformations** | Frames of reference, points and vectors, 2D and 3D rotations, homogeneous transforms, relative pose composition, Euler angles, roll-pitch-yaw |
| **3. Robot arms** | Joint types, gantry, SCARA, parallel and serial robots, degrees of freedom, task vs configuration space |
| **4. Kinematics** | Denavit-Hartenberg notation, forward kinematics, base and tool transforms, workspace, inverse kinematics (geometric, analytic, numerical), redundancy |
| **5. Trajectories** | Joint and Cartesian interpolated motion, cubic and quintic polynomials, trapezoidal profiles, multi-segment trajectories with via points |
| **6. Mobile robotics** | Wheel types, omni and mecanum wheels, holonomic vs non-holonomic, differential drive kinematics, perception, localisation, path planning |
| **7. Hardware and software** | Arduino, ESP32 and ESP8266, ROS nodes, topics, services and actions |
| **8. Sensors and control** | Encoders, sonar, IR, LIDAR, IMU, gyroscopes, gimbal lock, actuators, joint control, open and closed loop, transfer functions |

## Repository at a Glance

| What | Count |
|---|---|
| Course files | **71** |
| PDF documents | 43 |
| Lecture folders | 16 |
| Workshop files | 12 |
| Assignment files | 11 |
| MATLAB scripts | 4 |
| Quiz solutions | 3 |
| Notes | 21 |

## Lectures

| Lecture | Topic | Covers | Files |
|---|---|---|---|
| [#01](Lecture%20%2301) | Introduction to Robotics | History of robots, laws of robotics, humanoids, industrial and mobile robots | [Lecture 1a Intro.pdf](Lecture%20%2301/Lecture%201a%20Intro.pdf) · [Lecture 1b.pdf](Lecture%20%2301/Lecture%201b.pdf) |
| [#02](Lecture%20%2302) | Frames of Reference & Pose | Coordinate frames, points and vectors, right-handed frames, relative pose and composition | [Lecture 2a.pdf](Lecture%20%2302/Lecture%202a.pdf) · [Lecture 2b.pdf](Lecture%20%2302/Lecture%202b.pdf) |
| [#03](Lecture%20%2303) | 2D & 3D Rotations | Rotation matrices, orientation and handwritten class notes | [CamScanner 09-28-2024 23.37.pdf](Lecture%20%2303/CamScanner%2009-28-2024%2023.37.pdf) · [Lecture 3.pdf](Lecture%20%2303/Lecture%203.pdf) |
| [#04](Lecture%20%2304) | Joints, Robot Types & DH Notation | Gantry, SCARA, parallel and serial arms, task vs configuration space, Denavit-Hartenberg | [Lecture 4.pdf](Lecture%20%2304/Lecture%204.pdf) · [Transformation.pdf](Lecture%20%2304/Transformation.pdf) |
| [#05](Lecture%20%2305) | Forward Kinematics | DH parameters, link transformations, worked examples, base and tool transforms, workspace | [Lecture 5.pdf](Lecture%20%2305/Lecture%205.pdf) |
| [#06](Lecture%20%2306) | Video Lecture | Recorded lecture (YouTube link) | [lecture 6 link.txt](https://www.youtube.com/watch?v=_xcUYlF9lpI) |
| [#07](Lecture%20%2307) | Kinematics, Dynamics & Inverse Kinematics | Geometric and analytic IK for 2-link arms, numerical IK, redundancy and singularities | [Lecture 7a.pdf](Lecture%20%2307/Lecture%207a.pdf) · [Lecture 7b.pdf](Lecture%20%2307/Lecture%207b.pdf) |
| [#08](Lecture%20%2308) | Robot Motion & Trajectories | Joint and Cartesian interpolated motion, cubic polynomials, trapezoidal profiles, via points | [Lecture 8.pdf](Lecture%20%2308/Lecture%208.pdf) |
| [#09](Lecture%20%2309) | Measuring Motion – Sensors | IMU, accelerometers, gyroscopes, magnetic compass, gimbals, roll-pitch-yaw and gimbal lock | [Lecture 9a.pdf](Lecture%20%2309/Lecture%209a.pdf) |
| [#10](Lecture%20%2310) | ESP32 & Quintic Polynomials | Quintic trajectories, microcontrollers vs microprocessors, ESP32 and ESP8266 | [Lecture 10 - ESP, Quintic.pdf](Lecture%20%2310/Lecture%2010%20-%20ESP%2C%20Quintic.pdf) |
| [#11](Lecture%20%2311) | Obstacle Avoidance & Project Discussion | Obstacle avoidance program, inverse kinematics recap, project ideas and assignment discussion | [Lecture 11.pdf](Lecture%20%2311/Lecture%2011.pdf) |
| [#12](Lecture%20%2312) | Video Lecture | Recorded lecture (YouTube link) | [Lecture #12.txt](https://www.youtube.com/watch?v=OkkEuMe-uyc) |
| [#13](Lecture%20%2313) | Mobile Robotics | Wheel types, mecanum and omni wheels, holonomic systems, differential drive kinematics | [Lecture 13 - Mobile Robotics.pdf](Lecture%20%2313/Lecture%2013%20-%20Mobile%20Robotics.pdf) |
| [#14](Lecture%20%2314) | Arduino | Board anatomy, sensors and actuators, Arduino IDE and language, digital and analog I/O | [Lecture 14 - Arduino.pdf](Lecture%20%2314/Lecture%2014%20-%20Arduino.pdf) |
| [#15](Lecture%20%2315) | ROS & Sensors | Robot Operating System nodes, topics, services and actions; encoders, sonar, IR, LIDAR, IMU | [Lecture 15 - Robotic Operating System.pdf](Lecture%20%2315/Lecture%2015%20-%20Robotic%20Operating%20System.pdf) · [Lecture 15 - Sensors.pdf](Lecture%20%2315/Lecture%2015%20-%20Sensors.pdf) |
| [#16](Lecture%20%2316) | Dynamics, Control & Actuators | Joint control architecture, hydraulic and electric actuators, open vs closed loop, transfer functions | [Lecture 16 - Dynamics and Control, Feedback system, Actuators.pdf](Lecture%20%2316/Lecture%2016%20-%20Dynamics%20and%20Control%2C%20Feedback%20system%2C%20Actuators.pdf) |

## Workshops

- [qz and qr.txt](WORK_SHOPS/qz%20and%20qr.txt)
- [Robot_.m](WORK_SHOPS/Robot_.m)
- [robotics tool box manual.pdf](WORK_SHOPS/robotics%20tool%20box%20manual.pdf)
- [robotics tool box manual_2.pdf](WORK_SHOPS/robotics%20tool%20box%20manual_2.pdf)
- [Robotics Workshop 1 .pdf](WORK_SHOPS/Robotics%20Workshop%201%20.pdf)
- [Tutorial Demo on ESP8266 - 1.pdf](WORK_SHOPS/Tutorial%20Demo%20on%20ESP8266%20-%201.pdf)
- [Tutorial Demo on ESP8266 - 2.pdf](WORK_SHOPS/Tutorial%20Demo%20on%20ESP8266%20-%202.pdf)
- [Tutorial Demo on ESP8266 - 3.pdf](WORK_SHOPS/Tutorial%20Demo%20on%20ESP8266%20-%203.pdf)
- [Week 6 - Workshop 4 - Complete Simulation.pdf](WORK_SHOPS/Week%206%20-%20Workshop%204%20-%20Complete%20Simulation.pdf)
- [Week 6 - Workshop 4 - Complete Simulation_2.pdf](WORK_SHOPS/Week%206%20-%20Workshop%204%20-%20Complete%20Simulation_2.pdf)
- [Workshop 2+3 Pose(2D,3D).pdf](WORK_SHOPS/Workshop%202%2B3%20Pose%282D%2C3D%29.pdf)
- [ws#02.m](WORK_SHOPS/ws%2302.m)

## Assignments

- [A2 Robotics.pdf](Assignments/A2%20Robotics.pdf)
- [A4 Robotics.pdf](Assignments/A4%20Robotics.pdf)
- [assignment_app.m](Assignments/Assignment%20%2301/assignment_app.m)
- [Humanoid Robot Pitch Deck by Slidesgo.pptx](Assignments/Assignment%20%2301/Humanoid%20Robot%20Pitch%20Deck%20by%20Slidesgo.pptx)
- [NEW_REPORT.pdf](Assignments/Assignment%20%2301/NEW_REPORT.pdf)
- [R2.jpg](Assignments/Assignment%20%2301/R2.jpg)
- [ass1.m](Assignments/Assignment%20%2302/ass1.m)
- [SEC.pdf](Assignments/Assignment%20%2302/SEC.pdf)
- [Robotics - Assignment 1.pdf](Assignments/Robotics%20-%20Assignment%201.pdf)
- [Robotics - Assignment 2.pdf](Assignments/Robotics%20-%20Assignment%202.pdf)
- [Robotics - Assignment 4.pdf](Assignments/Robotics%20-%20Assignment%204.pdf)

## Quizzes and Semester Project

- [IK solution.pdf](Quizes/IK%20solution.pdf)
- [Quiz 2 - Robotics - Solution.pdf](Quizes/Quiz%202%20-%20Robotics%20-%20Solution.pdf)
- [Sessional Question 4 Solution.pdf](Quizes/Sessional%20Question%204%20Solution.pdf)
- [Robotics - Semester Project.pdf](Final_Project/Robotics%20-%20Semester%20Project.pdf)

## Notes

<details>
<summary><b>Notes folder</b> – 21 files</summary>

- [A lot of people dunno how powerful matrix is 🤷__engineering _engineer(MP4).mp4](Notes/A%20lot%20of%20people%20dunno%20how%20powerful%20matrix%20is%20%F0%9F%A4%B7__engineering%20_engineer%28MP4%29.mp4)
- [Degrees of Freedom (DOF).txt](Notes/Degrees%20of%20Freedom%20%28DOF%29.txt)
- [Euler angles.txt](Notes/Euler%20angles.txt)
- [Robo Quiz.pdf](Notes/Robo%20Quiz.pdf)
- [Robotic Notes.pdf](Notes/Robotic%20Notes.pdf)
- [Roll, pitch, and yaw.txt](Notes/Roll%2C%20pitch%2C%20and%20yaw.txt)
- [Rotation about the z-axis.txt](Notes/Rotation%20about%20the%20z-axis.txt)
- [s1.PNG](Notes/s1.PNG)
- [s2.PNG](Notes/s2.PNG)
- [s3.PNG](Notes/s3.PNG)
- [s4.PNG](Notes/s4.PNG)
- [s5.PNG](Notes/s5.PNG)
- [s6.PNG](Notes/s6.PNG)
- [s7.PNG](Notes/s7.PNG)
- [s8.PNG](Notes/s8.PNG)
- [s9.PNG](Notes/s9.PNG)
- [s10.PNG](Notes/s10.PNG)
- [s12.PNG](Notes/s12.PNG)
- [s13.PNG](Notes/s13.PNG)
- [Transformation Matrix formula.png](Notes/Transformation%20Matrix%20formula.png)
- [why use 0 0 1.txt](Notes/why%20use%200%200%201.txt)

</details>

## Book

| Book | Author |
|---|---|
| [Robotics, Vision and Control – Fundamental Algorithms in MATLAB (2nd ed.)](Books/Robotics%2C%20Vision%20and%20Control_2nd%20edition.pdf) | Peter Corke |

## Folder Structure

```text
Robotics_Technology/
├── Assignments/
│   ├── A2 Robotics.pdf
│   ├── A4 Robotics.pdf
│   ├── Assignment #01/
│   ├── Assignment #02/
│   ├── Robotics - Assignment 1.pdf
│   ├── Robotics - Assignment 2.pdf
│   └── Robotics - Assignment 4.pdf
├── Books/
│   └── Robotics, Vision and Control_2nd edition.pdf
├── Final_Project/
│   └── Robotics - Semester Project.pdf
├── Lecture #01/
│   ├── Lecture 1a Intro.pdf
│   └── Lecture 1b.pdf
├── Lecture #02/
│   ├── Lecture 2a.pdf
│   └── Lecture 2b.pdf
├── Lecture #03/
│   ├── CamScanner 09-28-2024 23.37.pdf
│   └── Lecture 3.pdf
├── Lecture #04/
│   ├── Lecture 4.pdf
│   └── Transformation.pdf
├── Lecture #05/
│   └── Lecture 5.pdf
├── Lecture #06/
│   └── lecture 6 link.txt
├── Lecture #07/
│   ├── Lecture 7a.pdf
│   └── Lecture 7b.pdf
├── Lecture #08/
│   └── Lecture 8.pdf
├── Lecture #09/
│   └── Lecture 9a.pdf
├── Lecture #10/
│   └── Lecture 10 - ESP, Quintic.pdf
├── Lecture #11/
│   └── Lecture 11.pdf
├── Lecture #12/
│   └── Lecture #12.txt
├── Lecture #13/
│   └── Lecture 13 - Mobile Robotics.pdf
├── Lecture #14/
│   └── Lecture 14 - Arduino.pdf
├── Lecture #15/
│   ├── Lecture 15 - Robotic Operating System.pdf
│   └── Lecture 15 - Sensors.pdf
├── Lecture #16/
│   └── Lecture 16 - Dynamics and Control, Feedback system, Actuators.pdf
├── Notes/
│   └── 21 files (notes, quiz prep, screenshots, video)
├── Quizes/
│   ├── IK solution.pdf
│   ├── Quiz 2 - Robotics - Solution.pdf
│   └── Sessional Question 4 Solution.pdf
├── WORK_SHOPS/
│   ├── qz and qr.txt
│   ├── Robot_.m
│   ├── robotics tool box manual.pdf
│   ├── robotics tool box manual_2.pdf
│   ├── Robotics Workshop 1 .pdf
│   ├── Tutorial Demo on ESP8266 - 1.pdf
│   ├── Tutorial Demo on ESP8266 - 2.pdf
│   ├── Tutorial Demo on ESP8266 - 3.pdf
│   ├── Week 6 - Workshop 4 - Complete Simulation.pdf
│   ├── Week 6 - Workshop 4 - Complete Simulation_2.pdf
│   ├── Workshop 2+3 Pose(2D,3D).pdf
│   └── ws#02.m
├── assets/   (website + 30 screenshots)
├── index.html
├── LICENSE
└── README.md
```

## Screenshots

### 1. Repository Folder Structure

<img src="assets/screenshots/01_repository_structure.png" alt="Repository Folder Structure" width="100%">

### 2. Lecture 1 – The First Industrial Robot (Unimate, 1961)

<img src="assets/screenshots/02_unimate_1961.png" alt="Lecture 1 – The First Industrial Robot (Unimate, 1961)" width="100%">

### 3. Lecture 1 – Humanoid Robots: Honda ASIMO

<img src="assets/screenshots/03_humanoid_asimo.png" alt="Lecture 1 – Humanoid Robots: Honda ASIMO" width="100%">

### 4. Lecture 2 – The Right-Handed Coordinate Frame

<img src="assets/screenshots/04_right_handed_frame.png" alt="Lecture 2 – The Right-Handed Coordinate Frame" width="100%">

### 5. Lecture 2 – Composing Relative Poses

<img src="assets/screenshots/05_relative_points.png" alt="Lecture 2 – Composing Relative Poses" width="100%">

### 6. Lecture 4 – The SCARA Robot

<img src="assets/screenshots/06_scara_robot.png" alt="Lecture 4 – The SCARA Robot" width="100%">

### 7. Lecture 4 – Tool Tip Pose of a One-Link Arm

<img src="assets/screenshots/07_tool_tip_pose.png" alt="Lecture 4 – Tool Tip Pose of a One-Link Arm" width="100%">

### 8. Lecture 4 – Denavit-Hartenberg Table of the PUMA 560

<img src="assets/screenshots/08_dh_notation.png" alt="Lecture 4 – Denavit-Hartenberg Table of the PUMA 560" width="100%">

### 9. Lecture 5 – DH Parameters of a Two-DOF Arm

<img src="assets/screenshots/09_dh_two_dof_example.png" alt="Lecture 5 – DH Parameters of a Two-DOF Arm" width="100%">

### 10. Lecture 5 – Forward Kinematics as Pose Composition

<img src="assets/screenshots/10_forward_kinematics.png" alt="Lecture 5 – Forward Kinematics as Pose Composition" width="100%">

### 11. Lecture 5 – Base and Tool Transforms

<img src="assets/screenshots/11_base_tool_transform.png" alt="Lecture 5 – Base and Tool Transforms" width="100%">

### 12. Lecture 7 – Inverse Kinematics: Geometric Approach

<img src="assets/screenshots/12_ik_geometric.png" alt="Lecture 7 – Inverse Kinematics: Geometric Approach" width="100%">

### 13. Lecture 7 – Inverse Kinematics: Analytic Solution

<img src="assets/screenshots/13_ik_analytic.png" alt="Lecture 7 – Inverse Kinematics: Analytic Solution" width="100%">

### 14. Lecture 8 – Polynomial Trajectory Boundary Conditions

<img src="assets/screenshots/14_cubic_boundary.png" alt="Lecture 8 – Polynomial Trajectory Boundary Conditions" width="100%">

### 15. Lecture 8 – Trapezoidal Velocity Profile

<img src="assets/screenshots/15_trapezoidal_profile.png" alt="Lecture 8 – Trapezoidal Velocity Profile" width="100%">

### 16. Lecture 10 – ESP32 Development Board Pinout

<img src="assets/screenshots/16_esp32_pinout.png" alt="Lecture 10 – ESP32 Development Board Pinout" width="100%">

### 17. Lecture 13 – Omni and Mecanum Wheels

<img src="assets/screenshots/17_mecanum_wheels.png" alt="Lecture 13 – Omni and Mecanum Wheels" width="100%">

### 18. Lecture 13 – Differential Drive Kinematics

<img src="assets/screenshots/18_diff_drive_kinematics.png" alt="Lecture 13 – Differential Drive Kinematics" width="100%">

### 19. Lecture 14 – Anatomy of an Arduino Board

<img src="assets/screenshots/19_arduino_anatomy.png" alt="Lecture 14 – Anatomy of an Arduino Board" width="100%">

### 20. Lecture 15 – ROS: Publishing on a Topic

<img src="assets/screenshots/20_ros_topics.png" alt="Lecture 15 – ROS: Publishing on a Topic" width="100%">

### 21. Lecture 15 – Sonar Sensors

<img src="assets/screenshots/21_sonar_sensor.png" alt="Lecture 15 – Sonar Sensors" width="100%">

### 22. Lecture 16 – Joint Control Architecture

<img src="assets/screenshots/22_joint_control.png" alt="Lecture 16 – Joint Control Architecture" width="100%">

### 23. Lecture 16 – Open Loop vs Closed Loop Control

<img src="assets/screenshots/23_open_closed_loop.png" alt="Lecture 16 – Open Loop vs Closed Loop Control" width="100%">

### 24. Workshop 2+3 – Visualising a Pose in the Robotics Toolbox

<img src="assets/screenshots/24_ws_pose_visualization.png" alt="Workshop 2+3 – Visualising a Pose in the Robotics Toolbox" width="100%">

### 25. Workshop 4 – Forward Kinematics with SerialLink

<img src="assets/screenshots/25_ws_fk_method1.png" alt="Workshop 4 – Forward Kinematics with SerialLink" width="100%">

### 26. Assignment 2 – Quintic Trajectory in MATLAB

<img src="assets/screenshots/26_matlab_assignment2.png" alt="Assignment 2 – Quintic Trajectory in MATLAB" width="100%">

### 27. Assignment 2 – Solving for Quintic Coefficients by Hand

<img src="assets/screenshots/27_assignment2_handwritten.png" alt="Assignment 2 – Solving for Quintic Coefficients by Hand" width="100%">

### 28. Quiz – Inverse Kinematics Solution

<img src="assets/screenshots/28_quiz_ik_solution.png" alt="Quiz – Inverse Kinematics Solution" width="100%">

### 29. Handwritten Notes – Transformation Matrix (Translation + Rotation)

<img src="assets/screenshots/29_handwritten_notes.png" alt="Handwritten Notes – Transformation Matrix (Translation + Rotation)" width="100%">

### 30. Semester Project – Requirement Document

<img src="assets/screenshots/30_semester_project.png" alt="Semester Project – Requirement Document" width="100%">

## Getting the Files

```bash
# everything
git clone https://github.com/rohaan2802/Robotics_Technology.git

# smaller clone that skips large files (like the textbook) until you open them
git clone --filter=blob:limit=5m https://github.com/rohaan2802/Robotics_Technology.git
```

The MATLAB scripts need the [Robotics Toolbox for MATLAB](https://github.com/petercorke/robotics-toolbox-matlab) by Peter Corke.

## License

The lecture slides, workshop handouts, assignments and quiz solutions belong to the course instructor at FAST-NUCES, and the book belongs to its author and publisher. They are shared here only for learning and revision. My own notes, code and the way this repository is organised are free to use for study. See [LICENSE](LICENSE).

## Author

**Mohammad Rohaan** – BS Computer Science, FAST-NUCES

- GitHub: [@rohaan2802](https://github.com/rohaan2802)
- Email: [m.rohaanarshad@gmail.com](mailto:m.rohaanarshad@gmail.com)

If this helped you with Robotics, a ⭐ on the repository is appreciated.
