function transload() {
    sessionStorage.myvar = 2;
    window.location = "transactions";
}
function homeload() {
    sessionStorage.myvar = 1;
    window.location = "mypage";
}

function atrans() {
    sessionStorage.myvar = 1;
    window.location = "~/web/admin/Transcation.aspx";
}

function aprofle() {
    sessionStorage.myvar = 1;
    window.location = "~/web/admin/Profile.aspx";
}

function trans() {
    var read = sessionStorage.myvar;
    if (read === 2) {
        transaction.className = "nav-item active";
        home.className = "nav-item";
    }
    else if (read === 1) {
        transaction.className = "nav-item";
        home.className = "nav-item active";
    }

}