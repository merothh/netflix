.class public final Lo/StringBuffer$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StringBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
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
.field private static final a:Ljava/lang/Object;

.field private static c:Ljava/util/concurrent/Executor;


# instance fields
.field private final b:Lo/State$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/State$StateListAnimator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/StringBuffer$StateListAnimator;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 145
    sput-object v0, Lo/StringBuffer$StateListAnimator;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lo/State$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/State$StateListAnimator<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lo/StringBuffer$StateListAnimator;->b:Lo/State$StateListAnimator;

    return-void
.end method


# virtual methods
.method public c()Lo/StringBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/StringBuffer<",
            "TT;>;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lo/StringBuffer$StateListAnimator;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 130
    sget-object v0, Lo/StringBuffer$StateListAnimator;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lo/StringBuffer$StateListAnimator;->c:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 132
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lo/StringBuffer$StateListAnimator;->c:Ljava/util/concurrent/Executor;

    .line 134
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v0, Lo/StringBuffer$StateListAnimator;->c:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lo/StringBuffer$StateListAnimator;->e:Ljava/util/concurrent/Executor;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 134
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 137
    :cond_1
    :goto_0
    new-instance v0, Lo/StringBuffer;

    iget-object v1, p0, Lo/StringBuffer$StateListAnimator;->d:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lo/StringBuffer$StateListAnimator;->e:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lo/StringBuffer$StateListAnimator;->b:Lo/State$StateListAnimator;

    invoke-direct {v0, v1, v2, v3}, Lo/StringBuffer;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lo/State$StateListAnimator;)V

    return-object v0
.end method
