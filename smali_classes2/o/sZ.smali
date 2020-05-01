.class public Lo/sZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lo/xD;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lo/sZ;->c:Ljava/lang/String;

    const-string v0, "100"

    .line 18
    iput-object v0, p0, Lo/sZ;->b:Ljava/lang/String;

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lo/sZ;->a:Lorg/json/JSONObject;

    .line 40
    iput-object p1, p0, Lo/sZ;->c:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lo/sZ;->b:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lo/sZ;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lo/xD;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lo/sZ;->c:Ljava/lang/String;

    const-string v0, "100"

    .line 18
    iput-object v0, p0, Lo/sZ;->b:Ljava/lang/String;

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lo/sZ;->a:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lo/xD;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/sZ;->c:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lo/xD;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/sZ;->b:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lo/xD;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lo/sZ;->a:Lorg/json/JSONObject;

    .line 26
    iput-object p1, p0, Lo/sZ;->d:Lo/xD;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lo/sZ;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lo/xD;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/sZ;->d:Lo/xD;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/sZ;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 1

    .line 66
    iget-object v0, p0, Lo/sZ;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamingPlaybackError{, mUserDisplayErrorString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/sZ;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mUiDisplayErrorCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/sZ;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mErrExtraInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/sZ;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
