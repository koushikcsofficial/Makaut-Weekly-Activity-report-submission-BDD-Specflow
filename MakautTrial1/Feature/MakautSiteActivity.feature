﻿Feature: MakautSiteActivity
	Open the site
	Login with the valid credential
	Weekly activity report
	Fill up all the details
	Add Details submit

@smoke
Scenario: Add Weekly Activity Report to the site 
	Given I launched the site
	And I clicked the login link
	And I enter the following credential
		| UserName    | Password |
		| 28100116054 | JSTO710  |
	And I click submit Button
	And Wait for a while
	And Clicked in Weekly Activity Report
	And I enter the following Weekly Activity Details
	| WeekDetails | Semester | Course                                                          | Subject                        | TopicCovered                                           | PlatformUsed                             | ClassTakenBy  | DateTime      | LectureLink                                                                                                                                                                                         | Duration | PostClassNotes | AssignmentReceived | AssignmentSubmitted | TestAttended | DailySelfActivity | Remarks |
	| Week-2      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | HAZARD AND ITS SOLUTION                                | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 28.3.20/10:15 | https://youtu.be/zNr0pFrrEnU, https://youtu.be/zNr0pFrrEnU                                                                                                                                          | 100      | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-2      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | E-COMMERCE TECHNOLOGIES                                | Group communication by using Socialmedia | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 25.3.20/11:55 | https://www.youtube.com/watch?v=FhpWKUWjOuc, https://www.youtube.com/watch?v=j_dFxz05IRA                                                                                                            | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-2      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | E-COMMERCE TECHNOLOGIES                                | Group communication by using Socialmedia | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 26.3.20/10:15 | https://www.youtube.com/watch?v=zN237-EpFQI, https://www.youtube.com/watch?v=iKZkxu1gDbQ                                                                                                            | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-2      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | BUSSINESS MODELS OF E-COMMERCE                         | Group communication by using Socialmedia | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 27.3.20/10:15 | https://www.youtube.com/watch?v=DW6Bg_BjeWQ, https://www.youtube.com/watch?v=cGnNGCAgG2s                                                                                                            | 100      | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-3      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | PROBLEM SOLUTION(RESERVATION TABLE)                    | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 2.4.20/2:25   | https://youtu.be/vKSc6yU3Rj4                                                                                                                                                                        | 50       | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-3      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | MISS PENALTY,  HIT TIME,TECHNIQUE TO REDUCE THESE TIME | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 3.4.20/3:15   | https://youtu.be/wjsYjfhERdo                                                                                                                                                                        | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-3      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | PAGING AND SEGMENTATION                                | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 4.4.20/10:15  | https://youtu.be/x_yXldBKElY https://youtu.be/MkcxkoOfumk                                                                                                                                           | 100      | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-3      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | NA                                                     | Group communication by using Socialmedia | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 1.4.20/11:55  | NA                                                                                                                                                                                                  | 50       | NO             | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-3      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | E-STRATEGY                                             | Group communication by using Socialmedia | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 3.4.20/10:15  | https://www.youtube.com/watch?v=ym_rv6Qa984                                                                                                                                                         | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-3      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | E-STRATEGY                                             | Group communication by using Socialmedia | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 4.4.20/11:55  | NA                                                                                                                                                                                                  | 50       | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-4      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | FOUR C'S:, CONVERGENCE                                 | Group communication by using Socialmedia | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 8.4.20/2:25   | https://www.youtube.com/watch?v=prWNe-PUS4g, https://www.youtube.com/watch?v=1ABdAd0fHx8, https://www.youtube.com/watch?v=cVeFFOvg31c,  https://www.youtube.com/watch?v=PKQHFA3jJC8, + PDF DOCUMENT | 50       | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-4      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | MEMORY INTERLEAVING,HASHED INVERTED PAGE TABLE         | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 11.4.20/10:15 | https://youtu.be/pXVYnIy1MY0          https://youtu.be/OUHbaoTMCvk                                                                                                                                  | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-5      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | PAGE REPLACEMENT(FIFO)                                 | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 16.4.20/2:25  | https://youtu.be/omhWncu6tN8                                                                                                                                                                        | 50       | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-5      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | PAGE REPLACEMENT(LRU,OPTIMAL)                          | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 17.4.20/2:25  | https://youtu.be/XO-KlQAHIkE                                                                                                                                                                        | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-5      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | UMA                                                    | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 18.4.20/10:15 | https://youtu.be/AHTSIUS0qFM                                                                                                                                                                        | 50       | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-5      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | Collaborative  Computing                               | Group communication by using Socialmedia | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 17.4.20/10:15 | NA                                                                                                                                                                                                  | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-5      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | COLLABORATIVE COMPUTING AND  CONTENT  MANAGEMENT       | Group communication by using Socialmedia | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 18.4.20/11:55 | https://www.youtube.com/watch?v=ZCFT2ANTbuk,  https://www.youtube.com/watch?v=6vcBKwnl_Y0, https://www.youtube.com/watch?v=7Uxjlr1FAAY                                                              | 100      | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-6      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | NUMA ARCHITECTURE                                      | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 23.4.20/2:25  | https://youtu.be/IlUWaU7h3oE                                                                                                                                                                        | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-6      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | SYNCHRONIZATION                                        | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 24.4.20/2:25  | https://youtu.be/Ro7zsUTT5kQ                                                                                                                                                                        | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-6      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | NETWORK ROUTING                                        | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 25.4.20/10:15 | https://youtu.be/EmRt0GXocwM  https://youtu.be/X2fYHL8XwPY                                                                                                                                          | 100      | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-6      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | SUPLY CHAIN MANAGEMENT, SYSTEM                         | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 22.4.20/2:25  | https://www.youtube.com/watch?v=raqi4gjMLm8 , https://www.youtube.com/watch?v=raqi4gjMLm8                                                                                                           | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-6      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | SUPPLY CHAIN PLANNING TOOLS, AND EXECUTION             | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 24.4.20/10:15 | https://www.youtube.com/watch?v=A-4V5vQ8dw8 ,  https://www.youtube.com/watch?v=VJPGkPdin5E                                                                                                          | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-6      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | SUPPLY CHAIN MANAGEMENT , SYSTEM                       | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 25.4.20/11:55 | https://www.youtube.com/watch?v=lbn8tohqnCQ , https://www.youtube.com/watch?v=lZPO5RclZEo                                                                                                           | 100      | YES            | YES                | YES                 | YES          | Web Development   | N/A     |
	| Week-7      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | PROCESSOR COMMUNICATION                                | Group communication by using Socialmedia | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 30.4.20/2:25  | https://youtu.be/dhXyVzYqwQs                                                                                                                                                                        | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-7      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | MULTISTAGE NETWORK                                     | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 2.5.20/10:15  | https://youtu.be/ibSPkl_7tVs https://youtu.be/EV5gRV_3yj4                                                                                                                                           | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-7      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | PAYMENT  GATEWAY                                       | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 29.4.20/2:25  | https://www.youtube.com/watch?v=s5HrEyEStYE,  https://www.youtube.com/watch?v=GUurzvS3DlY                                                                                                           | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-7      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | E-MARKETING, AND, TELEMARKETING                        | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 2.5.20/11:55  | https://www.youtube.com/watch?v=1t8OJsmxe0s&list=PLjVLYmrlmjGd22WhiV5NV2ZidJUXaBz9, https://www.youtube.com/watch?v=mnqF3g_0HHU, + PDF                                                              | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-8      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | DELTA NETWORK RISC VS CISC                             | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 9.5.20/10:15  | https://youtu.be/v6gCM8KNjFQ                                                                                                                                                                        | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-8      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | ELECTRONIC DATA  INTERCHANGE                           | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 6.5.20/2:25   | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/p/OTY5MDk4OTk4NzBa/details                                                                                                                          | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-8      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | RISK OF  E-COMMERCE                                    | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 9.5.20/11:55  | https://www.youtube.com/watch?v=rlMn_h6CqqU, https://www.youtube.com/watch?v=g3iqvNf8xn0                                                                                                            | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-9      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | CFG,DFG,FLYNN'S TAXONOMY                               | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 14.5.20/2:25  | https://youtu.be/SQjZeploxFE                                                                                                                                                                        | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-9      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | CPU PERFORMANCE,AMDHAL'S LAW,POWER PC                  | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 15.5.20/2:25  | https://youtu.be/QLHQmMiWS_8                                                                                                                                                                        | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-9      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | ILP VECTOR PROCESSOR                                   | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 16.5.20/10:15 | https://youtu.be/fJ1cw35xZ7k                                                                                                                                                                        | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-9      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | FIERWALL CRYPTOGRAPHY  DEGITAL SIGNATURE               | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 13.5.20/2:25  | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/p/MTAxOTMwMjEwNjU0/details                                                                                                                          | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-9      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | ENTERPISE RESOURCE  PLANNING                           | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 15.5.20/10:15 | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/p/MTI1NTExMjU0MDI3/details                                                                                                                          | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-9      | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | BUSINESS MODULES  IN ERP                               | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 16.5.20/11:55 | https://www.youtube.com/watch?v=ydMz8BQQcH4, https://www.youtube.com/watch?v=iT0ZEMJD0rY                                                                                                            | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-11     | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | PETRI NET                                              | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 30.5.20/10:15 | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/m/MTA3Mjc5NDEwNTM4/details                                                                                                                          | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-11     | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | ERP MARKET                                             | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 30.5.20/11:55 | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/p/MTA3NDUxMjU1NzA4/details                                                                                                                          | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-12     | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | VLSI COMPUTTIONS                                       | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 4.6.20/2:25   | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/m/MTA3Mjk2ODU5OTA1/details                                                                                                                          | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-12     | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | CONDITION FOR PARALLELISM                              | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 5.6.20/2:25   | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/m/MTA3Mjk2ODU5OTA1/details                                                                                                                          | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-12     | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | PROGRAM PARTITIONING AND SCHEDULING                    | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 6.6.20/10:15  | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/m/MTA3MzIzMTM1OTUz/details                                                                                                                          | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-12     | 8th      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | DISCUSS ON MODEL QUESTIONS AND ANSWERS                 | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 6.6.20/11:55  | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/p/MTA5MzY0MjU2MTgy/details                                                                                                                          | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-13     | 8TH      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | QUESTION BANK                                          | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 12.6.20/2:25  | https://classroom.google.com/w/NjQzMjYxMjU2MTVa/tc/MTM1MzI2Nzg2NDkx                                                                                                                                 | 50       | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-13     | 8TH      | Bachelor of Technology in Computer Science & Engineering ( 001) | ADVANCED COMPUTER ARCHITECTURE | NETWORK TOPOLOGY OVERVIEW                              | GOOGLE CLASSROOM                         | Sukanta Kundu( Bachelor of Technology in Computer Science & Engineering ) | 13.6.20/10:15 | https://classroom.google.com/w/NjQzMjYxMjU2MTVa/tc/MTM1MzI2Nzg2NDkx                                                                                                                                 | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-13     | 8TH      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | DISCUSS ON MCQ  MODEL QUESTION-II                      | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 12.6.20/10:15 | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/p/MTEyOTkxMDM5NzAy/details                                                                                                                          | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	| Week-13     | 8TH      | Bachelor of Technology in Computer Science & Engineering ( 001) | E-COMMERCE                     | DISCUSS ON MCQ  MODEL QUESTION-III                     | GOOGLE CLASSROOM                         | Saswati Parya( Bachelor of Technology in Computer Science & Engineering ) | 13.6.20/11:55 | https://classroom.google.com/c/NjQzMjYxMjU2MTVa/p/MTEzMTQyMzM3NDk1/details                                                                                                                          | 100      | YES            | NO                 | NO                  | NO           | Web Development   | N/A     |
	Then Close The Browser
