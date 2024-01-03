<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<%@ include file="../header.jsp" %>

    <title>그냥 데려가게</title>
    <style>
        .quiz-container {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin-bottom: 20px;
        }

        label {
            margin-right: 10px;
        }
    </style>


    <h1>강아지 OX Quiz</h1>

    <form id="quizForm">
        <div id="quizContainer"></div>
        <button type="button" onclick="checkAnswers()">결과 확인</button>
    </form>

    <script>
        const questions = [
            { question:"1. 종합백신(DHPPL) 종류에 광견병이 포함된다.", answer: "x" },
            { question:"2. 동물 보호법으로 정해진 리드줄 길이는 2m 이하이다.", answer: "o" },
            { question:"3. 광견병 예방접종은 매년 맞지 않아도 된다.", answer: "x" },
            { question:"4. 강아지는 꽃은 먹어도 된다.", answer:"x"},
            { question:"5. 임신중에 구충약 복용해야 한다.", answer:"x"},
            { question:"6. 임신기간은 평균 9주이다.", answer:"o"},
            { question:"7. 성견 치아는 40개 이상이다.", answer:"o"},
            { question:"8. 강아지는 땀배출을 발바닥으로 한다.", answer:"o"},
            { question:"9. 강아지 치석은 3개월 이상부터 생긴다.", answer:"x"},
            { question:"10. 입양 후 동물등록신고는 30일 안에 해야 한다.", answer:"o"},
            
        ];

        function initializeQuiz() {
            const quizContainer = document.getElementById('quizContainer');
            questions.forEach((question, index) => {
                const questionDiv = document.createElement('div');
                questionDiv.classList.add('quiz-container');
                questionDiv.innerHTML = `
                    <p>${question.question}</p>
                    <label for="o${index}">O</label>
                    <input type="radio" name="answer${index}" id="o${index}" value="o">

                    <label for="x${index}">X</label>
                    <input type="radio" name="answer${index}" id="x${index}" value="x">
                `;
                quizContainer.appendChild(questionDiv);
            });
        }

        function checkAnswers() {
            let totalScore = 0;

            questions.forEach((question, index) => {
                const selectedAnswer = document.querySelector(`input[name="answer${index}"]:checked`);

                if (selectedAnswer) {
                    const userAnswer = selectedAnswer.value;

                    if (userAnswer.toLowerCase() === question.answer) {
                        totalScore += 10;
                    }
                }
            });

            alert(`퀴즈가 종료되었습니다. 총 점수는 ${totalScore}점입니다.`);
            
           // const resultWindow = window.open('', '_blank', 'width=400,height=200');
           // resultWindow.document.write(`<h2>퀴즈 결과</h2><p>총 점수: ${totalScore}점</p>`);

        }

        initializeQuiz();
    </script>

<%@ include file="../footer.jsp" %>  