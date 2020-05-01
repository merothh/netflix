.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$TaskDescription;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
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
.field static final c:Ljava/lang/Object;


# instance fields
.field private a:Lo/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Looper<",
            "Lo/ClassFormatError<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.TaskDescription;>;"
        }
    .end annotation
.end field

.field b:I

.field final d:Ljava/lang/Object;

.field volatile e:Ljava/lang/Object;

.field private final f:Ljava/lang/Runnable;

.field private g:I

.field private h:Z

.field private volatile i:Ljava/lang/Object;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    .line 66
    new-instance v0, Lo/Looper;

    invoke-direct {v0}, Lo/Looper;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Lo/Looper;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Landroidx/lifecycle/LiveData;->b:I

    .line 72
    sget-object v0, Landroidx/lifecycle/LiveData;->c:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->i:Ljava/lang/Object;

    .line 75
    iput-object v0, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I

    .line 82
    new-instance v0, Landroidx/lifecycle/LiveData$4;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData$4;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Runnable;

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 3

    .line 442
    invoke-static {}, Lo/Parcelable;->b()Lo/Parcelable;

    move-result-object v0

    invoke-virtual {v0}, Lo/Parcelable;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Landroidx/lifecycle/LiveData$TaskDescription;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.TaskDescription;)V"
        }
    .end annotation

    .line 96
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$TaskDescription;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$TaskDescription;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$TaskDescription;->a(Z)V

    return-void

    .line 108
    :cond_1
    iget v0, p1, Landroidx/lifecycle/LiveData$TaskDescription;->d:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->g:I

    if-lt v0, v1, :cond_2

    return-void

    .line 111
    :cond_2
    iput v1, p1, Landroidx/lifecycle/LiveData$TaskDescription;->d:I

    .line 113
    iget-object p1, p1, Landroidx/lifecycle/LiveData$TaskDescription;->e:Lo/ClassFormatError;

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->i:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lo/ClassFormatError;->onChanged(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method a(Landroidx/lifecycle/LiveData$TaskDescription;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.TaskDescription;)V"
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 119
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->j:Z

    return-void

    .line 122
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->h:Z

    :cond_1
    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->j:Z

    if-eqz p1, :cond_2

    .line 126
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LiveData$TaskDescription;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->a:Lo/Looper;

    .line 130
    invoke-virtual {v1}, Lo/Looper;->c()Lo/Looper$TaskDescription;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$TaskDescription;

    invoke-direct {p0, v2}, Landroidx/lifecycle/LiveData;->d(Landroidx/lifecycle/LiveData$TaskDescription;)V

    .line 132
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData;->j:Z

    if-eqz v2, :cond_3

    .line 137
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->j:Z

    if-nez v1, :cond_1

    .line 138
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->h:Z

    return-void
.end method

.method public a(Lo/UnicodeScript;Lo/ClassFormatError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UnicodeScript;",
            "Lo/ClassFormatError<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observe"

    .line 171
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->c(Ljava/lang/String;)V

    .line 172
    invoke-interface {p1}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->d()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Lo/UnicodeScript;Lo/ClassFormatError;)V

    .line 177
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->a:Lo/Looper;

    invoke-virtual {v1, p2, v0}, Lo/Looper;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LiveData$TaskDescription;

    if-eqz p2, :cond_2

    .line 178
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData$TaskDescription;->a(Lo/UnicodeScript;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    return-void

    .line 185
    :cond_3
    invoke-interface {p1}, Lo/UnicodeScript;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->a(Lo/ClassCircularityError;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/LiveData;->c:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 273
    :cond_1
    invoke-static {}, Lo/Parcelable;->b()Lo/Parcelable;

    move-result-object p1

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo/Parcelable;->b(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 269
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 353
    iget v0, p0, Landroidx/lifecycle/LiveData;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->i:Ljava/lang/Object;

    .line 302
    sget-object v1, Landroidx/lifecycle/LiveData;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "setValue"

    .line 286
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->c(Ljava/lang/String;)V

    .line 287
    iget v0, p0, Landroidx/lifecycle/LiveData;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I

    .line 288
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->i:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 289
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/LiveData$TaskDescription;)V

    return-void
.end method

.method public e(Lo/ClassFormatError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ClassFormatError<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    .line 224
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->c(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->a:Lo/Looper;

    invoke-virtual {v0, p1}, Lo/Looper;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$TaskDescription;

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$TaskDescription;->e()V

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$TaskDescription;->a(Z)V

    return-void
.end method
