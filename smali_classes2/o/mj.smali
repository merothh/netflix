.class public final Lo/mj;
.super Lo/mk;
.source ""


# instance fields
.field private a:Z

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "startSessionResponse"

    .line 17
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lo/mj;->c:I

    :try_start_0
    const-string v1, "sessionId"

    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/mj;->c:I

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lo/mj;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    iput-boolean v0, p0, Lo/mj;->a:Z

    .line 23
    invoke-static {p1}, Lo/ChooserTargetService;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/mj;->d:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lo/mj;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 28
    iget v0, p0, Lo/mj;->c:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/mj;->a:Z

    return v0
.end method
