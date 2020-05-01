.class public final Lo/lY;
.super Lo/mk;
.source ""


# instance fields
.field private a:Z

.field private c:I

.field private d:Z

.field private h:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "HANDSHAKE_ACCEPTED"

    .line 48
    invoke-direct {p0, v0}, Lo/mk;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lo/lY;->a:Z

    .line 39
    iput v0, p0, Lo/lY;->h:I

    const-string v0, "contractVersion"

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/lY;->c:I

    const-string v0, "accepted"

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/lY;->d:Z

    const-string v0, "volumeControl"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lo/lY;->a:Z

    :cond_0
    const-string v0, "volumeStep"

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo/lY;->h:I

    :cond_1
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lo/lY;->d:Z

    return v0
.end method
