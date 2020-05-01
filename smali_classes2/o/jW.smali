.class public Lo/jW;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lo/sx;

.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lo/jX;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lo/jW;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/jW;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/sx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lo/jW;->d:I

    .line 34
    iput-object p1, p0, Lo/jW;->c:Lo/sx;

    .line 35
    iput-object p2, p0, Lo/jW;->f:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lo/jW;->a:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lo/jW;->e:Ljava/lang/String;

    .line 38
    iput v0, p0, Lo/jW;->g:I

    return-void
.end method


# virtual methods
.method final d()Ljava/lang/String;
    .locals 7

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    iget-object v1, p0, Lo/jW;->c:Lo/sx;

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "version"

    const/4 v3, 0x2

    .line 64
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "url"

    .line 65
    iget-object v3, p0, Lo/jW;->c:Lo/sx;

    invoke-virtual {v3}, Lo/sx;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    invoke-static {}, Lo/aey;->b()J

    move-result-wide v2

    .line 68
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "event"

    .line 69
    iget-object v6, p0, Lo/jW;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "clientTime"

    .line 70
    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "appSessionId"

    .line 71
    iget-object v3, p0, Lo/jW;->a:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "userSessionId"

    .line 72
    iget-object v3, p0, Lo/jW;->e:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "isInBackground"

    .line 73
    invoke-static {}, Lo/CarrierIdentifier;->b()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "trackerId"

    .line 74
    iget-object v3, p0, Lo/jW;->j:Lo/jX;

    invoke-virtual {v3}, Lo/jX;->e()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    iget v2, p0, Lo/jW;->g:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const-string v2, "progressPercentage"

    .line 77
    iget v3, p0, Lo/jW;->g:I

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    :cond_2
    iget-object v2, p0, Lo/jW;->i:Ljava/lang/String;

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "errorCode"

    .line 81
    iget-object v3, p0, Lo/jW;->i:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_3
    iget-object v2, p0, Lo/jW;->h:Ljava/lang/String;

    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "errorMessage"

    .line 84
    iget-object v3, p0, Lo/jW;->h:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v2, "uiDownloadContext"

    .line 87
    iget-object v3, p0, Lo/jW;->j:Lo/jX;

    invoke-virtual {v3}, Lo/jX;->g()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "params"

    .line 89
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 91
    sget-object v3, Lo/jW;->b:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "error creating pds download event params"

    invoke-static {v3, v2, v4, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Lo/jX;)Lo/jW;
    .locals 0

    .line 42
    iput-object p1, p0, Lo/jW;->j:Lo/jX;

    return-object p0
.end method

.method public e(I)Lo/jW;
    .locals 0

    .line 47
    iput p1, p0, Lo/jW;->g:I

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lo/jW;
    .locals 0

    .line 52
    iput-object p1, p0, Lo/jW;->i:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lo/jW;->h:Ljava/lang/String;

    return-object p0
.end method
