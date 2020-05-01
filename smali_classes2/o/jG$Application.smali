.class Lo/jG$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/Logblob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# instance fields
.field private a:J

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "clientJson"

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lo/jG$Application;->c:Lorg/json/JSONObject;

    const-string v0, "clientEpoch"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/jG$Application;->a:J

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Payload can not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lo/jG$Application;->a:J

    return-wide v0
.end method

.method public c()Z
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Method not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Method not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .line 112
    iget-object v0, p0, Lo/jG$Application;->c:Lorg/json/JSONObject;

    return-object v0
.end method
