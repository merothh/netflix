.class public final Lo/InstantAppRequest;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InstantAppRequest$StateListAnimator;,
        Lo/InstantAppRequest$Application;,
        Lo/InstantAppRequest$TaskDescription;,
        Lo/InstantAppRequest$ActionBar;
    }
.end annotation


# static fields
.field private static final c:Lo/InstantAppRequest$TaskDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstantAppRequest$TaskDescription<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lo/InstantAppRequest$3;

    invoke-direct {v0}, Lo/InstantAppRequest$3;-><init>()V

    sput-object v0, Lo/InstantAppRequest;->c:Lo/InstantAppRequest$TaskDescription;

    return-void
.end method

.method private static a(Lo/CharArrayReader$Activity;Lo/InstantAppRequest$ActionBar;)Lo/CharArrayReader$Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/InstantAppRequest$Application;",
            ">(",
            "Lo/CharArrayReader$Activity<",
            "TT;>;",
            "Lo/InstantAppRequest$ActionBar<",
            "TT;>;)",
            "Lo/CharArrayReader$Activity<",
            "TT;>;"
        }
    .end annotation

    .line 102
    invoke-static {}, Lo/InstantAppRequest;->d()Lo/InstantAppRequest$TaskDescription;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/InstantAppRequest;->c(Lo/CharArrayReader$Activity;Lo/InstantAppRequest$ActionBar;Lo/InstantAppRequest$TaskDescription;)Lo/CharArrayReader$Activity;

    move-result-object p0

    return-object p0
.end method

.method public static b(ILo/InstantAppRequest$ActionBar;)Lo/CharArrayReader$Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo/InstantAppRequest$Application;",
            ">(I",
            "Lo/InstantAppRequest$ActionBar<",
            "TT;>;)",
            "Lo/CharArrayReader$Activity<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lo/CharArrayReader$StateListAnimator;

    invoke-direct {v0, p0}, Lo/CharArrayReader$StateListAnimator;-><init>(I)V

    invoke-static {v0, p1}, Lo/InstantAppRequest;->a(Lo/CharArrayReader$Activity;Lo/InstantAppRequest$ActionBar;)Lo/CharArrayReader$Activity;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lo/CharArrayReader$Activity;Lo/InstantAppRequest$ActionBar;Lo/InstantAppRequest$TaskDescription;)Lo/CharArrayReader$Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/CharArrayReader$Activity<",
            "TT;>;",
            "Lo/InstantAppRequest$ActionBar<",
            "TT;>;",
            "Lo/InstantAppRequest$TaskDescription<",
            "TT;>;)",
            "Lo/CharArrayReader$Activity<",
            "TT;>;"
        }
    .end annotation

    .line 108
    new-instance v0, Lo/InstantAppRequest$StateListAnimator;

    invoke-direct {v0, p0, p1, p2}, Lo/InstantAppRequest$StateListAnimator;-><init>(Lo/CharArrayReader$Activity;Lo/InstantAppRequest$ActionBar;Lo/InstantAppRequest$TaskDescription;)V

    return-object v0
.end method

.method public static d(I)Lo/CharArrayReader$Activity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lo/CharArrayReader$Activity<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 85
    new-instance v0, Lo/CharArrayReader$StateListAnimator;

    invoke-direct {v0, p0}, Lo/CharArrayReader$StateListAnimator;-><init>(I)V

    new-instance p0, Lo/InstantAppRequest$1;

    invoke-direct {p0}, Lo/InstantAppRequest$1;-><init>()V

    new-instance v1, Lo/InstantAppRequest$4;

    invoke-direct {v1}, Lo/InstantAppRequest$4;-><init>()V

    invoke-static {v0, p0, v1}, Lo/InstantAppRequest;->c(Lo/CharArrayReader$Activity;Lo/InstantAppRequest$ActionBar;Lo/InstantAppRequest$TaskDescription;)Lo/CharArrayReader$Activity;

    move-result-object p0

    return-object p0
.end method

.method private static d()Lo/InstantAppRequest$TaskDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/InstantAppRequest$TaskDescription<",
            "TT;>;"
        }
    .end annotation

    .line 114
    sget-object v0, Lo/InstantAppRequest;->c:Lo/InstantAppRequest$TaskDescription;

    return-object v0
.end method

.method public static e()Lo/CharArrayReader$Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/CharArrayReader$Activity<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    .line 69
    invoke-static {v0}, Lo/InstantAppRequest;->d(I)Lo/CharArrayReader$Activity;

    move-result-object v0

    return-object v0
.end method
