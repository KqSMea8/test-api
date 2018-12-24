# command api for weixin

## implement a weinxin command
* setp 3: implement your weixin command logic in views.py. like this:
```
    def test(request):
        send_weixin(u'测试微信指令, 我很帅，对不对？', ['test'])
        ip, args = get_call_sys_ip_and_args(request)
        return json_response(
            {'result': True,
             'data': args,
             'message': '',
             'code':'00'})
```
* step 4: restart test-api.

