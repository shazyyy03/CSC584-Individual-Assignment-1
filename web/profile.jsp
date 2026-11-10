<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>

<%!
    public String escapeHtml(Object value) {

        if (value == null) {
            return "";
        }

        return value.toString()
                .replace("&", "&amp;")
                .replace("<", "&lt;")
                .replace(">", "&gt;")
                .replace("\"", "&quot;")
                .replace("'", "&#39;");
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>My Personal Profile</title>

    <link rel="stylesheet"
          href="css/style.css?v=70">
</head>

<body>

    <main class="result-page">

        <section class="result-layout">

            <!-- Purple left side -->
            <div class="result-welcome">

                <div class="result-welcome-content">

                    <h1>Profile Created!</h1>

                    <p>
                        Your personal information has been
                        submitted successfully.
                    </p>

                </div>

            </div>

            <!-- White right side -->
            <div class="result-panel">

                <div class="result-content">

                    <h2>My Personal Profile</h2>

                    <p class="result-subtitle">
                        Personal information
                    </p>

                    <div class="result-item">
                        <strong>Name</strong>

                        <span>
                            <%= escapeHtml(
                                request.getAttribute("name")) %>
                        </span>
                    </div>

                    <div class="result-item">
                        <strong>Student ID</strong>

                        <span>
                            <%= escapeHtml(
                                request.getAttribute("studentId")) %>
                        </span>
                    </div>

                    <div class="result-item">
                        <strong>Program</strong>

                        <span>
                            <%= escapeHtml(
                                request.getAttribute("programme")) %>
                        </span>
                    </div>

                    <div class="result-item">
                        <strong>Email</strong>

                        <span>
                            <%= escapeHtml(
                                request.getAttribute("email")) %>
                        </span>
                    </div>

                    <div class="result-item">
                        <strong>Hobbies</strong>

                        <span>
                            <%= escapeHtml(
                                request.getAttribute("hobbies")) %>
                        </span>
                    </div>

                    <div class="result-item bio-result">
                        <strong>Bio</strong>

                        <span><%= escapeHtml(
                            request.getAttribute(
                                "introduction")) %></span>
                    </div>

                    <a class="result-back-button"
                       href="index.html">
                        BACK TO FORM
                    </a>

                </div>

            </div>

        </section>

    </main>

</body>

</html>