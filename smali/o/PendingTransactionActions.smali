.class Lo/PendingTransactionActions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$Application;
.implements Lo/InstantAppRequest$Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PendingTransactionActions$TaskDescription;,
        Lo/PendingTransactionActions$Application;,
        Lo/PendingTransactionActions$ActionBar;,
        Lo/PendingTransactionActions$Activity;,
        Lo/PendingTransactionActions$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodeJob$Application<",
        "TR;>;",
        "Lo/InstantAppRequest$Application;"
    }
.end annotation


# static fields
.field private static final d:Lo/PendingTransactionActions$TaskDescription;


# instance fields
.field a:Lcom/bumptech/glide/load/engine/GlideException;

.field b:Lcom/bumptech/glide/load/DataSource;

.field final c:Lo/PendingTransactionActions$ActionBar;

.field e:Lo/WindowVisibilityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/WindowVisibilityItem<",
            "*>;"
        }
    .end annotation
.end field

.field private final f:Lo/PendingTransactionActions$TaskDescription;

.field private final g:Lo/AppWidgetManagerInternal;

.field private final h:Lo/ResumeActivityItem;

.field private final i:Lo/CharArrayReader$Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CharArrayReader$Activity<",
            "Lo/PendingTransactionActions<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final j:Lo/IntentFilterVerificationInfo;

.field private final k:Lo/AppWidgetManagerInternal;

.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m:Lo/AppWidgetManagerInternal;

.field private n:Lo/FileBackupHelperBase;

.field private final o:Lo/AppWidgetManagerInternal;

.field private p:Lo/Slice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Slice<",
            "*>;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private volatile v:Z

.field private w:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lo/PendingTransactionActions$TaskDescription;

    invoke-direct {v0}, Lo/PendingTransactionActions$TaskDescription;-><init>()V

    sput-object v0, Lo/PendingTransactionActions;->d:Lo/PendingTransactionActions$TaskDescription;

    return-void
.end method

.method constructor <init>(Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/ResumeActivityItem;Lo/CharArrayReader$Activity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppWidgetManagerInternal;",
            "Lo/AppWidgetManagerInternal;",
            "Lo/AppWidgetManagerInternal;",
            "Lo/AppWidgetManagerInternal;",
            "Lo/ResumeActivityItem;",
            "Lo/CharArrayReader$Activity<",
            "Lo/PendingTransactionActions<",
            "*>;>;)V"
        }
    .end annotation

    .line 78
    sget-object v7, Lo/PendingTransactionActions;->d:Lo/PendingTransactionActions$TaskDescription;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lo/PendingTransactionActions;-><init>(Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/ResumeActivityItem;Lo/CharArrayReader$Activity;Lo/PendingTransactionActions$TaskDescription;)V

    return-void
.end method

.method constructor <init>(Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/AppWidgetManagerInternal;Lo/ResumeActivityItem;Lo/CharArrayReader$Activity;Lo/PendingTransactionActions$TaskDescription;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AppWidgetManagerInternal;",
            "Lo/AppWidgetManagerInternal;",
            "Lo/AppWidgetManagerInternal;",
            "Lo/AppWidgetManagerInternal;",
            "Lo/ResumeActivityItem;",
            "Lo/CharArrayReader$Activity<",
            "Lo/PendingTransactionActions<",
            "*>;>;",
            "Lo/PendingTransactionActions$TaskDescription;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lo/PendingTransactionActions$ActionBar;

    invoke-direct {v0}, Lo/PendingTransactionActions$ActionBar;-><init>()V

    iput-object v0, p0, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    .line 33
    invoke-static {}, Lo/IntentFilterVerificationInfo;->d()Lo/IntentFilterVerificationInfo;

    move-result-object v0

    iput-object v0, p0, Lo/PendingTransactionActions;->j:Lo/IntentFilterVerificationInfo;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/PendingTransactionActions;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    iput-object p1, p0, Lo/PendingTransactionActions;->g:Lo/AppWidgetManagerInternal;

    .line 98
    iput-object p2, p0, Lo/PendingTransactionActions;->k:Lo/AppWidgetManagerInternal;

    .line 99
    iput-object p3, p0, Lo/PendingTransactionActions;->m:Lo/AppWidgetManagerInternal;

    .line 100
    iput-object p4, p0, Lo/PendingTransactionActions;->o:Lo/AppWidgetManagerInternal;

    .line 101
    iput-object p5, p0, Lo/PendingTransactionActions;->h:Lo/ResumeActivityItem;

    .line 102
    iput-object p6, p0, Lo/PendingTransactionActions;->i:Lo/CharArrayReader$Activity;

    .line 103
    iput-object p7, p0, Lo/PendingTransactionActions;->f:Lo/PendingTransactionActions$TaskDescription;

    return-void
.end method

.method private declared-synchronized f()V
    .locals 3

    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lo/PendingTransactionActions;->n:Lo/FileBackupHelperBase;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    invoke-virtual {v0}, Lo/PendingTransactionActions$ActionBar;->c()V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lo/PendingTransactionActions;->n:Lo/FileBackupHelperBase;

    .line 286
    iput-object v0, p0, Lo/PendingTransactionActions;->e:Lo/WindowVisibilityItem;

    .line 287
    iput-object v0, p0, Lo/PendingTransactionActions;->p:Lo/Slice;

    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lo/PendingTransactionActions;->y:Z

    .line 289
    iput-boolean v1, p0, Lo/PendingTransactionActions;->v:Z

    .line 290
    iput-boolean v1, p0, Lo/PendingTransactionActions;->x:Z

    .line 291
    iget-object v2, p0, Lo/PendingTransactionActions;->w:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Z)V

    .line 292
    iput-object v0, p0, Lo/PendingTransactionActions;->w:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 293
    iput-object v0, p0, Lo/PendingTransactionActions;->a:Lcom/bumptech/glide/load/engine/GlideException;

    .line 294
    iput-object v0, p0, Lo/PendingTransactionActions;->b:Lcom/bumptech/glide/load/DataSource;

    .line 295
    iget-object v0, p0, Lo/PendingTransactionActions;->i:Lo/CharArrayReader$Activity;

    invoke-interface {v0, p0}, Lo/CharArrayReader$Activity;->c(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 282
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lo/PendingTransactionActions;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/PendingTransactionActions;->x:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/PendingTransactionActions;->v:Z

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

.method private i()Lo/AppWidgetManagerInternal;
    .locals 1

    .line 188
    iget-boolean v0, p0, Lo/PendingTransactionActions;->s:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lo/PendingTransactionActions;->m:Lo/AppWidgetManagerInternal;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lo/PendingTransactionActions;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/PendingTransactionActions;->o:Lo/AppWidgetManagerInternal;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/PendingTransactionActions;->k:Lo/AppWidgetManagerInternal;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    iput-object p1, p0, Lo/PendingTransactionActions;->w:Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 123
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lo/PendingTransactionActions;->g:Lo/AppWidgetManagerInternal;

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0}, Lo/PendingTransactionActions;->i()Lo/AppWidgetManagerInternal;

    move-result-object v0

    .line 126
    :goto_0
    invoke-virtual {v0, p1}, Lo/AppWidgetManagerInternal;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 0

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iput-object p1, p0, Lo/PendingTransactionActions;->a:Lcom/bumptech/glide/load/engine/GlideException;

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    invoke-virtual {p0}, Lo/PendingTransactionActions;->j()V

    return-void

    :catchall_0
    move-exception p1

    .line 311
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized a(Lo/SyncActivityTooManyDeletes;)V
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lo/PendingTransactionActions;->a:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lo/SyncActivityTooManyDeletes;->c(Lcom/bumptech/glide/load/engine/GlideException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 167
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lo/PendingTransactionActions;->r:Z

    return v0
.end method

.method public a_()Lo/IntentFilterVerificationInfo;
    .locals 1

    .line 361
    iget-object v0, p0, Lo/PendingTransactionActions;->j:Lo/IntentFilterVerificationInfo;

    return-object v0
.end method

.method b()V
    .locals 4

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lo/PendingTransactionActions;->j:Lo/IntentFilterVerificationInfo;

    invoke-virtual {v0}, Lo/IntentFilterVerificationInfo;->c()V

    .line 223
    iget-boolean v0, p0, Lo/PendingTransactionActions;->v:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lo/PendingTransactionActions;->p:Lo/Slice;

    invoke-interface {v0}, Lo/Slice;->j()V

    .line 227
    invoke-direct {p0}, Lo/PendingTransactionActions;->f()V

    .line 228
    monitor-exit p0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    invoke-virtual {v0}, Lo/PendingTransactionActions$ActionBar;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    iget-boolean v0, p0, Lo/PendingTransactionActions;->x:Z

    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lo/PendingTransactionActions;->f:Lo/PendingTransactionActions$TaskDescription;

    iget-object v1, p0, Lo/PendingTransactionActions;->p:Lo/Slice;

    iget-boolean v2, p0, Lo/PendingTransactionActions;->q:Z

    invoke-virtual {v0, v1, v2}, Lo/PendingTransactionActions$TaskDescription;->d(Lo/Slice;Z)Lo/WindowVisibilityItem;

    move-result-object v0

    iput-object v0, p0, Lo/PendingTransactionActions;->e:Lo/WindowVisibilityItem;

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lo/PendingTransactionActions;->x:Z

    .line 240
    iget-object v1, p0, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    invoke-virtual {v1}, Lo/PendingTransactionActions$ActionBar;->e()Lo/PendingTransactionActions$ActionBar;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lo/PendingTransactionActions$ActionBar;->b()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lo/PendingTransactionActions;->c(I)V

    .line 243
    iget-object v0, p0, Lo/PendingTransactionActions;->n:Lo/FileBackupHelperBase;

    .line 244
    iget-object v2, p0, Lo/PendingTransactionActions;->e:Lo/WindowVisibilityItem;

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v3, p0, Lo/PendingTransactionActions;->h:Lo/ResumeActivityItem;

    invoke-interface {v3, p0, v0, v2}, Lo/ResumeActivityItem;->d(Lo/PendingTransactionActions;Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;)V

    .line 249
    invoke-virtual {v1}, Lo/PendingTransactionActions$ActionBar;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PendingTransactionActions$Application;

    .line 250
    iget-object v2, v1, Lo/PendingTransactionActions$Application;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lo/PendingTransactionActions$Activity;

    iget-object v1, v1, Lo/PendingTransactionActions$Application;->e:Lo/SyncActivityTooManyDeletes;

    invoke-direct {v3, p0, v1}, Lo/PendingTransactionActions$Activity;-><init>(Lo/PendingTransactionActions;Lo/SyncActivityTooManyDeletes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lo/PendingTransactionActions;->d()V

    return-void

    .line 232
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 245
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob<",
            "*>;)V"
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lo/PendingTransactionActions;->i()Lo/AppWidgetManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/AppWidgetManagerInternal;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lo/Slice;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iput-object p1, p0, Lo/PendingTransactionActions;->p:Lo/Slice;

    .line 302
    iput-object p2, p0, Lo/PendingTransactionActions;->b:Lcom/bumptech/glide/load/DataSource;

    .line 303
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {p0}, Lo/PendingTransactionActions;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 303
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized b(Lo/SyncActivityTooManyDeletes;)V
    .locals 1

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lo/PendingTransactionActions;->j:Lo/IntentFilterVerificationInfo;

    invoke-virtual {v0}, Lo/IntentFilterVerificationInfo;->c()V

    .line 173
    iget-object v0, p0, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    invoke-virtual {v0, p1}, Lo/PendingTransactionActions$ActionBar;->a(Lo/SyncActivityTooManyDeletes;)V

    .line 174
    iget-object p1, p0, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    invoke-virtual {p1}, Lo/PendingTransactionActions$ActionBar;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {p0}, Lo/PendingTransactionActions;->e()V

    .line 176
    iget-boolean p1, p0, Lo/PendingTransactionActions;->x:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lo/PendingTransactionActions;->y:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Lo/PendingTransactionActions;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    .line 178
    invoke-direct {p0}, Lo/PendingTransactionActions;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Lo/SyncActivityTooManyDeletes;Ljava/util/concurrent/Executor;)V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lo/PendingTransactionActions;->j:Lo/IntentFilterVerificationInfo;

    invoke-virtual {v0}, Lo/IntentFilterVerificationInfo;->c()V

    .line 131
    iget-object v0, p0, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    invoke-virtual {v0, p1, p2}, Lo/PendingTransactionActions$ActionBar;->c(Lo/SyncActivityTooManyDeletes;Ljava/util/concurrent/Executor;)V

    .line 132
    iget-boolean v0, p0, Lo/PendingTransactionActions;->x:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v1}, Lo/PendingTransactionActions;->c(I)V

    .line 136
    new-instance v0, Lo/PendingTransactionActions$Activity;

    invoke-direct {v0, p0, p1}, Lo/PendingTransactionActions$Activity;-><init>(Lo/PendingTransactionActions;Lo/SyncActivityTooManyDeletes;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 137
    :cond_0
    iget-boolean v0, p0, Lo/PendingTransactionActions;->y:Z

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0, v1}, Lo/PendingTransactionActions;->c(I)V

    .line 139
    new-instance v0, Lo/PendingTransactionActions$StateListAnimator;

    invoke-direct {v0, p0, p1}, Lo/PendingTransactionActions$StateListAnimator;-><init>(Lo/PendingTransactionActions;Lo/SyncActivityTooManyDeletes;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 141
    :cond_1
    iget-boolean p1, p0, Lo/PendingTransactionActions;->v:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "Cannot add callbacks to a cancelled EngineJob"

    invoke-static {v1, p1}, Lo/FeatureInfo;->c(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-direct {p0}, Lo/PendingTransactionActions;->g()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lo/FeatureInfo;->c(ZLjava/lang/String;)V

    .line 259
    iget-object v0, p0, Lo/PendingTransactionActions;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/PendingTransactionActions;->e:Lo/WindowVisibilityItem;

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lo/PendingTransactionActions;->e:Lo/WindowVisibilityItem;

    invoke-virtual {p1}, Lo/WindowVisibilityItem;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized d(Lo/FileBackupHelperBase;ZZZZ)Lo/PendingTransactionActions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/FileBackupHelperBase;",
            "ZZZZ)",
            "Lo/PendingTransactionActions<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    .line 113
    :try_start_0
    iput-object p1, p0, Lo/PendingTransactionActions;->n:Lo/FileBackupHelperBase;

    .line 114
    iput-boolean p2, p0, Lo/PendingTransactionActions;->q:Z

    .line 115
    iput-boolean p3, p0, Lo/PendingTransactionActions;->s:Z

    .line 116
    iput-boolean p4, p0, Lo/PendingTransactionActions;->t:Z

    .line 117
    iput-boolean p5, p0, Lo/PendingTransactionActions;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized d()V
    .locals 3

    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lo/PendingTransactionActions;->j:Lo/IntentFilterVerificationInfo;

    invoke-virtual {v0}, Lo/IntentFilterVerificationInfo;->c()V

    .line 268
    invoke-direct {p0}, Lo/PendingTransactionActions;->g()Z

    move-result v0

    const-string v1, "Not yet complete!"

    invoke-static {v0, v1}, Lo/FeatureInfo;->c(ZLjava/lang/String;)V

    .line 269
    iget-object v0, p0, Lo/PendingTransactionActions;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Can\'t decrement below 0"

    .line 270
    invoke-static {v1, v2}, Lo/FeatureInfo;->c(ZLjava/lang/String;)V

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lo/PendingTransactionActions;->e:Lo/WindowVisibilityItem;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lo/PendingTransactionActions;->e:Lo/WindowVisibilityItem;

    invoke-virtual {v0}, Lo/WindowVisibilityItem;->i()V

    .line 276
    :cond_1
    invoke-direct {p0}, Lo/PendingTransactionActions;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method e()V
    .locals 2

    .line 194
    invoke-direct {p0}, Lo/PendingTransactionActions;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lo/PendingTransactionActions;->v:Z

    .line 199
    iget-object v0, p0, Lo/PendingTransactionActions;->w:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a()V

    .line 200
    iget-object v0, p0, Lo/PendingTransactionActions;->h:Lo/ResumeActivityItem;

    iget-object v1, p0, Lo/PendingTransactionActions;->n:Lo/FileBackupHelperBase;

    invoke-interface {v0, p0, v1}, Lo/ResumeActivityItem;->e(Lo/PendingTransactionActions;Lo/FileBackupHelperBase;)V

    return-void
.end method

.method declared-synchronized e(Lo/SyncActivityTooManyDeletes;)V
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lo/PendingTransactionActions;->e:Lo/WindowVisibilityItem;

    iget-object v1, p0, Lo/PendingTransactionActions;->b:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {p1, v0, v1}, Lo/SyncActivityTooManyDeletes;->d(Lo/Slice;Lcom/bumptech/glide/load/DataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    new-instance v0, Lcom/bumptech/glide/load/engine/CallbackException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/CallbackException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method j()V
    .locals 4

    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lo/PendingTransactionActions;->j:Lo/IntentFilterVerificationInfo;

    invoke-virtual {v0}, Lo/IntentFilterVerificationInfo;->c()V

    .line 332
    iget-boolean v0, p0, Lo/PendingTransactionActions;->v:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0}, Lo/PendingTransactionActions;->f()V

    .line 334
    monitor-exit p0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    invoke-virtual {v0}, Lo/PendingTransactionActions$ActionBar;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 337
    iget-boolean v0, p0, Lo/PendingTransactionActions;->y:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lo/PendingTransactionActions;->y:Z

    .line 342
    iget-object v1, p0, Lo/PendingTransactionActions;->n:Lo/FileBackupHelperBase;

    .line 344
    iget-object v2, p0, Lo/PendingTransactionActions;->c:Lo/PendingTransactionActions$ActionBar;

    invoke-virtual {v2}, Lo/PendingTransactionActions$ActionBar;->e()Lo/PendingTransactionActions$ActionBar;

    move-result-object v2

    .line 347
    invoke-virtual {v2}, Lo/PendingTransactionActions$ActionBar;->b()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lo/PendingTransactionActions;->c(I)V

    .line 348
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    iget-object v0, p0, Lo/PendingTransactionActions;->h:Lo/ResumeActivityItem;

    const/4 v3, 0x0

    invoke-interface {v0, p0, v1, v3}, Lo/ResumeActivityItem;->d(Lo/PendingTransactionActions;Lo/FileBackupHelperBase;Lo/WindowVisibilityItem;)V

    .line 352
    invoke-virtual {v2}, Lo/PendingTransactionActions$ActionBar;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PendingTransactionActions$Application;

    .line 353
    iget-object v2, v1, Lo/PendingTransactionActions$Application;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Lo/PendingTransactionActions$StateListAnimator;

    iget-object v1, v1, Lo/PendingTransactionActions$Application;->e:Lo/SyncActivityTooManyDeletes;

    invoke-direct {v3, p0, v1}, Lo/PendingTransactionActions$StateListAnimator;-><init>(Lo/PendingTransactionActions;Lo/SyncActivityTooManyDeletes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {p0}, Lo/PendingTransactionActions;->d()V

    return-void

    .line 338
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 348
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
