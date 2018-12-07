// 依赖于jquery

/**
 * 通用Get方法
 * @param url 后端接口地址
 * @param data 传送的数据
 * @param successCallback 成功回调函数（可选）
 * @param errorCallBack 失败回调函数（可选）
 */
function ajaxGet(url, data, successCallback, errorCallback) {
    $.ajax({
        type: 'GET',
        url: url,
        data: data,
        cache: false,
        success: successCallback,
        error: errorCallback
    })
}

/**
 * 通用POST方法
 * @param url 后端接口地址
 * @param data 传送的数据
 * @param successCallback 成功回调函数（可选）
 * @param errorCallback 失败回调函数（可选）
 */
function ajaxPost(url, data, successCallback, errorCallback) {
    $.ajax({
        type: 'POST',
        url: url,
        data: data,
        cache: false,
        success: successCallback,
        error: errorCallback
    })
}

/**
 * 通用POST方法，data会被自动转化为json格式的字符串
 * @param url 后端接口地址
 * @param data 传送的数据
 * @param successCallback 成功回调函数（可选）
 * @param errorCallback 失败回调函数（可选）
 */
function ajaxPostJSON(url, data, successCallback, errorCallback) {
    $.ajax({
        type: 'POST',
        url: url,
        data: JSON.stringify(data),
        cache: false,
        success: successCallback,
        error: errorCallback,
        dataType: 'json',
        contentType: 'application/json;charset=utf-8'
    })
}

/**
 * 格式化时间戳，返回格式 YYYY-MM-DD HH:mm:ss
 * @param timestamp
 */
function formatTimestamp(timestamp) {
    var date = new Date(timestamp * 1000);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
    var Y = date.getFullYear() + '-';
    var M = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
    var D = date.getDate() + ' ';
    var h = date.getHours() + ':';
    var m = date.getMinutes() + ':';
    var s = date.getSeconds();
    return Y + M + D + h + m + s;
}