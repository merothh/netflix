.class abstract Lo/rT;
.super Lo/sA;
.source ""


# instance fields
.field private final a:Lo/sx;

.field private final b:Lo/sx;

.field private final c:Lo/sx;

.field private final e:Lo/sx;


# direct methods
.method constructor <init>(Lo/sx;Lo/sx;Lo/sx;Lo/sx;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/sA;-><init>()V

    .line 24
    iput-object p1, p0, Lo/rT;->e:Lo/sx;

    .line 25
    iput-object p2, p0, Lo/rT;->b:Lo/sx;

    .line 26
    iput-object p3, p0, Lo/rT;->c:Lo/sx;

    .line 27
    iput-object p4, p0, Lo/rT;->a:Lo/sx;

    return-void
.end method


# virtual methods
.method public a()Lo/sx;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "events"
    .end annotation

    .line 34
    iget-object v0, p0, Lo/rT;->e:Lo/sx;

    return-object v0
.end method

.method public b()Lo/sx;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ldl"
    .end annotation

    .line 41
    iget-object v0, p0, Lo/rT;->b:Lo/sx;

    return-object v0
.end method

.method public d()Lo/sx;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "license"
    .end annotation

    .line 48
    iget-object v0, p0, Lo/rT;->c:Lo/sx;

    return-object v0
.end method

.method public e()Lo/sx;
    .locals 1
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stopPlayback"
    .end annotation

    .line 55
    iget-object v0, p0, Lo/rT;->a:Lo/sx;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 73
    :cond_0
    instance-of v1, p1, Lo/sA;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 74
    check-cast p1, Lo/sA;

    .line 75
    iget-object v1, p0, Lo/rT;->e:Lo/sx;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lo/sA;->a()Lo/sx;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/sA;->a()Lo/sx;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lo/rT;->b:Lo/sx;

    if-nez v1, :cond_2

    .line 76
    invoke-virtual {p1}, Lo/sA;->b()Lo/sx;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lo/sA;->b()Lo/sx;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lo/rT;->c:Lo/sx;

    if-nez v1, :cond_3

    .line 77
    invoke-virtual {p1}, Lo/sA;->d()Lo/sx;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lo/sA;->d()Lo/sx;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Lo/rT;->a:Lo/sx;

    if-nez v1, :cond_4

    .line 78
    invoke-virtual {p1}, Lo/sA;->e()Lo/sx;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lo/sA;->e()Lo/sx;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 87
    iget-object v0, p0, Lo/rT;->e:Lo/sx;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    .line 89
    iget-object v3, p0, Lo/rT;->b:Lo/sx;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 91
    iget-object v3, p0, Lo/rT;->c:Lo/sx;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int v0, v0, v2

    .line 93
    iget-object v2, p0, Lo/rT;->a:Lo/sx;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManifestLinks{events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rT;->e:Lo/sx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ldl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rT;->b:Lo/sx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", license="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rT;->c:Lo/sx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stopPlayback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/rT;->a:Lo/sx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
