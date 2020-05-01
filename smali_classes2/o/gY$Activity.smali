.class public final Lo/gY$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/gY$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 3

    .line 31
    move-object v0, p0

    check-cast v0, Lo/gY$Activity;

    invoke-virtual {v0}, Lo/gY$Activity;->d()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "qoe_metrics"

    .line 33
    invoke-static {v1}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v1

    .line 32
    check-cast v1, Lo/gY;

    .line 37
    sget-object v2, Lo/bH;->c:Lo/bH$TaskDescription;

    invoke-virtual {v1}, Lo/gY;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Lo/bH$TaskDescription;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/gY$Activity;->c(Ljava/lang/Boolean;)V

    .line 39
    :cond_0
    invoke-virtual {v0}, Lo/gY$Activity;->d()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(Ljava/lang/Boolean;)V
    .locals 0

    .line 25
    invoke-static {p1}, Lo/gY;->d(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1

    .line 25
    invoke-static {}, Lo/gY;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
