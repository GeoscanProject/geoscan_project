$(document).ready(function () {
    // Function to fetch student details
    function fetchstudentDetails(studentIdToUpdate) {
      // Retrieve student details via AJAX
      $.ajax({
        url: "functions/get-student-details.php",
        method: "POST",
        data: { student_id: studentIdToUpdate },
        dataType: "json",
        success: function (data) {
  
          // Determine the main availability value
          var mainAvailability =
            data.status == "Active" ? "Active" : "Inactive";
  
          // Generate and append option dynamically
          var option =
            '<option value="' +
            data.status +
            '">' +
            data.status +
            "</option>";
          if (data.status == "Active") {
            option += '<option value="Inactive">Inactive</option>';
          } else if (data.status == "Inactive") {
            option += '<option value="Active">Active</option>';
          }
          $("#edit_availability").html(option).val(mainAvailability);
          $("#edit_first_name").val(data.firstname);
          $("#edit_last_name").val(data.lastname);
          $("#edit_email").val(data.email);
          $("#edit_address").val(data.address);
          $("#edit_phone").val(data.phone);
          $("#edit_company_id").val(data.company_id);
        },
        error: function (xhr, status, error) {
          // Handle AJAX errors
          console.error(xhr.responseText);
        },
      });
    }
  
    // Edit button click event
    $(".edit-btn").click(function () {
      // Retrieve student_id from the edit button's data attribute
      studentIdToUpdate = $(this).data("student-id");
  
      fetchstudentDetails(studentIdToUpdate);
    });
  
    // Save changes button click event
    $("#saveChangesBtn").click(function () {
      var studentId = studentIdToUpdate;
      var availability = $("#edit_availability").val();
      var firstname = $("#edit_first_name").val();
      var lastname = $("#edit_last_name").val();
      var email = $("#edit_email").val();
      var address = $("#edit_address").val();
      var phone = $("#edit_phone").val();
      var company_id = $("#edit_company_id").val();
        // AJAX call to update student
        $.ajax({
          url: "functions/update-students.php",
          method: "POST",
          data: {
            student_id: studentId,
            availability: availability,
            firstname: firstname,
            lastname: lastname,
            email: email,
            address: address,
            phone: phone,
            company_id: company_id
          },
          dataType: "json",
          success: function (data) {
            // Handle success response
            if (data.msg) {
              // Display the error message in the #editMessage div
              $("#editMessage").html(
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
                window.location.href = "students.php";
              }, 1000);
            }
          },
          error: function (xhr, status, error) {
            // Handle AJAX errors
            console.error(xhr.responseText);
          },
        });

    });
  });
  