.class public Lo/aic;
.super Lo/aie;
.source ""


# instance fields
.field private final c:Lo/ahS;

.field private final d:Lo/ahX;


# direct methods
.method public constructor <init>(Lo/ahS;Lo/ahX;)V
    .locals 1

    .line 61
    sget-object v0, Lo/aib;->j:Lo/aib;

    invoke-direct {p0, v0}, Lo/aie;-><init>(Lo/aib;)V

    .line 62
    invoke-virtual {p2, p1}, Lo/ahX;->e(Lo/ahS;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lo/aic;->c:Lo/ahS;

    .line 65
    iput-object p2, p0, Lo/aic;->d:Lo/ahX;

    return-void

    .line 63
    :cond_0
    new-instance p1, Lcom/netflix/msl/MslInternalException;

    const-string p2, "User ID token must be bound to master token."

    invoke-direct {p1, p2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b(Lo/aho;Lo/ahn;)Lo/ahp;
    .locals 3

    .line 124
    invoke-virtual {p1}, Lo/aho;->b()Lo/ahp;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lo/aic;->c:Lo/ahS;

    const-string v2, "mastertoken"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 126
    iget-object v1, p0, Lo/aic;->d:Lo/ahX;

    const-string v2, "useridtoken"

    invoke-virtual {v0, v2, v1}, Lo/ahp;->e(Ljava/lang/String;Ljava/lang/Object;)Lo/ahp;

    .line 127
    invoke-virtual {p1, v0, p2}, Lo/aho;->c(Lo/ahp;Lo/ahn;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/aho;->c([B)Lo/ahp;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lo/aic;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 137
    :cond_1
    move-object v1, p1

    check-cast v1, Lo/aic;

    .line 138
    invoke-super {p0, p1}, Lo/aie;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/aic;->c:Lo/ahS;

    iget-object v3, v1, Lo/aic;->c:Lo/ahS;

    invoke-virtual {p1, v3}, Lo/ahS;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/aic;->d:Lo/ahX;

    iget-object v1, v1, Lo/aic;->d:Lo/ahX;

    invoke-virtual {p1, v1}, Lo/ahX;->equals(Ljava/lang/Object;)Z

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

    .line 146
    invoke-super {p0}, Lo/aie;->hashCode()I

    move-result v0

    iget-object v1, p0, Lo/aic;->c:Lo/ahS;

    invoke-virtual {v1}, Lo/ahS;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lo/aic;->d:Lo/ahX;

    invoke-virtual {v1}, Lo/ahX;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
