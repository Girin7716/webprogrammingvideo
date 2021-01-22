<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ page import= "dao.memberDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>ȸ������</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/business-frontpage.css" rel="stylesheet">
</head>
<body>

   <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
         <a class="navbar-brand" href="">MBTIng</a>
      </div>
   </nav>

   <!-- Header -->
   <header class="bg-danger py-5 mb-5" style="opacity: 0.6">
      <div class="container h-100">
         <div class="row h-100 align-items-center">
            <div class="col-lg-12">
               <h1 class="display-4 text-white mt-5 mb-2">ȸ������</h1>
               <p class="lead mb-5 text-white-50">���񽺸� �̿��ϱ� ���� ȸ������ �Դϴ�.<br>
               ��Ȯ�� ��Ī ���񽺸� ������ �� �ֵ��� ��Ȯ�ϰ� �Է��Ͽ� �ּ���.</p>               
            </div>
         </div>
      </div>
   </header>

   <!-- Page Content -->
   <div class="container">

      <div class="row">
         <div class="col-md-8 mb-5">
            <h1>Sign Up</h1>
            <hr>
            <form method="post" action="signupcheck.jsp">
               <!-- �̸� -->
               <div class="form-group">
                  Name
                  <input type="text" class="form-control" name="Name" placeholder="�����">
               </div>
               <!-- id -->
               <div class="form-group">
                  ID
                  <input type="text" class="form-control" name="ID" placeholder="nun2580">
               </div>
               <!-- ��й�ȣ -->
               <div class="form-group">
                  Password
                  <input type="password" class="form-control" name="Password">
               </div>
               <!-- īī���� ����ó -->
               <div class="form-group">
                  KaKaTalk Contact
                  <input type="text" class="form-control" name="Kakao">
               </div>
               
               <!-- ���� -->
               <div class="form-group">
                  Sex <p> 
                  <input type="radio"value="����" name="Sex" checked>
                  <label for="exampleInputMan">����</label>
                  <input type="radio"value="����" name="Sex">         
                  <label for="exampleInputWoman">����</label>
               </div>
               <!-- ���� -->
               <div class="form-group">
                  Age
                  <input type="number" class="form-control" name="Age" min="20" max="50">
               </div>
               <!-- ���� -->
               <div class="form-group">
                  Area 
                  <select name="Area" class="form-control">
                     <option value="Seoul">����</option>
                     <option value="Busan">�λ�</option>
                     <option value="Daegu" selected="selected">�뱸</option>
                     <option value="Daejeon">����</option>
                     <option value="Incheon">��õ</option>
                     <option value="Ulsan">���</option>
                     <option value="Gwangju">����</option>
                     <option value="Sekpmg">����</option>
                     <option value="Jeju">����</option>
                     <option value="Gyeonggi">��⵵</option>
                     <option value="Gangwon">������</option>
                     <option value="Chungcheongbukdo">��û�ϵ�</option>
                     <option value="Chungcheongnamdo">��û����</option>
                     <option value="Gyeongsangbukdo">���ϵ�</option>
                     <option value="Gyeongsangnamdo">��󳲵�</option>
                     <option value="Jeollabukdo">����ϵ�</option>
                     <option value="Jeollanamdo">���󳲵�</option>
                  </select>
               </div>
               
               <!-- MBTI -->
               <div class="form-group">
                  What is your MBTI? 
                  
                  <select name="MBTI" class="form-control">
                     <option value="ISTJ">ISTJ</option>
                     <option value="ISFJ">ISFJ</option>
                     <option value="INFJ">INFJ</option>
                     <option value="INTJ">INTJ</option>
                     <option value="ISTP">ISTP</option>
                     <option value="ISFP">ISFP</option>
                     <option value="INFP" selected="selected">INFP</option>
                     <option value="INTP">INTP</option>
                     <option value="ESTP">ESTP</option>
                     <option value="ESFP">ESFP</option>
                     <option value="ENFP">ENFP</option>
                     <option value="ENTP">ENTP</option>
                     <option value="ESTJ">ESTJ</option>
                     <option value="ESFJ">ESFJ</option>
                     <option value="ENFJ">ENFJ</option>
                     <option value="ENTJ">ENTJ</option>
                  </select>
                  
                  <!-- MBTI ����Ʈ ���� -->
                  <a href="https://www.16personalities.com/ko/" target="_blank">MBTI �˻��Ϸ� ����</a>
               
               </div>
               <!-- �� �� �ڱ�Ұ� -->
               <div class="form-group">
                  Self introduction
                  <input type="text" class="form-control" name="Introduce" placeholder="���л��Դϴ�~" style="width:730px;height:100px;">
               </div>
               <button onclick="location='signin.jsp'" type="submit" class="btn btn-danger">ȸ������</button>
            </form>
         </div>

      </div>
      <!-- /.row -->


      <!-- /.row -->

   </div>
   <!-- /.container -->

   <!-- Footer -->
   <footer class="py-5 bg-dark">
      <div class="container">
         <p class="m-0 text-center text-white">Copyright &copy;
            MBTIng ��ǥ �����</p>
      </div>
      <!-- /.container -->
   </footer>

   <!-- Bootstrap core JavaScript -->
   <script src="vendor/jquery/jquery.min.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>
</html>