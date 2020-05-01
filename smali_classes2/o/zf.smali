.class public Lo/zf;
.super Lo/jC;
.source ""


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;Lcom/android/volley/Request;Lo/zh;ZZ)V
    .locals 5

    .line 30
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 31
    invoke-virtual {p2}, Lcom/android/volley/Request;->H()Lo/GrantedUriPermission;

    move-result-object v0

    .line 33
    invoke-virtual {p2}, Lcom/android/volley/Request;->f()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/net/NetworkRequestType;

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p2}, Lcom/android/volley/Request;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/net/NetworkRequestType;

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/android/volley/Request;->f()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 36
    sget-object v1, Lcom/netflix/mediaclient/net/NetworkRequestType;->y:Lcom/netflix/mediaclient/net/NetworkRequestType;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    :try_start_0
    iget-object v2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string v3, "hostname"

    invoke-interface {v0}, Lo/GrantedUriPermission;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object v2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string v3, "proto"

    const-string v4, "https"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    iget-object v2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string v3, "error_code"

    iget v4, p3, Lo/zh;->e:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    iget-object v2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string v3, "err"

    iget-object v4, p3, Lo/zh;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object v2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string v3, "fallback"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 44
    iget-object p4, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string v2, "pf_err"

    iget-object v3, p3, Lo/zh;->c:Ljava/lang/String;

    invoke-virtual {p4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    iget-object p4, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string v2, "comp"

    const-string v3, "unified"

    invoke-virtual {p4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object p4, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string v2, "via"

    iget-object p3, p3, Lo/zh;->d:Ljava/lang/String;

    invoke-virtual {p4, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object p3, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string p4, "duration"

    invoke-virtual {p2}, Lcom/android/volley/Request;->c()J

    move-result-wide v2

    invoke-virtual {p3, p4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    iget-object p2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string p3, "tag"

    invoke-virtual {p2, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    iget-object p2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string p3, "error_count"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->b()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    iget-object p2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string p3, "request_count"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->a()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    iget-object p2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string p3, "time_since_start"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->i()J

    move-result-wide v1

    invoke-virtual {p2, p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    iget-object p2, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string p3, "consecutive_error_count"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/ftl/FtlSession;->e()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    iget-object p1, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string p2, "target"

    invoke-interface {v0}, Lo/GrantedUriPermission;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object p1, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string p2, "throttled"

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object p1, p0, Lo/zf;->j:Lorg/json/JSONObject;

    const-string p2, "server_ip"

    invoke-interface {v0}, Lo/GrantedUriPermission;->host()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "nf_ftl"

    const-string p2, "unable to create ftlerror logblob"

    .line 60
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_1
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "ftlerror"

    return-object v0
.end method
