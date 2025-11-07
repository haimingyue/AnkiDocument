---
title: 我的思维导图与视频资源
---

# 这里是我做过的思维导图

- **历史思维导图**：[点击下载](https://pan.baidu.com/s/1VnVw3brvIMBUIOmC1NcpCg?pwd=qyvt) 提取码: qyvt
- **Effective Notetaking 书籍资源**：[点击下载](https://pan.baidu.com/s/1kd5It9PtoouiTJpcoQvT8Q?pwd=tlpy)

> 网站维护中，未来将提供更方便的下载方式。

---

<template>
  <div class="video-container">
    <div class="video-item" v-for="(video, index) in videos" :key="index">
      <h3 class="video-title">{{ video.title }}</h3>
      <iframe
        :src="video.link"
        width="100%"
        height="400"
        frameborder="0"
        scrolling="no"
        allowfullscreen="true"
      ></iframe>
      <p>{{ video.description }}</p>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

// 定义视频数据
const videos = ref([
  {
    title: '从来没有人教你怎么做笔记对吗？今天是一个好的开始 ｜ Effective Notetaking',
    link: 'https://player.bilibili.com/player.html?bvid=BV1ZD2PBoEYV',
    description: '这段视频讲解了如何做好笔记，帮助你在学习中更加高效。',
  },
  {
    title: '在学习中，怎样避免自我安慰和自我欺骗 ｜ Make it Stick',
    link: 'https://player.bilibili.com/player.html?bvid=BV1mP17BkEi5',
    description: '视频中介绍了学习过程中的常见陷阱，并提出了避免自我安慰和自我欺骗的策略。',
  },
  // 你可以继续添加更多的视频数据...
])
</script>

<style scoped>
.video-container {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.video-item {
  text-align: center;
}

.video-title {
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 10px;
}

iframe {
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

p {
  margin-top: 10px;
  font-size: 14px;
  color: #555;
}
</style>
