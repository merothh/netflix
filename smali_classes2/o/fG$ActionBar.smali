.class public final Lo/fG$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lo/fG$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 7
    sget-object v0, Lo/fz;->e:Lo/fz$Activity;

    invoke-virtual {v0}, Lo/fz$Activity;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lo/fA;->a:Lo/fA$ActionBar;

    invoke-virtual {v0}, Lo/fA$ActionBar;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lo/fH;->d:Lo/fH$Activity;

    invoke-virtual {v0}, Lo/fH$Activity;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lo/fF;->e:Lo/fF$Activity;

    invoke-virtual {v0}, Lo/fF$Activity;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    sget-object v0, Lo/fE;->b:Lo/fE$StateListAnimator;

    invoke-virtual {v0}, Lo/fE$StateListAnimator;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lo/fI;->b:Lo/fI$TaskDescription;

    invoke-virtual {v0}, Lo/fI$TaskDescription;->d()Z

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
