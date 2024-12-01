$(document).ready(function () {
    $("#confirmAdjustment").click(function () {
        var reason = $("#reason").val();
        var files = $("#file-upload")[0].files; // Fetch the files
        var dates = $("#dates").val(); // Fetch the hidden dates
        var student_id = studentId; // Use the global JS variable for student ID

        if (reason != "") {
            var formData = new FormData();
            formData.append("reason", reason);
            formData.append("dates", dates);
            formData.append("student_id", student_id);

            // Append files to FormData if available
            for (var i = 0; i < files.length; i++) {
                formData.append("files[]", files[i]);
            }

            $.ajax({
                url: "functions/send-entry.php",
                method: "POST",
                data: formData,
                dataType: "json",
                processData: false, // Important for file uploads
                contentType: false, // Important for file uploads
                success: function (data) {
                    if (data.msg) {
                        $("#message").html(
                            '<div class="alert alert-danger" role="alert">' + data.msg + "</div>"
                        );
                    } else if (data.success) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: data.success,
                            confirmButtonText: 'OK'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = "settings.php";
                            }
                        });
                    }
                },
                error: function (xhr, status, error) {
                    console.error(xhr.responseText);
                },
            });
        } else {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Kindly provide a reason.',
                confirmButtonText: 'OK'
            });
        }
    });
});
