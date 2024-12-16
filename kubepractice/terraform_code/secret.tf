resource "kubernetes_secret" "secret_timeapp_tls" {
  metadata {
    name = "secret-timeapp-tls" 
  }

  data = {
    "tls.crt" = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZLVENDQXhHZ0F3SUJBZ0lVRzNQSnM0Vk9hYStUenhoVjZWSXJUOFRhNHBNd0RRWUpLb1pJaHZjTkFRRUwKQlFBd0pERWlNQ0FHQTFVRUF3d1pZV1JwZEhsaFlYQndjR1Z5Wm1WamRDNTBjbUZwYm1sdVp6QWVGdzB5TkRFeApNall4TWpBeE1URmFGdzB5TlRFeE1qWXhNakF4TVRGYU1DUXhJakFnQmdOVkJBTU1HV0ZrYVhSNVlXRndjSEJsCmNtWmxZM1F1ZEhKaGFXNXBibWN3Z2dJaU1BMEdDU3FHU0liM0RRRUJBUVVBQTRJQ0R3QXdnZ0lLQW9JQ0FRQ0IKQVhjOS9TdVh2ZzZHM0lRYm1VM3ZtaHcwR3F6cDYyUzYrMFVTNERRM2taWGpGd0dCOUJqVVlaWGpDNzZCRjd5aQoxY1p5M3JzVlJjU0E0S29LOWsrY0M0c1c5WWU0MXNuWXlLU0hNYVcrL0sxQTIwTzcwSmorbTE0NDhIaG1IaEJmCldTcEpDZTgyTWxNNGJZcFYxcE9UNCtwQW1JNCtxSUthZlZ5UHBUQWxvKzRpWUFIc0tmVlFDeThOOWo3SmVucGkKSjZTOSs5WWgvbTVwcDhmLzBFUUxvaENEbUdzd1Qrck1TSHpDM2Z4cnhRQ0dtdU9ick5STS9iVzVXOFgwN0Vobgo0S1BROUN4NDhOMHJTa0plM0luVXZmSU4wUVpCY0VDSTY3bVEwSS9hcmJzbTFKaHBNYnpYd2d0TlUxc3hQT2lRClcyc25LVWhYQU9vT3g3RXhhcHlOQXYzWVJObnl6bSs5Vm8vRUVtNUlDNVhCQ1RrWnhEZHFUcXdIS2Y5RXVzanAKNXl4MXhNQ1o1blovc2hyeTYrUmFIZ25Ha0JQSUUxT2tKZnJRWEpBenBncHFJTk55bW9vR256Qkl5UFFrdDVUKwo0bU5LWVdxRUlQeVdWcFR0cG1DM3pyMTUrbGlVcWJuV1JSeVFXVnZCWmNEcEJXYXZzWi9IbUFmdHB6Y3RLRUVQCjBHVjhzTy9nNlNac0JmOHl3aVF3TUFYNC93OTdOZkZHeGEyK0tGWHZrSi9qa3VkazdXSEs0UU9ubnVsU2xCQ1YKdEN3UFFSbUw4NCtxTXhyWFNxL2lzTW41eEw3b3NsRS9sS1MxK2FPUklQSGl1ZkM3OWdHYTc3ckdLZldwQVo2MgpqRVp5RERDSHF5ODQ5Q0VjL0kzTGltdVVIQ0V4MTJQRG51ZmZZYmxoT1FJREFRQUJvMU13VVRBZEJnTlZIUTRFCkZnUVVLNHlXdmp5Q2Erd2RKWTF6THZWVFJOR2Zub2d3SHdZRFZSMGpCQmd3Rm9BVUs0eVd2anlDYSt3ZEpZMXoKTHZWVFJOR2Zub2d3RHdZRFZSMFRBUUgvQkFVd0F3RUIvekFOQmdrcWhraUc5dzBCQVFzRkFBT0NBZ0VBR1lCRgp2RWZDeDZ2UDhvNXJtZ3RjSVVLN3BZVE0yWUpuOTB3MFZkdEdpZW9ac0ZUMmVUUlFGVVhuNkE1cnQrREwzRmRSCkVwS1FQMFVUdzVleU5NSE9JRnloNVNZalgyM3piVnlNUlZmLzZVd05BakdnTmxwM21DZEFkVDI4RDNDU21TeXYKcS9tWGY2NjUrS2VPbzBwZGpINTF5bXpOWUg3czhhZTJZZUhPYk84cEtrbXV1SVhWTVdlaTAxRUNnSEJjdDN5bApCa092NE9Wc1VsNWordVJycys1dVJRSHZ5eFhMVUdPYXhuY1JjSDRtOVljR0tWOEJpNlBQaHVDTGlSU1pmeEJOCldxL2RydWJobTRIbU1TZ3ZQYm5FM2c5eGhlOUF6OEVyMG9RMkxkMHZlSDZWRENYdDdjM3JYT2FYUGVONlk5ODcKKzNmUE5NSTlpaDRzZkhxNmJRVEpMQW1hYWVWTmhxZVV5L1NPemNuNWJiOGlDSTlmQ2pNbXBkci9OS3Y4K1BlcgpsUzhWOGlGc28rc01oZlBKck1ENU93K3hHTElSc1NoY0FpQ2ZFRDUrNUJWejJJNC96bm9ENm5CQlRTZG8ybXRHCi9Ud0paZ2dUalUrN2hQZHZtczNLeUNZT2lYYUtOOFhvem1rWWJuOTIwQkZQbGdvL28wWnRaWGtMQlg1Wnk4c1IKWmtGQUVsaG9UQVRxanAvcFpqWkE4NDJYdGcrRmlMRFB6SlZDd2Jpb1pubzZSR2xjWStoNnN1Tll5b3hNaWVZLwpycjdpODFubk5VYVF5dmRVOGpHRFlmQndPc2x6Y2h5cFFsa0JOM3VreWtDaGVBMmNxRURwU1FWdmlWN1ZiMW1kClpaZFJLczB5NkZXa1hwVmxtNm1xM2ozSWJQY1RDVGZwYnVrTnF3ND0KLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLQo="

    "tls.key" = "LS0tLS1CRUdJTiBQUklWQVRFIEtFWS0tLS0tCk1JSUpRUUlCQURBTkJna3Foa2lHOXcwQkFRRUZBQVNDQ1Nzd2dna25BZ0VBQW9JQ0FRQ0JBWGM5L1N1WHZnNkcKM0lRYm1VM3ZtaHcwR3F6cDYyUzYrMFVTNERRM2taWGpGd0dCOUJqVVlaWGpDNzZCRjd5aTFjWnkzcnNWUmNTQQo0S29LOWsrY0M0c1c5WWU0MXNuWXlLU0hNYVcrL0sxQTIwTzcwSmorbTE0NDhIaG1IaEJmV1NwSkNlODJNbE00CmJZcFYxcE9UNCtwQW1JNCtxSUthZlZ5UHBUQWxvKzRpWUFIc0tmVlFDeThOOWo3SmVucGlKNlM5KzlZaC9tNXAKcDhmLzBFUUxvaENEbUdzd1Qrck1TSHpDM2Z4cnhRQ0dtdU9ick5STS9iVzVXOFgwN0VobjRLUFE5Q3g0OE4wcgpTa0plM0luVXZmSU4wUVpCY0VDSTY3bVEwSS9hcmJzbTFKaHBNYnpYd2d0TlUxc3hQT2lRVzJzbktVaFhBT29PCng3RXhhcHlOQXYzWVJObnl6bSs5Vm8vRUVtNUlDNVhCQ1RrWnhEZHFUcXdIS2Y5RXVzanA1eXgxeE1DWjVuWi8Kc2hyeTYrUmFIZ25Ha0JQSUUxT2tKZnJRWEpBenBncHFJTk55bW9vR256Qkl5UFFrdDVUKzRtTktZV3FFSVB5VwpWcFR0cG1DM3pyMTUrbGlVcWJuV1JSeVFXVnZCWmNEcEJXYXZzWi9IbUFmdHB6Y3RLRUVQMEdWOHNPL2c2U1pzCkJmOHl3aVF3TUFYNC93OTdOZkZHeGEyK0tGWHZrSi9qa3VkazdXSEs0UU9ubnVsU2xCQ1Z0Q3dQUVJtTDg0K3EKTXhyWFNxL2lzTW41eEw3b3NsRS9sS1MxK2FPUklQSGl1ZkM3OWdHYTc3ckdLZldwQVo2MmpFWnlERENIcXk4NAo5Q0VjL0kzTGltdVVIQ0V4MTJQRG51ZmZZYmxoT1FJREFRQUJBb0lDQUJMc2NaN3N1OC9MQjl0OWpuMXo3QXhKCktYajFMc2N6aWZlcHN6UzFJY1BDL2Q4dGVVR2tXbDRSSUlrSktIMU1TNVlCVU5aNTJLeWlxdFFTNEs2eCtmU1UKZHVjN3hoaDFuVzlJNDJXWGdVNDJSMzNiakNDSlZXQUh6M2IvdzFHTGVIQmNKb2xIUlVsSWNZKzE5ZFJvb1FaUgpLUVFudkxueFF4TkJiMm44MjhheHVOVmZDdmtuSUg2STNYS3BYQVYzQzJ2SmorOTBlVEZNWHNydDJ6Y3B5RW1DCmtQU1V6NmhyR0xDMXMyTnNaOEl4U0VYMmc0dksrdXQrVGdGdU5tZ2FudlpwNiszVFc1QzBHR1ZvdzdxaGxEQmEKV3A3dk9nRXdZNjhTRVFydXBTTjVWNW8zRmxKY0F1ME5ZRllMODdVUno3V1pTMnNYc2E1ZGluZjNrQVVGTkFpQQpCbmRBVitYVkpCL3dMZFl3MFEzcURwc0NkRlVHdHdtU092UWtIVzFGWTE2NmFQNVFpTko2ZWtlTERmenRtTTMvCitMbm9vM3NtT3ljTW1GYzBLcGEycDY3NG5ueU82VXI3UGtaYkdlMFJDZE9hN3NkR0FyU0dHYXBpcTVxYzdSYmoKRm53cHk3T2JqS1VJTFNaaHVpVXU1aEpSRk1SNTFYcmJxVytsdDJyTU5uSG1ZeGFzdWtCWU9RR0J1ekpPUExPWQpJRHFJVzJHbHI4cktveGxNeUFrQ0pCQkJqUFVBK0RHWkdDZ3g1Z3lvSzgwZjhYNmF2MUd5dHJRcEFHZ2VvSVcwCldhM3RWSnJaUno3bkh6aG1NTzhLalR5MGFhSUhSV092TkZhRkZic2JVSnJ0dXlmSkdxek5ZbldsYTgzZFl4cTYKeXQrcDdRbzczMmgrN1p0SHFVMWZBb0lCQVFDMkZ4YjNLRGNjMys4MjF2MHpGcCtsYUZLOFlIU0RUMU56RXpsWQo5cUlXRkJaeWplZUZvTkl4R09PSFRnOFc5SkFyRnJ0K1I5dVA3di9tZTVuc2xheDdaR1hKTjBuaUNYRWdaOXI4Ckp5VHBqeXN1MGJWZWxyWmNIOTRPNzBTMWF1bzhVS3VWS0hwQzhGUVJ4SnpvOUl6WlFqZTZSWmkzem9OazZDL3MKUEtoSk82QzFadkpLVEpTUzQwSU5YOEs5d2RoU09xczdxbjBlTVkvN0dhQngzN0JidlR1RllBamZSSXUxRHZMOQowVWZDOHRScFZaUHZwTlVQcERocjJQY2N6Rzd6Z3NvQS84aXgrT3JZMkp3aVZMZU1GdU8wYUtoVFJhYzlLZU5XClNHK0V1Y1I5S21LQ3EzZ2hpV1dNbjJhNEFucGgyejFtTkpMYlV5bnFwcUVTMWpaWEFvSUJBUUMxWG1TUEd0KzgKTnUyVUIraTJ6bVF2ZDVyU21JSnlxVjZ1MklmM1hWdjJCem9kOWtRdE9jVVhQM0JGK1lIM2xxRzBkVGt1ZmhRNQpuMFdNUlpzT1JLcThteUswYldGUGZuRnpubE5TRHlleVFGZEJsZDBudkd3alhUOER5R2RNcHduc0lRTkYvdENsCkxEVW5WNTNVVkIxUVN2STg4bXVuY080YWlaSWJqNkVEeWlydEFZVitJK0FkMDJHMmtFalk2V2svSFlmVGRFY1IKZmgwUURxQWVoUnlTRW9uZGx5bWZFSzBNckU1c3d0QmZoOGpqY2xyRlZjSm9GVWhGY0Nkd0tqSjJFeHNTenRGeQp3VVdjbVExYXMzWlZzbVNpZlEzRU9QMlo0VXpoT1dpelEvcU8zOWFZMVNhTE10Y0syZ1VxUDZrSm9aaDZFZGdzClZ2K05TeWhBaE1ydkFvSUJBQkdyQmVCdmQ0R0d2UGhPUGYweUNjV0w3Tk00YkxXOUFiVGR2YWZETHBFRDIvVzcKalNackoxbjZOMEdPc21vZ3lzaFRpVmZFY3lweEgwVm00dFdRNUU2SXZGT2MyTDlrK1NRU3o2Mjl3cGdpK3lhcwoxSE5jSGsrc0MralpFSXFsMkJxSUhVMzR3bnd5UTRZQjFOUEp2c3pwM3V4bENsOXpXMDUwTlFvd0RJZ21qLzVxCkFjSngwY3k2M2xMYjR0SjB0NStxNzZoM2IzSjVqcVhubzZqSThwekVMTDFSUnlzYXhJK0o1c3YzL1lXTitFeE0KTUhHRlJlTWhwUlBaMW9obDBiSXhFNWFyT3ZjQjF3KzVYTlQ3OFY5WGJUcTVHUFFUZ3htdE1kRFNjSGVwYXNaVwpVWDZxVXBxMmNUTUcySG1zUytHbzJ6bEtpcUZiWFdyV1JqVEVzanNDZ2dFQWZydEFoUWFBUStJVnpKUmlOaXF0CnNzVmVkNzE5bVdWajljVHo3Uk5kU09MdjV6UEhtOXA4TDZ4eVpWTGRVQVgvWkR0dEEyR3gvRG1ndlUxOTlWQmkKQlh4Wm1iMjhlM0dkRU84V3hZWTFkTWFrc2Yxb0ZYWUNFZ3Y4RmthWWQrVllkNWp4MHAwbGFlVWtGeU9QODJmNwpPN25DM25kK1pmZnhTTFhNVkZuZVp1bURhU3pnL0sxUTAwWjdScmczVHVwNlVsSHVNUUZWRDVJUitNQmZmalFCCkxNaXJjUjFKUmc2Ky9OWUJ6dG1xQkxhNjFzTjNUZUNKQVhXdGxHZTBCeHBWUEZCSllMRUhoYW9yWEN0T080eWYKS1c2SUIwcGVyamdzYkxRVHBtVVpGZnB3UUJtRXVESm94bWQxLyswc0lzTnMrSC9rTFpmK2Q2MHEwSzR0cURlaQpIUUtDQVFBNjlqVzFyV3dJNGVqUDZObXRVb012aWJDc3Ric2MxeXZ6Zmc0ek1ZR0dzUjlPMXYydUh6QlhWNkF1ClV1bFBQSCsyYmEyQWRUMTZqRjZ2MWdMOEs1VWtMSUFtNnBTT0JvL012V2I0Z0tOUmdPaXBUTWJaZDJEOFBpOXAKWGpPRDZoSWV1WGpTM1MrWHNEeW04b2E0ek5oWTFVS29vZndocEwxdW43ZStSUHhHaC9RaWxwSXhVL2hlZFVTMQpBR2YzSzN6Y1NVU2hlZS9ybklicFc0NTFhVzFRVVJCYnpjb1o4VG5mMHdxUko0c3ZOODZVMG5vck5vMWFNUVYyCkx2dTRkSkZYcFFQeXFqS1l5K0hnN3B6SEE2VkY2YmJIL2tGMmpXZmRSUXY4dThTS3ZyUHlKeUFnZEhOOWswU2QKMDlQZHNVVVlJQ1UvVjdSN3FxRG13ck5ZUVpZOAotLS0tLUVORCBQUklWQVRFIEtFWS0tLS0tCg=="
  }

  type = "kubernetes.io/tls"
}