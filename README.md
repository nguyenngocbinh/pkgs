
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Hướng dẫn tạo package

<!-- badges: start -->

<!-- badges: end -->

### Cài 1 số packages hỗ trợ

``` r
#install.packages(c("devtools", "roxygen2", "usethis", "available"))
library(devtools)
library(roxygen2)
library(usethis)
```

### Kiểm tra xem tên package đã có trên cran chưa

Nếu có ý định upload package này lên cran thì có thể dùng hàm này để
kiểm tra xem package đã có trên cran hay chưa.

``` r
library(available)
available("git.manual")
```

### Tạo package

Tạo package và thêm git vào.

``` r

usethis::create_package("~/Desktop/git.manual")
use_git()
use_github()
```

### Chỉnh sửa DESCRIPTION

Có thể chỉnh sửa trực tiếp bằng tay (làm cách này khi mất code thì phải
làm đi làm lại). Nên trong phần này mình sẽ chỉnh sửa file DESCRIPTION
sử dụng package **desc**

``` r
library(desc)
```

  - Xóa DESCRIPTION mặc định

<!-- end list -->

``` r

unlink("DESCRIPTION")
```

  - Tạo mới và clean file DESCRIPTION

Do package sử dụng object R6, nên có thể dùng hàm hoặc toán tử $ để
chỉnh sửa các thành phần của object

``` r

my_desc <- description$new("!new")
```

  - Đặt tên package của bạn

<!-- end list -->

``` r

my_desc$set("Package", "git.manual")
```

  - Tên của tác giả

<!-- end list -->

``` r

my_desc$set("Authors@R", "person('Ngoc Binh', 'Nguyen', email = 'nguyenngocbinhneu@gmail.com', role = c('cre', 'aut'))")
```

  - Xóa 1 số trường liên quan đến tác giả hoặc người duy trì

<!-- end list -->

``` r

my_desc$del("Maintainer")
```

  - Đặt phiên bản

<!-- end list -->

``` r

my_desc$set_version("0.0.0.9000")
```

  - Title của package

<!-- end list -->

``` r

my_desc$set(Title = "HOW TO USING GIT")
```

  - Mô tả về package

<!-- end list -->

``` r

my_desc$set(Description = "A long description of this super package I'm working on.")
```

  - urls

<!-- end list -->

``` r

my_desc$set("URL", "http://this")
my_desc$set("BugReports", "http://that")
```

  - Tạo file DESCRIPTION mới

<!-- end list -->

``` r

my_desc$write(file = "DESCRIPTION")
```

### Tạo file license

Sau khi đã chỉnh sửa file DESCRIPTION ở trên. Phần này sẽ tạo ra file
license. Ví dụ với MIT license.

``` r

# options(usethis.full_name = "Nguyen Ngoc Binh")
use_mit_license("Nguyen Ngoc Binh")
use_gpl3_license()
use_apl2_license()
use_cc0_license()
```

### Thêm readme

``` r

use_readme_rmd()
```

### Thêm raw data

**use\_data\_raw()** tạo ra folder data-raw. Trong này sẽ chứa code để
setup raw data.

``` r

use_data_raw()
```

### Thêm file chứa các nhóm hàm

**user\_r()** tạo ra 1 file .R trong folder /R/

``` r

use_r("sfa")
```

### testthat

``` r

use_testthat()
use_test("function_name")
```

### Thêm packages dependencies

``` r

use_package("dplyr")
use_package("purrr")
```

### Sử dụng file new để cập nhật những thay đổi

``` r

use_news_md()
```

### Thêm hướng dẫn sử dụng/ báo cáo đầu ra

``` r

use_vignette("git.manual", "Simulate git")
```

### Chỉnh sửa version

``` r

use_version()
```

### Tạo các help file

Đây là những file .md được lưu trong folder **man/**

``` r

use_roxygen_md()
```

### Format lại file DESCRIPTION

``` r
use_tidy_description()
```

### Tham khảo thêm

``` r
use_travis()
use_appveyor()
use_coverage(type = c("codecov"))
use_spell_check()
```
