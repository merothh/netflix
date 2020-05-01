.class public Lo/agr;
.super Lo/agh;
.source ""


# instance fields
.field public e:Lcom/netflix/model/leafs/SceneSummary;


# direct methods
.method public constructor <init>(Lo/TableLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TableLayout<",
            "+",
            "Lo/Browser;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lo/agh;-><init>(Lo/TableLayout;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 76
    iget-object v0, p0, Lo/agr;->e:Lcom/netflix/model/leafs/SceneSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    iget v0, v0, Lcom/netflix/model/leafs/SceneSummary;->position:I

    return v0
.end method

.method public b(Ljava/lang/String;)Lo/agi;
    .locals 3

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6eb9585a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-nez v0, :cond_2

    .line 29
    iget-object p1, p0, Lo/agr;->e:Lcom/netflix/model/leafs/SceneSummary;

    return-object p1

    .line 31
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 1

    const-string v0, "summary"

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    check-cast p2, Lcom/netflix/model/leafs/SceneSummary;

    iput-object p2, p0, Lo/agr;->e:Lcom/netflix/model/leafs/SceneSummary;

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 3

    .line 38
    invoke-virtual {p0, p1}, Lo/agr;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6eb9585a

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 44
    new-instance p1, Lcom/netflix/model/leafs/SceneSummary;

    invoke-direct {p1}, Lcom/netflix/model/leafs/SceneSummary;-><init>()V

    iput-object p1, p0, Lo/agr;->e:Lcom/netflix/model/leafs/SceneSummary;

    return-object p1

    .line 46
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t handle key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0}, Lo/agr;->c(Ljava/lang/String;Lo/agi;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FalkorScene{sceneSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/agr;->e:Lcom/netflix/model/leafs/SceneSummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
