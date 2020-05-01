.class public Lo/mE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahJ;


# instance fields
.field private d:Lo/aho;


# direct methods
.method public constructor <init>(Lo/aho;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lo/mE;->d:Lo/aho;

    return-void
.end method


# virtual methods
.method public a(Lo/ahI;)V
    .locals 0

    return-void
.end method

.method public c(Lo/ahI;)V
    .locals 10

    .line 58
    instance-of v0, p1, Lo/ahF;

    if-nez v0, :cond_4

    .line 59
    check-cast p1, Lo/ahP;

    .line 60
    invoke-virtual {p1}, Lo/ahP;->n()Lo/ahA;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {p1}, Lo/ahP;->e()Lo/ahS;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lo/ahP;->n()Lo/ahA;

    move-result-object p1

    invoke-virtual {p1}, Lo/ahA;->d()Lo/ahS;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "unknown"

    const-string v4, ""

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    const-string v3, "issuance"

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p1}, Lo/ahS;->b()J

    move-result-wide v5

    invoke-virtual {v0}, Lo/ahS;->b()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    const-string v3, "renewal"

    goto :goto_1

    .line 76
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new MT serial does not match original. "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/ahS;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/ahS;->b()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lo/ahS;->c()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lo/ahS;->c()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v4, "Got a KeyResponseData, but it had no MT!"

    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string p1, "nf_msl"

    if-eqz v1, :cond_3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saw an unexpected KeyResponseData result!: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got a KeyResponseData of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method
