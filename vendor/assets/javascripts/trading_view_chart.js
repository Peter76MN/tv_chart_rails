//= require charting_library/charting_library.min
//= require charting_library/datafeed/udf/datafeed

function showTradingViewChart(params)
{
  var default_params = {
    fullscreen: true,
    symbol: 'AA',
    interval: 'D',
    container_id: "tv_chart_container",
    //	BEWARE: no trailing slash is expected in feed URL
    library_path: "/assets/charting_library/",
    locale: "en",
    //	Regression Trend-related functionality is not implemented yet, so it's hidden for a while
    drawings_access: { type: 'black', tools: [ { name: "Regression Trend" } ] },
    disabled_features: ["use_localstorage_for_settings"],
    charts_storage_url: 'http://saveload.tradingview.com',
    client_id: 'tradingview.com',
    user_id: 'public_user_id'
  };
  var chart_params = $.extend(default_params, params)
  var widget = new TradingView.widget(chart_params);
}
