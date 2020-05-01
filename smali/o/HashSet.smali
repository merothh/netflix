.class public Lo/HashSet;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HashSet$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static volatile a:Lo/HashSet$TaskDescription;

.field private static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/ExecutorService;

.field public static final e:Ljava/util/concurrent/Executor;

.field private static l:Lo/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/HashSet<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Lo/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/HashSet<",
            "*>;"
        }
    .end annotation
.end field

.field private static o:Lo/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/HashSet<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Lo/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/HashSet<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/Object;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/Exception;

.field private j:Z

.field private k:Lo/ListIterator;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Dictionary<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Lo/Collection;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lo/HashSet;->c:Ljava/util/concurrent/ExecutorService;

    .line 43
    invoke-static {}, Lo/Collection;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lo/HashSet;->b:Ljava/util/concurrent/Executor;

    .line 48
    invoke-static {}, Lo/AbstractSet;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lo/HashSet;->e:Ljava/util/concurrent/Executor;

    .line 1027
    new-instance v0, Lo/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/HashSet;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/HashSet;->n:Lo/HashSet;

    .line 1028
    new-instance v0, Lo/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/HashSet;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/HashSet;->o:Lo/HashSet;

    .line 1029
    new-instance v0, Lo/HashSet;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/HashSet;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/HashSet;->l:Lo/HashSet;

    .line 1030
    new-instance v0, Lo/HashSet;

    invoke-direct {v0, v1}, Lo/HashSet;-><init>(Z)V

    sput-object v0, Lo/HashSet;->t:Lo/HashSet;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/HashSet;->m:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/HashSet;->m:Ljava/util/List;

    .line 104
    invoke-virtual {p0, p1}, Lo/HashSet;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/HashSet;->m:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lo/HashSet;->g()Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lo/HashSet;->b(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lo/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lo/HashSet<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 338
    invoke-static {p0, p1, v0}, Lo/HashSet;->d(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lo/AbstractMap;)Lo/HashSet;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lo/Enumeration;Lo/Dictionary;Lo/HashSet;Ljava/util/concurrent/Executor;Lo/AbstractMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Enumeration<",
            "TTContinuationResult;>;",
            "Lo/Dictionary<",
            "TTResult;TTContinuationResult;>;",
            "Lo/HashSet<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lo/AbstractMap;",
            ")V"
        }
    .end annotation

    .line 863
    :try_start_0
    new-instance v0, Lo/HashSet$2;

    invoke-direct {v0, p4, p0, p1, p2}, Lo/HashSet$2;-><init>(Lo/AbstractMap;Lo/Enumeration;Lo/Dictionary;Lo/HashSet;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 882
    new-instance p2, Lbolts/ExecutorException;

    invoke-direct {p2, p1}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lo/Enumeration;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static c()Lo/HashSet$TaskDescription;
    .locals 1

    .line 79
    sget-object v0, Lo/HashSet;->a:Lo/HashSet$TaskDescription;

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Lo/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lo/HashSet<",
            "TTResult;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 207
    sget-object p0, Lo/HashSet;->n:Lo/HashSet;

    return-object p0

    .line 209
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 210
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lo/HashSet;->o:Lo/HashSet;

    goto :goto_0

    :cond_1
    sget-object p0, Lo/HashSet;->l:Lo/HashSet;

    :goto_0
    return-object p0

    .line 212
    :cond_2
    new-instance v0, Lo/Enumeration;

    invoke-direct {v0}, Lo/Enumeration;-><init>()V

    .line 213
    invoke-virtual {v0, p0}, Lo/Enumeration;->e(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v0}, Lo/Enumeration;->d()Lo/HashSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lo/Enumeration;Lo/Dictionary;Lo/HashSet;Ljava/util/concurrent/Executor;Lo/AbstractMap;)V
    .locals 0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Lo/HashSet;->a(Lo/Enumeration;Lo/Dictionary;Lo/HashSet;Ljava/util/concurrent/Executor;Lo/AbstractMap;)V

    return-void
.end method

.method public static d(Ljava/lang/Exception;)Lo/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lo/HashSet<",
            "TTResult;>;"
        }
    .end annotation

    .line 221
    new-instance v0, Lo/Enumeration;

    invoke-direct {v0}, Lo/Enumeration;-><init>()V

    .line 222
    invoke-virtual {v0, p0}, Lo/Enumeration;->a(Ljava/lang/Exception;)V

    .line 223
    invoke-virtual {v0}, Lo/Enumeration;->d()Lo/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lo/AbstractMap;)Lo/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lo/AbstractMap;",
            ")",
            "Lo/HashSet<",
            "TTResult;>;"
        }
    .end annotation

    .line 346
    new-instance v0, Lo/Enumeration;

    invoke-direct {v0}, Lo/Enumeration;-><init>()V

    .line 348
    :try_start_0
    new-instance v1, Lo/HashSet$5;

    invoke-direct {v1, p2, v0, p0}, Lo/HashSet$5;-><init>(Lo/AbstractMap;Lo/Enumeration;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 366
    new-instance p1, Lbolts/ExecutorException;

    invoke-direct {p1, p0}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, p1}, Lo/Enumeration;->a(Ljava/lang/Exception;)V

    .line 369
    :goto_0
    invoke-virtual {v0}, Lo/Enumeration;->d()Lo/HashSet;

    move-result-object p0

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 953
    iget-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 954
    :try_start_0
    iget-object v1, p0, Lo/HashSet;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/Dictionary;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    :try_start_1
    invoke-interface {v2, p0}, Lo/Dictionary;->a(Lo/HashSet;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 960
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 958
    throw v1

    :cond_0
    const/4 v1, 0x0

    .line 963
    iput-object v1, p0, Lo/HashSet;->m:Ljava/util/List;

    .line 964
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lo/HashSet;->f:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method a(Ljava/lang/Exception;)Z
    .locals 3

    .line 1003
    iget-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_0
    iget-boolean v1, p0, Lo/HashSet;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1005
    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 1007
    iput-boolean v1, p0, Lo/HashSet;->g:Z

    .line 1008
    iput-object p1, p0, Lo/HashSet;->i:Ljava/lang/Exception;

    .line 1009
    iput-boolean v2, p0, Lo/HashSet;->h:Z

    .line 1010
    iget-object p1, p0, Lo/HashSet;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1011
    invoke-direct {p0}, Lo/HashSet;->h()V

    .line 1012
    iget-boolean p1, p0, Lo/HashSet;->h:Z

    if-nez p1, :cond_1

    invoke-static {}, Lo/HashSet;->c()Lo/HashSet$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1013
    new-instance p1, Lo/ListIterator;

    invoke-direct {p1, p0}, Lo/ListIterator;-><init>(Lo/HashSet;)V

    iput-object p1, p0, Lo/HashSet;->k:Lo/ListIterator;

    .line 1014
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 1015
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-boolean v1, p0, Lo/HashSet;->j:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method b(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_0
    iget-boolean v1, p0, Lo/HashSet;->g:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 989
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 991
    iput-boolean v1, p0, Lo/HashSet;->g:Z

    .line 992
    iput-object p1, p0, Lo/HashSet;->f:Ljava/lang/Object;

    .line 993
    iget-object p1, p0, Lo/HashSet;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 994
    invoke-direct {p0}, Lo/HashSet;->h()V

    .line 995
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 996
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Lo/Dictionary;Ljava/util/concurrent/Executor;Lo/AbstractMap;)Lo/HashSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Dictionary<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lo/AbstractMap;",
            ")",
            "Lo/HashSet<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 647
    new-instance v6, Lo/Enumeration;

    invoke-direct {v6}, Lo/Enumeration;-><init>()V

    .line 648
    iget-object v7, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v7

    .line 649
    :try_start_0
    invoke-virtual {p0}, Lo/HashSet;->d()Z

    move-result v8

    if-nez v8, :cond_0

    .line 651
    iget-object v9, p0, Lo/HashSet;->m:Ljava/util/List;

    new-instance v10, Lo/HashSet$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo/HashSet$1;-><init>(Lo/HashSet;Lo/Enumeration;Lo/Dictionary;Ljava/util/concurrent/Executor;Lo/AbstractMap;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 661
    invoke-static {v6, p1, p0, p2, p3}, Lo/HashSet;->a(Lo/Enumeration;Lo/Dictionary;Lo/HashSet;Ljava/util/concurrent/Executor;Lo/AbstractMap;)V

    .line 663
    :cond_1
    invoke-virtual {v6}, Lo/Enumeration;->d()Lo/HashSet;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 659
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-boolean v1, p0, Lo/HashSet;->g:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(Lo/Dictionary;)Lo/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/Dictionary<",
            "TTResult;TTContinuationResult;>;)",
            "Lo/HashSet<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 672
    sget-object v0, Lo/HashSet;->b:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lo/HashSet;->d(Lo/Dictionary;Ljava/util/concurrent/Executor;Lo/AbstractMap;)Lo/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lo/HashSet;->j()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method g()Z
    .locals 3

    .line 971
    iget-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_0
    iget-boolean v1, p0, Lo/HashSet;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 973
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 975
    iput-boolean v1, p0, Lo/HashSet;->g:Z

    .line 976
    iput-boolean v1, p0, Lo/HashSet;->j:Z

    .line 977
    iget-object v2, p0, Lo/HashSet;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 978
    invoke-direct {p0}, Lo/HashSet;->h()V

    .line 979
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 980
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()Ljava/lang/Exception;
    .locals 2

    .line 164
    iget-object v0, p0, Lo/HashSet;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lo/HashSet;->i:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 166
    iput-boolean v1, p0, Lo/HashSet;->h:Z

    .line 167
    iget-object v1, p0, Lo/HashSet;->k:Lo/ListIterator;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lo/HashSet;->k:Lo/ListIterator;

    invoke-virtual {v1}, Lo/ListIterator;->a()V

    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Lo/HashSet;->k:Lo/ListIterator;

    .line 172
    :cond_0
    iget-object v1, p0, Lo/HashSet;->i:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
