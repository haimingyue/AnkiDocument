# 这里是我做过的思维导图

历史思维导图：https://pan.baidu.com/s/1VnVw3brvIMBUIOmC1NcpCg?pwd=qyvt 提取码: qyvt 

Effective Notetaking书籍资源：https://pan.baidu.com/s/1kd5It9PtoouiTJpcoQvT8Q?pwd=tlpy


网站维护中，以后会方便一点，可以直接下载。


---
title: Bilibili 视频资源
---

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
