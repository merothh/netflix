.class Lo/nz;
.super Lo/jC;
.source ""


# direct methods
.method public constructor <init>(Lo/D;)V
    .locals 5

    .line 25
    invoke-direct {p0}, Lo/jC;-><init>()V

    .line 26
    invoke-interface {p1}, Lo/D;->h()I

    move-result v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-interface {p1}, Lo/D;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v2, "d"

    invoke-interface {p1}, Lo/D;->f()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    iget-object v1, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v2, "tcp"

    invoke-interface {p1}, Lo/D;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    iget-object v1, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v2, "dns"

    invoke-interface {p1}, Lo/D;->e()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    iget-object v1, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v2, "tls"

    invoke-interface {p1}, Lo/D;->g()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    iget-object v1, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v2, "ttfb"

    invoke-interface {p1}, Lo/D;->j()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    iget-object v1, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v2, "pf_code"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    iget-object v0, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v1, "err"

    invoke-interface {p1}, Lo/D;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v0, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v1, "via"

    invoke-interface {p1}, Lo/D;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object v0, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v1, "sc"

    invoke-interface {p1}, Lo/D;->h()I

    move-result v2

    invoke-static {v2}, Lo/zr;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    invoke-interface {p1}, Lo/D;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 43
    :try_start_1
    invoke-interface {p1}, Lo/D;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lo/nz;->j:Lorg/json/JSONObject;

    const-string v1, "ip"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "nf_probe"

    const-string v0, "unable to create probe error logblob"

    .line 50
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "ftlProbeError"

    return-object v0
.end method
