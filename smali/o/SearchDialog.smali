.class public Lo/SearchDialog;
.super Ljava/util/Observable;
.source ""

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private A:Ljava/lang/String;

.field private C:I

.field private D:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private volatile i:Ljava/lang/String;

.field private volatile j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:J

.field private final u:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/ProfilerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lo/DeviceAdminInfo;

.field private final w:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/QueuedWork;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/ProcessMemoryState;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lo/StatsManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 75
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const-string v0, "https://notify.bugsnag.com"

    .line 37
    iput-object v0, p0, Lo/SearchDialog;->i:Ljava/lang/String;

    const-string v0, "https://sessions.bugsnag.com"

    .line 38
    iput-object v0, p0, Lo/SearchDialog;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lo/SearchDialog;->h:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lo/SearchDialog;->n:Z

    .line 46
    iput-boolean v1, p0, Lo/SearchDialog;->m:Z

    const/4 v2, 0x0

    .line 47
    iput-boolean v2, p0, Lo/SearchDialog;->o:Z

    const-wide/16 v3, 0x1388

    .line 48
    iput-wide v3, p0, Lo/SearchDialog;->l:J

    .line 49
    iput-boolean v1, p0, Lo/SearchDialog;->p:Z

    .line 50
    iput-boolean v1, p0, Lo/SearchDialog;->s:Z

    .line 52
    iput-boolean v2, p0, Lo/SearchDialog;->r:Z

    .line 54
    iput-wide v3, p0, Lo/SearchDialog;->t:J

    .line 58
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lo/SearchDialog;->w:Ljava/util/Collection;

    .line 59
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lo/SearchDialog;->u:Ljava/util/Collection;

    .line 60
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lo/SearchDialog;->y:Ljava/util/Collection;

    .line 62
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lo/SearchDialog;->x:Ljava/util/Collection;

    const/16 v1, 0x20

    .line 68
    iput v1, p0, Lo/SearchDialog;->C:I

    .line 76
    iput-object p1, p0, Lo/SearchDialog;->b:Ljava/lang/String;

    .line 77
    new-instance p1, Lo/DeviceAdminInfo;

    invoke-direct {p1}, Lo/DeviceAdminInfo;-><init>()V

    iput-object p1, p0, Lo/SearchDialog;->v:Lo/DeviceAdminInfo;

    .line 78
    iget-object p1, p0, Lo/SearchDialog;->v:Lo/DeviceAdminInfo;

    invoke-virtual {p1, p0}, Lo/DeviceAdminInfo;->addObserver(Ljava/util/Observer;)V

    :try_start_0
    const-string p1, "o.ResourcesManager"

    .line 82
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "DETECT_NDK_CRASHES"

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lo/SearchDialog;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    iput-boolean v2, p0, Lo/SearchDialog;->q:Z

    :goto_0
    return-void
.end method


# virtual methods
.method A()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/ProgressDialog;",
            ">;"
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lo/SearchDialog;->x:Ljava/util/Collection;

    return-object v0
.end method

.method protected B()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/ProcessMemoryState;",
            ">;"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lo/SearchDialog;->y:Ljava/util/Collection;

    return-object v0
.end method

.method public C()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 764
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bugsnag-Payload-Version"

    const-string v2, "4.0"

    .line 765
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v1, p0, Lo/SearchDialog;->b:Ljava/lang/String;

    const-string v2, "Bugsnag-Api-Key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lo/SystemServiceRegistry;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bugsnag-Sent-At"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public D()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bugsnag-Payload-Version"

    const-string v2, "1.0"

    .line 779
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v1, p0, Lo/SearchDialog;->b:Ljava/lang/String;

    const-string v2, "Bugsnag-Api-Key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lo/SystemServiceRegistry;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bugsnag-Sent-At"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/SearchDialog;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    if-gez p1, :cond_0

    const-string p1, "Ignoring invalid breadcrumb capacity. Must be >= 0."

    .line 634
    invoke-static {p1}, Lo/WallpaperColors;->b(Ljava/lang/String;)V

    return-void

    .line 637
    :cond_0
    iput p1, p0, Lo/SearchDialog;->C:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 281
    iput-object p1, p0, Lo/SearchDialog;->d:Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Lo/SearchDialog;->setChanged()V

    .line 283
    new-instance v0, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->l:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/SearchDialog;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lo/StatsManager;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 678
    iput-object p1, p0, Lo/SearchDialog;->z:Lo/StatsManager;

    return-void

    .line 676
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Delivery cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 0

    .line 596
    iput-boolean p1, p0, Lo/SearchDialog;->s:Z

    return-void
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .line 140
    iget-object v0, p0, Lo/SearchDialog;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 127
    iput-object p1, p0, Lo/SearchDialog;->c:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lo/SearchDialog;->setChanged()V

    .line 129
    new-instance v0, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->k:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/SearchDialog;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 702
    iput-boolean p1, p0, Lo/SearchDialog;->r:Z

    return-void
.end method

.method public b([Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lo/SearchDialog;->h:[Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lo/SearchDialog;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    iput-object p1, p0, Lo/SearchDialog;->i:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lo/SearchDialog;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/Integer;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lo/SearchDialog;->e:Ljava/lang/Integer;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 171
    iput-object p1, p0, Lo/SearchDialog;->a:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lo/SearchDialog;->setChanged()V

    .line 173
    new-instance v0, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->o:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/SearchDialog;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lo/SearchDialog;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iput-object p1, p0, Lo/SearchDialog;->j:Ljava/lang/String;

    return-void
.end method

.method protected e(Lo/QueuedWork;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lo/SearchDialog;->w:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    iget-object v0, p0, Lo/SearchDialog;->w:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e([Ljava/lang/String;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lo/SearchDialog;->g:[Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 407
    iput-object p1, p0, Lo/SearchDialog;->k:Ljava/lang/String;

    .line 408
    invoke-virtual {p0}, Lo/SearchDialog;->setChanged()V

    .line 409
    new-instance v0, Lcom/bugsnag/android/NativeInterface$ActionBar;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->p:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$ActionBar;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo/SearchDialog;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lo/SearchDialog;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .line 819
    iget-object v0, p0, Lo/SearchDialog;->h:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 823
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 824
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()[Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lo/SearchDialog;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/SearchDialog;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected h(Ljava/lang/String;)Z
    .locals 1

    .line 834
    iget-object v0, p0, Lo/SearchDialog;->f:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 838
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 839
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lo/SearchDialog;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lo/SearchDialog;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lo/SearchDialog;->n:Z

    return v0
.end method

.method protected l()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/QueuedWork;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lo/SearchDialog;->w:Ljava/util/Collection;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lo/SearchDialog;->p:Z

    return v0
.end method

.method public n()Lo/DeviceAdminInfo;
    .locals 1

    .line 489
    iget-object v0, p0, Lo/SearchDialog;->v:Lo/DeviceAdminInfo;

    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lo/SearchDialog;->m:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 584
    iget-boolean v0, p0, Lo/SearchDialog;->s:Z

    return v0
.end method

.method public q()J
    .locals 2

    .line 557
    iget-wide v0, p0, Lo/SearchDialog;->l:J

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lo/SearchDialog;->A:Ljava/lang/String;

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lo/SearchDialog;->o:Z

    return v0
.end method

.method protected t()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/ProfilerInfo;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lo/SearchDialog;->u:Ljava/util/Collection;

    return-object v0
.end method

.method public u()Lo/StatsManager;
    .locals 1

    .line 658
    iget-object v0, p0, Lo/SearchDialog;->z:Lo/StatsManager;

    return-object v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 94
    instance-of p1, p2, Lcom/bugsnag/android/NativeInterface$ActionBar;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lo/SearchDialog;->setChanged()V

    .line 96
    invoke-virtual {p0, p2}, Lo/SearchDialog;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public v()I
    .locals 1

    .line 648
    iget v0, p0, Lo/SearchDialog;->C:I

    return v0
.end method

.method public w()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Lo/SearchDialog;->q:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lo/SearchDialog;->r:Z

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 622
    iget-object v0, p0, Lo/SearchDialog;->D:Ljava/lang/String;

    return-object v0
.end method
