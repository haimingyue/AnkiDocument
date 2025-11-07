# 这里是我做过的思维导图

历史思维导图：https://pan.baidu.com/s/1VnVw3brvIMBUIOmC1NcpCg?pwd=qyvt 提取码: qyvt 

Effective Notetaking书籍资源：https://pan.baidu.com/s/1kd5It9PtoouiTJpcoQvT8Q?pwd=tlpy


网站维护中，以后会方便一点，可以直接下载。


---
title: Bilibili 视频资源
---

# Bilibili 视频资源

在这里，我整理了一些与VitePress相关的教学视频，希望能对你有所帮助！

## 视频 1：Vue在Markdown中的使用

[点击观看](https://www.bilibili.com/video/BV1ZD2PBoEYV/?vd_source=cc8b5013d5350bcc125428d714a405e4)

这段视频讲解了如何在Markdown中使用Vue进行动态模板、组件引入等高级功能，适合希望深入了解VitePress和Vue集成的开发者。

## 视频 2：VitePress 实战应用

[点击观看](https://www.bilibili.com/video/BV1mP17BkEi5/?vd_source=cc8b5013d5350bcc125428d714a405e4)

这段视频带你走一遍VitePress的实战应用，从基础的Markdown语法到动态页面渲染，帮助你更好地理解VitePress的实际运用。

## 视频展示

### 使用 Vue 组件和 Flex 布局显示视频

<div class="video-container">
  <div class="video-item" v-for="(video, index) in videos" :key="index">
    <div class="cover" :style="{ backgroundImage: `url(${video.cover})` }">
      <a :href="video.link" target="_blank">
        <button class="play-button">播放</button>
      </a>
    </div>
    <div class="video-title">{{ video.title }}</div>
  </div>
</div>

<script setup>
import { ref } from 'vue'

// 定义视频数据
const videos = ref([
  {
    title: 'Vue在Markdown中的使用',
    link: 'https://www.bilibili.com/video/BV1ZD2PBoEYV/?vd_source=cc8b5013d5350bcc125428d714a405e4',
    cover: 'https://www.example.com/cover1.jpg', // 视频封面图片链接
  },
  {
    title: 'VitePress 实战应用',
    link: 'https://www.bilibili.com/video/BV1mP17BkEi5/?vd_source=cc8b5013d5350bcc125428d714a405e4',
    cover: 'https://www.example.com/cover2.jpg', // 视频封面图片链接
  },
  // 添加更多视频...
])
</script>

<style scoped>
.video-container {
  display: flex;
  flex-wrap: wrap;
  gap: 20px; /* 视频之间的间距 */
  justify-content: space-between;
}

.video-item {
  width: 250px;
  text-align: center;
}

.cover {
  width: 100%;
  height: 150px; /* 可以调整封面的高度 */
  background-size: cover;
  background-position: center;
  position: relative;
  border-radius: 8px;
}

.play-button {
  position: absolute;
  bottom: 10px;
  left: 50%;
  transform: translateX(-50%);
  background-color: rgba(0, 0, 0, 0.5);
  color: white;
  padding: 5px 10px;
  border: none;
  border-radius: 5px;
}

.video-title {
  margin-top: 10px;
  font-weight: bold;
}
</style>
