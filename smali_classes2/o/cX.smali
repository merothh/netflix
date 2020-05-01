.class public Lo/cX;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/cX;->e:Landroid/content/Context;

    const-string v0, "streamingConfig"

    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lo/cX;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    move-result-object p1

    iput-object p1, p0, Lo/cX;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;
    .locals 2

    .line 51
    :try_start_0
    const-class v0, Lcom/google/gson/Gson;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "JsonSyntaxException when parsing StreamingConfigOverride"

    invoke-interface {v0, v1, p1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 56
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;->empty()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public b()Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/cX;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lo/cX;->e:Landroid/content/Context;

    const-string v1, "streamingConfig"

    invoke-static {v0, v1, p1}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lo/cX;->d(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    move-result-object p1

    iput-object p1, p0, Lo/cX;->a:Lcom/netflix/mediaclient/service/webclient/model/leafs/StreamingConfigOverride;

    :cond_0
    return-void
.end method
