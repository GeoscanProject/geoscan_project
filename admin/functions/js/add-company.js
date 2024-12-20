$(document).ready(function () {
    $("#AddCompany").click(function () {
      var company_name = $("#company_name").val();
      var email = $("#email").val();
      var address = $("#address").val();
      var contact_no = $("#contact_no").val();
  
      var coordinator_id = coordinator_id;
  
      // Make sure all fields are filled
      if (company_name != "" || email != "" || address != "" || contact_no != "" ) {
        $.ajax({
          url: "functions/add-company.php",
          method: "POST",
          data: {
            company_name: company_name,
            email: email,
            address: address,
            contact_no: contact_no
          },
          dataType: "json",
          success: function (data) {
            if (data.msg) {
              $("#message").html(
                '<div class="alert alert-danger" role="alert">' +
                  data.msg +
                  "</div>"
              );
            } else if (data.success) {
              Toastify({
                text: data.success,
                backgroundColor: "rgba(31, 166, 49, 0.8)",
              }).showToast();
  
              setTimeout(function () {
                window.location.href = "companies.php";
              }, 1000);
            }
          },
          error: function (xhr, status, error) {
            console.error(xhr.responseText);
          },
        });
      } else {
        $("#message").html(
          '<div class="alert alert-danger" role="alert">All fields are required</div>'
        );
      }
    });
  });
  