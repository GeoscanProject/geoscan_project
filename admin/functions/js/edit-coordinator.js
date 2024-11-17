$(document).ready(function () {
    // Function to fetch coordinator details
    function fetchcoordinatorDetails(coordinatorIdToUpdate) {
      // Retrieve coordinator details via AJAX
      $.ajax({
        url: "functions/get-coordinator-details.php",
        method: "POST",
        data: { coordinator_id: coordinatorIdToUpdate },
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
        },
        error: function (xhr, status, error) {
          // Handle AJAX errors
          console.error(xhr.responseText);
        },
      });
    }
  
    // Edit button click event
    $(".edit-btn").click(function () {
      // Retrieve coordinator_id from the edit button's data attribute
      coordinatorIdToUpdate = $(this).data("coordinator-id");
  
      fetchcoordinatorDetails(coordinatorIdToUpdate);
    });
  
    // Save changes button click event
    $("#saveChangesBtn").click(function () {
      var coordinatorId = coordinatorIdToUpdate;
      var availability = $("#edit_availability").val();
  
        // AJAX call to update coordinator
        $.ajax({
          url: "functions/update-coordinators.php",
          method: "POST",
          data: {
            coordinator_id: coordinatorId,
            availability: availability
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
                window.location.href = "coordinators.php";
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
  