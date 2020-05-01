.class public final Lo/ma;
.super Lo/mk;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "META_DATA_CHANGED"

    .line 14
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    const-string v0, "catalogId"

    .line 15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ma;->c:Ljava/lang/String;

    const-string v0, "episodeId"

    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ma;->a:Ljava/lang/String;

    const-string v0, "type"

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ma;->d:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lo/ma;->b:Lorg/json/JSONObject;

    return-void
.end method
