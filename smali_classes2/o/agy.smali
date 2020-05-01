.class public Lo/agy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Browser;


# instance fields
.field private a:Lo/OneTimeUseBuilder;

.field private c:Z

.field private d:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

.field private e:Lo/OneTimeUseBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lo/agi;
    .locals 5

    .line 166
    iget-boolean v0, p0, Lo/agy;->c:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lo/SettingsSlicesContract;->b()Lo/SettingsSlicesContract;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, -0x1

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6eb9585a

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x317b13

    if-eq v1, v2, :cond_2

    const v2, 0x18441898

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "preQueryItem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-ne v0, v3, :cond_5

    .line 173
    iget-object p1, p0, Lo/agy;->e:Lo/OneTimeUseBuilder;

    return-object p1

    .line 175
    :cond_5
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

    .line 172
    :cond_6
    iget-object p1, p0, Lo/agy;->a:Lo/OneTimeUseBuilder;

    return-object p1

    .line 171
    :cond_7
    iget-object p1, p0, Lo/agy;->d:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    return-object p1
.end method

.method public c(Ljava/lang/String;Lo/agi;)V
    .locals 6

    .line 213
    instance-of v0, p2, Lo/SettingsSlicesContract;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 214
    iput-boolean v1, p0, Lo/agy;->c:Z

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 216
    iput-boolean v0, p0, Lo/agy;->c:Z

    const/4 v2, -0x1

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6eb9585a

    const/4 v5, 0x2

    if-eq v3, v4, :cond_3

    const v0, 0x317b13

    if-eq v3, v0, :cond_2

    const v0, 0x18441898

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "preQueryItem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "summary"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    if-eq v0, v5, :cond_5

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Don\'t know how to set key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SearchByReferenceMap"

    invoke-static {p2, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 220
    :cond_5
    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agy;->e:Lo/OneTimeUseBuilder;

    goto :goto_2

    .line 219
    :cond_6
    check-cast p2, Lo/OneTimeUseBuilder;

    iput-object p2, p0, Lo/agy;->a:Lo/OneTimeUseBuilder;

    goto :goto_2

    .line 218
    :cond_7
    check-cast p2, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    iput-object p2, p0, Lo/agy;->d:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    :goto_2
    return-void
.end method

.method public d(Ljava/lang/String;)Lo/agi;
    .locals 5

    .line 182
    invoke-virtual {p0, p1}, Lo/agy;->b(Ljava/lang/String;)Lo/agi;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6eb9585a

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x317b13

    if-eq v1, v2, :cond_2

    const v2, 0x18441898

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "preQueryItem"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    if-ne v0, v3, :cond_5

    .line 190
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agy;->e:Lo/OneTimeUseBuilder;

    return-object p1

    .line 191
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create node for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_6
    new-instance p1, Lo/OneTimeUseBuilder;

    invoke-direct {p1}, Lo/OneTimeUseBuilder;-><init>()V

    iput-object p1, p0, Lo/agy;->a:Lo/OneTimeUseBuilder;

    return-object p1

    .line 188
    :cond_7
    new-instance p1, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    invoke-direct {p1}, Lcom/netflix/model/leafs/SearchCollectionEntityImpl;-><init>()V

    iput-object p1, p0, Lo/agy;->d:Lcom/netflix/model/leafs/SearchCollectionEntityImpl;

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, p1, v0}, Lo/agy;->c(Ljava/lang/String;Lo/agi;)V

    return-void
.end method
