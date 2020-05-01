.class public final Lo/gk$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/gk$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Boolean;
    .locals 1

    .line 26
    invoke-static {}, Lo/gk;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Boolean;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lo/gk;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final e()Z
    .locals 5

    .line 33
    move-object v0, p0

    check-cast v0, Lo/gk$Activity;

    invoke-virtual {v0}, Lo/gk$Activity;->b()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "falcor_perf_sampling"

    .line 35
    invoke-static {v1}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v1

    .line 34
    check-cast v1, Lo/gk;

    .line 38
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1}, Lo/gk;->a()I

    move-result v1

    if-ge v3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/gk$Activity;->e(Ljava/lang/Boolean;)V

    .line 40
    :cond_1
    invoke-virtual {v0}, Lo/gk$Activity;->b()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    return v2
.end method
