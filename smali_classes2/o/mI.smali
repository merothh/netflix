.class public Lo/mI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ahu;


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/android/volley/Request$Priority;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/B;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lo/H;

.field private final f:Ljava/lang/Object;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/H;Ljava/net/URL;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/H;",
            "Ljava/net/URL;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0, p3}, Lo/mI;-><init>(Lo/H;Ljava/net/URL;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lo/H;Ljava/net/URL;Ljava/util/Map;Lcom/android/volley/Request$Priority;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/H;",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Request$Priority;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/mI;->d:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 56
    iput-object p1, p0, Lo/mI;->e:Lo/H;

    .line 57
    iput-object p2, p0, Lo/mI;->a:Ljava/net/URL;

    .line 58
    iput-object p3, p0, Lo/mI;->b:Ljava/util/Map;

    .line 59
    iput-object p4, p0, Lo/mI;->c:Lcom/android/volley/Request$Priority;

    .line 60
    iput-object p5, p0, Lo/mI;->f:Ljava/lang/Object;

    .line 61
    iput-object p6, p0, Lo/mI;->h:Ljava/util/List;

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "URL is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lo/H;Ljava/net/URL;Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/H;",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 49
    sget-object v4, Lcom/android/volley/Request$Priority;->a:Lcom/android/volley/Request$Priority;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lo/mI;-><init>(Lo/H;Ljava/net/URL;Ljava/util/Map;Lcom/android/volley/Request$Priority;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 69
    iget-object v0, p0, Lo/mI;->d:Ljava/util/List;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lo/mI;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/B;

    .line 71
    invoke-interface {v2}, Lo/B;->b()V

    goto :goto_0

    .line 73
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Lo/ahu$ActionBar;
    .locals 6

    .line 78
    iget-object v0, p0, Lo/mI;->e:Lo/H;

    iget-object v1, p0, Lo/mI;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/mI;->c:Lcom/android/volley/Request$Priority;

    iget-object v3, p0, Lo/mI;->b:Ljava/util/Map;

    iget-object v4, p0, Lo/mI;->f:Ljava/lang/Object;

    iget-object v5, p0, Lo/mI;->h:Ljava/util/List;

    invoke-interface/range {v0 .. v5}, Lo/H;->d(Ljava/lang/String;Lcom/android/volley/Request$Priority;Ljava/util/Map;Ljava/lang/Object;Ljava/util/List;)Lo/B;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lo/mI;->d:Ljava/util/List;

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v2, p0, Lo/mI;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    new-instance v1, Lo/mI$4;

    invoke-direct {v1, p0, v0}, Lo/mI$4;-><init>(Lo/mI;Lo/B;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 81
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method
