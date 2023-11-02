import os
from jinja2.nativetypes import NativeEnvironment

html = """
<!DOCTYPE html>
<html>
<head>
  <title>论文展示</title>
  <style>
    .page {
      display: none;
    }
    .active {
      display: block;
    }
  </style>
</head>
<body>
  <div id="pages">
    <!-- 这里将用于显示每一页的容器 -->
  </div>
  <button id="prevBtn">上一页</button>
  <button id="nextBtn">下一页</button>

  <script>
    // 定义SVG文件路径数组
    var svgPaths = [
      {% for item in data %}"{{ item }}",{% endfor %}
    ];

    var currentPage = 0; // 当前页码

    // 加载并显示当前页的SVG
    function loadPage() {
      var pagesContainer = document.getElementById('pages');
      pagesContainer.innerHTML = ''; // 清空容器

      var svgPath = svgPaths[currentPage];
      var svgElement = document.createElement('img');
      svgElement.setAttribute('src', svgPath);
      svgElement.onload = function() {
        svgElement.classList.add('active');
      };
      pagesContainer.appendChild(svgElement);
    }

    // 显示上一页
    function showPrevPage() {
      if (currentPage > 0) {
        currentPage--;
        loadPage();
      }
    }

    // 显示下一页
    function showNextPage() {
      if (currentPage < svgPaths.length - 1) {
        currentPage++;
        loadPage();
      }
    }

    // 绑定按钮点击事件
    var prevBtn = document.getElementById('prevBtn');
    prevBtn.addEventListener('click', showPrevPage);

    var nextBtn = document.getElementById('nextBtn');
    nextBtn.addEventListener('click', showNextPage);

    // 初始化加载第一页
    loadPage();
  </script>
</body>
</html>
"""

env = NativeEnvironment()
t = env.from_string(html)
svg_paths = sorted(os.listdir("preview"), key=lambda x: int(x.split(".")[0]))
result = t.render(data=svg_paths)

with open("preview/index.html", "w") as f:
    f.write(result)
