.class abstract Lo/xH;
.super Lo/xG;
.source ""


# instance fields
.field private final b:Lo/wB;


# direct methods
.method constructor <init>(Lo/wB;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/xG;-><init>()V

    .line 16
    iput-object p1, p0, Lo/xH;->b:Lo/wB;

    return-void
.end method


# virtual methods
.method public b()Lo/wB;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wifi"
    .end annotation

    .line 23
    iget-object v0, p0, Lo/xH;->b:Lo/wB;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lo/xG;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 39
    check-cast p1, Lo/xG;

    .line 40
    iget-object v1, p0, Lo/xH;->b:Lo/wB;

    invoke-virtual {p1}, Lo/xG;->b()Lo/wB;

    move-result-object p1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 49
    iget-object v0, p0, Lo/xH;->b:Lo/wB;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackReporterConfigMap{config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/xH;->b:Lo/wB;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
