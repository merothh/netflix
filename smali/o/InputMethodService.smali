.class public final Lo/InputMethodService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InputMethodService$Application;,
        Lo/InputMethodService$Activity;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lo/InputMethodService;

.field private c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/InputMethodService$Application;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private f:I

.field private j:Z


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lo/InputMethodService;->b:Lo/InputMethodService;

    .line 234
    iput p1, p0, Lo/InputMethodService;->e:I

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lo/InputMethodService;->c:Z

    const/4 p1, -0x1

    .line 238
    iput p1, p0, Lo/InputMethodService;->a:I

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lo/InputMethodService;->j:Z

    .line 241
    iput p1, p0, Lo/InputMethodService;->f:I

    .line 243
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v0, 0x40

    invoke-static {v0}, Lo/InputMethodService$Application;->c(I)Lo/InputMethodService$Application;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/InputMethodService;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a()Lo/InputMethodService;
    .locals 4

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    or-int/lit8 v0, v2, 0x1

    .line 296
    invoke-static {v0}, Lo/InputMethodService;->d(I)Lo/InputMethodService;

    move-result-object v0

    return-object v0
.end method

.method protected static d(I)Lo/InputMethodService;
    .locals 1

    .line 300
    new-instance v0, Lo/InputMethodService;

    invoke-direct {v0, p0}, Lo/InputMethodService;-><init>(I)V

    return-object v0
.end method
