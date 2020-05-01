.class public Lo/agY;
.super Lo/agQ;
.source ""


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 53
    sget-object v0, Lo/agT;->f:Lo/agT;

    invoke-direct {p0, v0}, Lo/agQ;-><init>(Lo/agT;)V

    .line 54
    iput-object p1, p0, Lo/agY;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lo/ahp;)V
    .locals 5

    .line 65
    sget-object v0, Lo/agT;->f:Lo/agT;

    invoke-direct {p0, v0}, Lo/agQ;-><init>(Lo/agT;)V

    :try_start_0
    const-string v0, "identity"

    .line 67
    invoke-virtual {p1, v0}, Lo/ahp;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/agY;->e:Ljava/lang/String;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lo/agz;->e:Lo/agz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unauthenticated authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lo/agz;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/agY;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Lo/aho;Lo/ahn;)Lo/ahp;
    .locals 1

    .line 86
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lo/agY;->e:Ljava/lang/String;

    const-string v0, "identity"

    invoke-virtual {p1, v0, p2}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lo/agY;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 101
    :cond_1
    move-object v1, p1

    check-cast v1, Lo/agY;

    .line 102
    invoke-super {p0, p1}, Lo/agQ;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/agY;->e:Ljava/lang/String;

    iget-object v1, v1, Lo/agY;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 110
    invoke-super {p0}, Lo/agQ;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/agY;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
