.class final Lo/JO;
.super Lo/Ky;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/JO$ActionBar;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/Ky;-><init>()V

    .line 24
    iput-object p1, p0, Lo/JO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 25
    iput-object p2, p0, Lo/JO;->a:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lo/JO;->b:Ljava/lang/String;

    .line 27
    iput p4, p0, Lo/JO;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Ljava/lang/String;ILo/JO$2;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lo/JO;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/JO;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/JO;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Lo/Ky$TaskDescription;
    .locals 2

    .line 93
    new-instance v0, Lo/JO$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/JO$ActionBar;-><init>(Lo/Ky;Lo/JO$2;)V

    return-object v0
.end method

.method d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
    .locals 1

    .line 32
    iget-object v0, p0, Lo/JO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    return-object v0
.end method

.method e()I
    .locals 1

    .line 49
    iget v0, p0, Lo/JO;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 67
    :cond_0
    instance-of v1, p1, Lo/Ky;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 68
    check-cast p1, Lo/Ky;

    .line 69
    iget-object v1, p0, Lo/JO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {p1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/JO;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {p1}, Lo/Ky;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/Ky;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lo/JO;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 71
    invoke-virtual {p1}, Lo/Ky;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lo/Ky;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iget v1, p0, Lo/JO;->d:I

    .line 72
    invoke-virtual {p1}, Lo/Ky;->e()I

    move-result p1

    if-ne v1, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 81
    iget-object v0, p0, Lo/JO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 83
    iget-object v2, p0, Lo/JO;->a:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 85
    iget-object v2, p0, Lo/JO;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 87
    iget v1, p0, Lo/JO;->d:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LomoContext{lomo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/JO;->e:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lolomoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/JO;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", genreId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/JO;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", positionInUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/JO;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
