.class public Lo/Thread;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Thread$StateListAnimator;,
        Lo/Thread$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/Executor;


# instance fields
.field b:Ljava/util/concurrent/Executor;

.field private final c:Lo/VirtualMachineError;

.field final d:Lo/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StringBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Thread$StateListAnimator<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lo/Thread$ActionBar;

    invoke-direct {v0}, Lo/Thread$ActionBar;-><init>()V

    sput-object v0, Lo/Thread;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lo/VirtualMachineError;Lo/StringBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/VirtualMachineError;",
            "Lo/StringBuffer<",
            "TT;>;)V"
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/Thread;->f:Ljava/util/List;

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/Thread;->i:Ljava/util/List;

    .line 179
    iput-object p1, p0, Lo/Thread;->c:Lo/VirtualMachineError;

    .line 180
    iput-object p2, p0, Lo/Thread;->d:Lo/StringBuffer;

    .line 181
    invoke-virtual {p2}, Lo/StringBuffer;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p2}, Lo/StringBuffer;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lo/Thread;->b:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 184
    :cond_0
    sget-object p1, Lo/Thread;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo/Thread;->b:Ljava/util/concurrent/Executor;

    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lo/Thread;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Thread$StateListAnimator;

    .line 376
    iget-object v2, p0, Lo/Thread;->i:Ljava/util/List;

    invoke-interface {v1, p1, v2}, Lo/Thread$StateListAnimator;->e(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 379
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, p1, v0}, Lo/Thread;->d(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lo/Thread$StateListAnimator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Thread$StateListAnimator<",
            "TT;>;)V"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lo/Thread;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 254
    iget v0, p0, Lo/Thread;->e:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lo/Thread;->e:I

    .line 256
    iget-object v3, p0, Lo/Thread;->g:Ljava/util/List;

    if-ne p1, v3, :cond_1

    if-eqz p2, :cond_0

    .line 259
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lo/Thread;->i:Ljava/util/List;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 269
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    .line 270
    iput-object v2, p0, Lo/Thread;->g:Ljava/util/List;

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lo/Thread;->i:Ljava/util/List;

    .line 273
    iget-object v2, p0, Lo/Thread;->c:Lo/VirtualMachineError;

    invoke-interface {v2, v1, p1}, Lo/VirtualMachineError;->b(II)V

    .line 274
    invoke-direct {p0, v0, p2}, Lo/Thread;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-nez v3, :cond_3

    .line 280
    iput-object p1, p0, Lo/Thread;->g:Ljava/util/List;

    .line 281
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lo/Thread;->i:Ljava/util/List;

    .line 283
    iget-object v2, p0, Lo/Thread;->c:Lo/VirtualMachineError;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2, v1, p1}, Lo/VirtualMachineError;->e(II)V

    .line 284
    invoke-direct {p0, v0, p2}, Lo/Thread;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    .line 289
    :cond_3
    iget-object v0, p0, Lo/Thread;->d:Lo/StringBuffer;

    invoke-virtual {v0}, Lo/StringBuffer;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lo/Thread$4;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lo/Thread$4;-><init>(Lo/Thread;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lo/Thread;->i:Ljava/util/List;

    return-object v0
.end method

.method e(Ljava/util/List;Lo/State$Application;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/State$Application;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lo/Thread;->i:Ljava/util/List;

    .line 365
    iput-object p1, p0, Lo/Thread;->g:Ljava/util/List;

    .line 367
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/Thread;->i:Ljava/util/List;

    .line 368
    iget-object p1, p0, Lo/Thread;->c:Lo/VirtualMachineError;

    invoke-virtual {p2, p1}, Lo/State$Application;->b(Lo/VirtualMachineError;)V

    .line 369
    invoke-direct {p0, v0, p3}, Lo/Thread;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method
