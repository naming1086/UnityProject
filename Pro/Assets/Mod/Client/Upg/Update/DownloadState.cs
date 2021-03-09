//*****************************************************************************
// Copyright (C) 2018, 金七情(Loong) jinqiqing@qq.com
// Created by Loong on 2018/7/12 0:14:31
//*****************************************************************************



using System;
using System.Collections;
using System.Collections.Generic;

namespace Loong.Game
{
    /// <summary>
    ///下载状态
    /// </summary>
    public enum DownloadState
    {
        /// <summary>
        /// 无
        /// </summary>
        None,
        /// <summary>
        /// 运行中
        /// </summary>
        Run,

        /// <summary>
        /// 停止
        /// </summary>
        Stop,

        /// <summary>
        /// 成功
        /// </summary>
        Suc,

        /// <summary>
        /// 失败
        /// </summary>
        Fail,
    }
}