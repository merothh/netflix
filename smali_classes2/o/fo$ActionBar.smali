.class public final Lo/fo$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/fo$ActionBar;-><init>()V

    return-void
.end method

.method private final h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 2

    .line 29
    const-class v0, Lo/fo;

    invoke-static {v0}, Lo/cS;->b(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    const-string v1, "PersistentABConfig.getCe\u2026dForYouTake2::class.java)"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 66
    sget-object v0, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {v0}, Lo/er$TaskDescription;->e()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lo/fo$ActionBar;

    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_6:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(Lo/nS;)Z
    .locals 6

    .line 41
    move-object v0, p0

    check-cast v0, Lo/fo$ActionBar;

    invoke-virtual {v0}, Lo/fo$ActionBar;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {p1}, Lo/nS;->p()Lo/Bg;

    move-result-object p1

    const-string v0, "offlineAgent.offlineStorageVolumeList"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Lo/Bg;->d()I

    move-result v0

    invoke-interface {p1, v0}, Lo/Bg;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Bh;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lo/Bh;->e()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    const-wide v4, 0x12a05f200L

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method public final b()Z
    .locals 4

    .line 33
    sget-object v0, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {v0}, Lo/er$TaskDescription;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 36
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/fo$ActionBar;

    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v2, v3, :cond_1

    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final c()Z
    .locals 4

    .line 71
    sget-object v0, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {v0}, Lo/er$TaskDescription;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 77
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/fo$ActionBar;

    .line 74
    invoke-virtual {v0}, Lo/fo$ActionBar;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v2, v3, :cond_1

    .line 76
    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v2, v3, :cond_1

    .line 77
    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_4:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final d()Z
    .locals 3

    .line 58
    sget-object v0, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {v0}, Lo/er$TaskDescription;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 61
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/fo$ActionBar;

    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final e()Z
    .locals 3

    .line 50
    sget-object v0, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {v0}, Lo/er$TaskDescription;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 53
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/fo$ActionBar;

    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final f()Z
    .locals 2

    .line 91
    sget-object v0, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {v0}, Lo/er$TaskDescription;->e()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lo/fo$ActionBar;

    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_6:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Z
    .locals 3

    .line 82
    sget-object v0, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {v0}, Lo/er$TaskDescription;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {v0}, Lo/er$TaskDescription;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/fo$ActionBar;

    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_9:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final j()I
    .locals 3

    .line 96
    sget-object v0, Lo/er;->e:Lo/er$TaskDescription;

    invoke-virtual {v0}, Lo/er$TaskDescription;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 100
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/fo$ActionBar;

    invoke-direct {v0}, Lo/fo$ActionBar;->h()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v2, Lo/fm;->d:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const v1, 0x36ee80

    goto :goto_0

    :cond_1
    const v1, 0x2932e00

    :cond_2
    :goto_0
    return v1
.end method
