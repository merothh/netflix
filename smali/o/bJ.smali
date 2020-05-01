.class public final Lo/bJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/bH;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bJ$ActionBar;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final d:Lo/bJ$ActionBar;

.field private static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/bJ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/bJ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/bJ;->d:Lo/bJ$ActionBar;

    .line 14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lo/bJ;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(I)Z
    .locals 5

    .line 18
    new-instance v0, Ljava/util/Random;

    sget-wide v1, Lo/bJ;->e:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    sget-object v0, Lo/bJ;->d:Lo/bJ$ActionBar;

    check-cast v0, Lo/MessagePdu;

    return p1
.end method
