capnhaphienthi();

function showsearch2(item) {
    let l1 = document.getElementById("div2").children;
    let l2 = l1[0].children;
    let l3 = l2[0].children;
    let l4 = l3[0].children;
    let l5 = l4[1].children;
    let l6 = l5[1].children;
    if (l6[0] == item) {
        l6[1].style.display = "flex";
        l6[0].style.display = "none";
        return;
    }
}

function hiddensearch2(item) {
    let l1 = document.getElementById("div2").children;
    let l2 = l1[0].children;
    let l3 = l2[0].children;
    let l4 = l3[0].children;
    let l5 = l4[1].children;
    let l6 = l5[1].children;
    let l7 = l6[1].children;
    if (l7[0] == item) {
        l6[0].style.display = "flex";
        l6[1].style.display = "none";
        return;
    }
}

function changesort2(item) {
    let list = item.children;
    if (list[2].checked == false) {
        list[2].checked = true;
        list[0].style.display = "none";
        list[1].style.display = "block";
        item.style.marginTop = "0px";
    } else {
        list[2].checked = false;
        list[1].style.display = "none";
        list[0].style.display = "block";
        item.style.marginTop = "-5px";
    }
}

function showselect(item) {

    let index = 0;

    let list = document.getElementById("maindiv2").children;
    for (let i = 1; i < list.length; i++) {
        list2 = list[i].children;
        if (list2[5] == item) {
            index = i;
            break;
        }
    }

    if (index < 11) {
        let listItem = item.children;
        if (listItem[0].checked == true) {
            listItem[0].checked = false;
            listItem[4].style.display = "none";
        } else {
            listItem[0].checked = true;
            listItem[4].style.display = "block";
        }
    } else {


        let listItem = item.children;
        listItem[4].style.top = "-115px"
        if (listItem[0].checked == true) {
            listItem[0].checked = false;
            listItem[4].style.display = "none";
        } else {
            listItem[0].checked = true;
            listItem[4].style.display = "block";
        }
    }
}

function removekhachhang(item) {
    let listItem = document.getElementById("maindiv2").children;
    for (let i = 1; i < listItem.length; i++) {
        let list = listItem[i].children;
        let list2 = list[11].children;
        let list3 = list2[4].children;
        if (list3[1] == item) {
            list2[4].style.display = 'none';
            list2[1].checked = false;
            document.getElementById("formYesNo").style.transform = 'scaleY(1)';
            return;
        }
    }
}

function capnhaphienthi() {
    let listItem = document.getElementById("maindiv2").children;
    for (let i = 0; i < listItem.length; i++) {
        if (i <= 13) {
            listItem[i].style.display = "flex";
        } else {
            listItem[i].style.display = "none";
        }
    }
}

function xoacacmuadachon() {
    let listItem = document.getElementById("maindiv2").children;
    let array = [];
    for (let i = 1; i < listItem.length; i++) {
        let list2 = listItem[i].children;
        let list3 = list2[0].children;
        if (list3[0].checked == true) {
            array.push(listItem[i]);
        }
    }

    for (let i = 0; i < array.length; i++) {
        document.getElementById("maindiv2").removeChild(array[i]);
    }
}

function allselect() {
    let listItem = document.getElementById("maindiv2").children;
    let a = 0;
    for (let i = 1; i < listItem.length; i++) {
        let list2 = listItem[i].children;
        let list3 = list2[0].children;
        if (list3[0].checked == true) {
            a = 1;
            break;
        }
    }

    if (a == 1) {
        for (let i = 1; i < listItem.length; i++) {
            let list2 = listItem[i].children;
            let list3 = list2[0].children;
            if (list3[0].checked == true) {
                list3[0].checked = false;
            }
        }
    } else {
        for (let i = 1; i < listItem.length; i++) {
            let list2 = listItem[i].children;
            let list3 = list2[0].children;
            list3[0].checked = true;
        }
    }
}

function themdanhmuc() {
    document.getElementById("div1").style.display = "block";
    document.getElementById("div2").style.display = "none";
    document.getElementById("div3").style.display = "none";
}

function trove() {
    document.getElementById("div2").style.display = "block";
    document.getElementById("div1").style.display = "none";
    document.getElementById("div3").style.display = "none";
}

function editdanhmuc(item) {
    if (document.getElementById("div3").children.length > 0) {
        document.getElementById("div3").removeChild(document.getElementById("div3").children[0]);
    }

    let listItem = document.getElementById("maindiv2").children;
    for (let i = 1; i < listItem.length; i++) {
        let list = listItem[i].children;
        let list2 = list[11].children;
        let list3 = list2[4].children;
        if (list3[0] == item) {
            document.getElementById("div3").appendChild(list[12].cloneNode(true));
            document.getElementById("div3").style.display = "block";
            document.getElementById("div1").style.display = "none";
            document.getElementById("div2").style.display = "none";
            return;
        }
    }
}

function hiddenFormYesNo() {
    document.getElementById("formYesNo").style.transform = 'scaleY(0)';
}

function hiddenNotifiSuccess() {
    document.getElementById("notifiSuccess").style.transform = 'scaleY(0)';
}


function themmoi() {
    let l1 = document.getElementById("div1").children[0].children;
    let l2 = l1[1].children;

    let l3 = l2[2].children;
    let nameHang = l3[1].value;

    let array = [];
    let l4 = l2[5].children;
    for (let i = 0; i < l4.length; i++) {
        console.log(l4[i]);
    }

    console.log(nameHang);
    console.log(array)

}

function changeSelect(item) {
    let l = item.children;
    let check = false;
    for (let i = 0; i < l.length; i++) {
        if (l[i].selected == true) {
            if (i == 0) {
                check = true;
            }
        }
    }

    let list1 = document.getElementById("div1").children[0].children[1].children;
    if (!check) {
        list1[3].classList.remove("hidden");
    } else {
        if (!list1[3].classList.contains("hidden"))
            list1[3].classList.add("hidden");
    }

}


function changeSelect2(item) {
    let l = item.children;
    let check = false;
    for (let i = 0; i < l.length; i++) {
        if (l[i].selected == true) {
            if (i == 0) {
                check = true;
            }
        }
    }

    let list1 = document.getElementById("div3").children[0].children[1].children;
    if (!check) {
        list1[3].classList.remove("hidden");
    } else {
        if (!list1[3].classList.contains("hidden"))
            list1[3].classList.add("hidden");
    }

}


function showselectgopage(item) {

    let listItem = document.getElementById("leftnextpage").children;

    let listUl = listItem[2].children;

    for (let i = 0; i < listUl.length; i++) {

        if (listUl[i] == item) {

            let l = listUl[i].children[0].children;

            if (l[0].checked == true) {
                listUl[i].children[0].style.display = "none";
                l[0].checked = false;
            } else {
                listUl[i].children[0].style.display = "flex";
                l[1].click();
                l[0].checked = true;
            }

        }

    }

}

function gopagefast(item) {

    let listItem = document.getElementById("leftnextpage").children;

    let listUl = listItem[2].children;

    for (let i = 0; i < listUl.length; i++) {

        let l = listUl[i].children[0].children;

        if (l[2] == item) {
            let value = l1.value;
            if (!isNaN(value)) {
                document.getElementById("numberOfPage").value = parseInt(value);
                document.getElementById("action").value = "nextPage";
                document.getElementById("mainForm").submit();
            }

        }

    }

}

function changeFilter() {
    document.getElementById("action").value = "changeFilter";
    document.getElementById("mainForm").submit();
}

function changesort() {
    document.getElementById("action").value = "sort";
    document.getElementById("mainForm").submit();
}

function loadPage() {
    document.getElementById("action").value = "load";
    document.getElementById("mainForm").submit();
}

function prePage(nowPage) {
    let n = parseInt(nowPage);
    if (n > 1) {
        document.getElementById("numberOfPage").value = parseInt(nowPage) - 1;
        document.getElementById("action").value = "nextPage";
        document.getElementById("mainForm").submit();
    }
}

function nextPage(nowPage, maximumPage, item) {
    let n = parseInt(nowPage);
    let m = parseInt(maximumPage);
    if (n < m) {
        document.getElementById("numberOfPage").value = n + 1;
        document.getElementById("action").value = "nextPage";
        document.getElementById("mainForm").submit();
    }
}

function pageNavigation(nowPage) {
    document.getElementById("numberOfPage").value = parseInt(nowPage);
    document.getElementById("action").value = "nextPage";
    document.getElementById("mainForm").submit();
}

const node = document.getElementsByClassName("searchsubmit")[0];
node.addEventListener("keyup", function (event) {
    if (event.key == "Enter" || event.keyCode == 13) {
        document.getElementById("action").value = "search";
        document.getElementById("mainForm").submit();
    }
});
