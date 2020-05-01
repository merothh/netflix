.class final Lo/tS$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/uj$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/uj$Activity<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lo/uj$Activity;


# direct methods
.method public constructor <init>(ILo/uj$Activity;)V
    .locals 2

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/tS$ActionBar;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 302
    iput-object p2, p0, Lo/tS$ActionBar;->c:Lo/uj$Activity;

    .line 303
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/tS$ActionBar;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 305
    invoke-interface {p2, p1}, Lo/uj$Activity;->e(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 319
    iget-object v0, p0, Lo/tS$ActionBar;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/tS$ActionBar;->c:Lo/uj$Activity;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lo/tS$ActionBar;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lo/tS$ActionBar;->c:Lo/uj$Activity;

    invoke-interface {v0}, Lo/uj$Activity;->c()V

    goto :goto_0

    .line 323
    :cond_0
    iget-object v0, p0, Lo/tS$ActionBar;->c:Lo/uj$Activity;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/uj$Activity;->e(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Void;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Lo/tS$ActionBar;->e()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 314
    iget-object v0, p0, Lo/tS$ActionBar;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    invoke-direct {p0}, Lo/tS$ActionBar;->e()V

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 296
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lo/tS$ActionBar;->b(Ljava/lang/Void;)V

    return-void
.end method
