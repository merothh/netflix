.class public Lo/kN;
.super Lo/Object$Application;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/cast/framework/CastContext;

.field private final b:Lo/kK;

.field private final d:Lo/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastContext;Lo/kK;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lo/Object$Application;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/Object;->c(Landroid/content/Context;)Lo/Object;

    move-result-object p1

    iput-object p1, p0, Lo/kN;->d:Lo/Object;

    .line 25
    iput-object p2, p0, Lo/kN;->a:Lcom/google/android/gms/cast/framework/CastContext;

    .line 26
    iput-object p3, p0, Lo/kN;->b:Lo/kK;

    return-void
.end method

.method private d()V
    .locals 5

    .line 109
    iget-object v0, p0, Lo/kN;->d:Lo/Object;

    invoke-virtual {v0}, Lo/Object;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Object$LoaderManager;

    .line 110
    iget-object v2, p0, Lo/kN;->a:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastContext;->getMergedSelector()Lo/OutOfMemoryError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/Object$LoaderManager;->a(Lo/OutOfMemoryError;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 111
    invoke-virtual {v1}, Lo/Object$LoaderManager;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "CafRouteManager"

    const-string v4, "handleExistingRoutes - route matches selector: %s"

    invoke-static {v3, v4, v2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    invoke-direct {p0, v1}, Lo/kN;->e(Lo/Object$LoaderManager;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Lo/Object$LoaderManager;)V
    .locals 7

    .line 118
    invoke-virtual {p1}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/adV;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "CafRouteManager"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 120
    invoke-virtual {p1}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "CafRouteManager handleAddedRoute - couldn\'t get UUID for route - routeId: %s"

    invoke-static {v3, p1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lo/Object$LoaderManager;->b()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {p1}, Lo/adV;->d(Lo/Object$LoaderManager;)Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {p1}, Lo/Object$LoaderManager;->h()Z

    move-result p1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object v0, v6, v1

    const/4 v1, 0x2

    aput-object v5, v6, v1

    const/4 v1, 0x3

    .line 129
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    const-string v1, "CafRouteManager handleAddedRoute - friendlyName: %s, uuid: %s, location: %s, isSelected: %b"

    .line 128
    invoke-static {v3, v1, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 131
    iget-object v1, p0, Lo/kN;->b:Lo/kK;

    invoke-interface {v1, v0, v4, v5, p1}, Lo/kK;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "CafRouteManager"

    const-string v1, "enable - enabling router"

    .line 31
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lo/kN;->d:Lo/Object;

    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lo/kN;->a:Lcom/google/android/gms/cast/framework/CastContext;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastContext;->getMergedSelector()Lo/OutOfMemoryError;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lo/Object;->e(Lo/OutOfMemoryError;Lo/Object$Application;I)V

    .line 34
    invoke-direct {p0}, Lo/kN;->d()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lo/Object$LoaderManager;
    .locals 3

    .line 48
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lo/kN;->d:Lo/Object;

    invoke-virtual {v0}, Lo/Object;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Object$LoaderManager;

    .line 50
    invoke-virtual {v1}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/adV;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 2

    const-string v0, "CafRouteManager"

    const-string v1, "disable - disabling router"

    .line 40
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lo/kN;->d:Lo/Object;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p0}, Lo/Object;->e(Lo/Object$Application;)V

    :cond_0
    return-void
.end method

.method public onRouteAdded(Lo/Object;Lo/Object$LoaderManager;)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lo/Object$Application;->onRouteAdded(Lo/Object;Lo/Object$LoaderManager;)V

    .line 82
    invoke-direct {p0, p2}, Lo/kN;->e(Lo/Object$LoaderManager;)V

    return-void
.end method

.method public onRouteChanged(Lo/Object;Lo/Object$LoaderManager;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    invoke-virtual {p2}, Lo/Object$LoaderManager;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CafRouteManager"

    const-string v2, "CafRouteManager onRouteChanged - name: %s, uuid: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 103
    invoke-super {p0, p1, p2}, Lo/Object$Application;->onRouteChanged(Lo/Object;Lo/Object$LoaderManager;)V

    .line 105
    invoke-direct {p0, p2}, Lo/kN;->e(Lo/Object$LoaderManager;)V

    return-void
.end method

.method public onRouteRemoved(Lo/Object;Lo/Object$LoaderManager;)V
    .locals 4

    .line 87
    invoke-super {p0, p1, p2}, Lo/Object$Application;->onRouteRemoved(Lo/Object;Lo/Object$LoaderManager;)V

    .line 89
    invoke-virtual {p2}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/adV;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "CafRouteManager"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    .line 91
    invoke-virtual {p2}, Lo/Object$LoaderManager;->c()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "CafRouteManager onRouteRemoved - couldn\'t get UUID for route - routeId: %s"

    invoke-static {v2, p2, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 95
    invoke-virtual {p2}, Lo/Object$LoaderManager;->b()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    aput-object p1, v3, v0

    const-string p2, "CafRouteManager onRouteRemoved - name: %s, uuid: %s"

    invoke-static {v2, p2, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    iget-object p2, p0, Lo/kN;->b:Lo/kK;

    invoke-interface {p2, p1}, Lo/kK;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onRouteSelected(Lo/Object;Lo/Object$LoaderManager;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    invoke-virtual {p2}, Lo/Object$LoaderManager;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CafRouteManager"

    const-string v2, "CafRouteManager onRouteSelected - route: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    invoke-super {p0, p1, p2}, Lo/Object$Application;->onRouteSelected(Lo/Object;Lo/Object$LoaderManager;)V

    return-void
.end method

.method public onRouteUnselected(Lo/Object;Lo/Object$LoaderManager;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    invoke-virtual {p2}, Lo/Object$LoaderManager;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CafRouteManager"

    const-string v2, "CafRouteManager onRouteUnselected - route: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    invoke-super {p0, p1, p2, p3}, Lo/Object$Application;->onRouteUnselected(Lo/Object;Lo/Object$LoaderManager;I)V

    return-void
.end method
