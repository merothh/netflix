.class public final Lo/eo$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lo/eo$ActionBar;-><init>()V

    return-void
.end method

.method private final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 34
    move-object v0, p0

    check-cast v0, Lo/eo$ActionBar;

    .line 32
    invoke-direct {v0}, Lo/eo$ActionBar;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lo/eo;

    invoke-static {v0}, Lo/cS;->b(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_3:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {}, Lo/aek;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 25
    move-object v0, p0

    check-cast v0, Lo/eo$ActionBar;

    invoke-virtual {v0}, Lo/eo$ActionBar;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lo/aek;->h()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {v0}, Lo/eo$ActionBar;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method public final d()Z
    .locals 2

    .line 21
    const-class v0, Lo/eo;

    invoke-static {v0}, Lo/cS;->b(Ljava/lang/Class;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 2

    .line 28
    move-object v0, p0

    check-cast v0, Lo/eo$ActionBar;

    invoke-virtual {v0}, Lo/eo$ActionBar;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {v0}, Lo/eo$ActionBar;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
