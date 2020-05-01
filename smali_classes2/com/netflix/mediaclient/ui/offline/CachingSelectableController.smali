.class public abstract Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;
.super Lo/OfPrimitive;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lo/RZ<",
        "*>;>",
        "Lo/OfPrimitive;"
    }
.end annotation


# instance fields
.field private cachedModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private cachedModelMapForBuilding:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "+",
            "Lo/BiConsumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private cachingEnabled:Z

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final selectedItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TU;>;"
        }
    .end annotation
.end field

.field private final selectionChangesListener:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

.field private final selectionInterceptor:Lo/OfPrimitive$Application;

.field private selectionMode:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 1

    const-string v0, "modelBuildingHandler"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffingHandler"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionChangesListener"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lo/OfPrimitive;-><init>(Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionChangesListener:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectedItemsMap:Ljava/util/Map;

    .line 23
    new-instance p1, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$StateListAnimator;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$StateListAnimator;-><init>(Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;)V

    check-cast p1, Lo/OfPrimitive$Application;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionInterceptor:Lo/OfPrimitive$Application;

    .line 27
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionInterceptor:Lo/OfPrimitive$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->addInterceptor(Lo/OfPrimitive$Application;)V

    return-void
.end method

.method private final addSelectionState(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionMode:Z

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectedItemsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/akz;->o(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 122
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 168
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BiConsumer;

    .line 123
    instance-of v3, v2, Lo/RZ;

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->isModelFromCache$NetflixApp_release(Lo/BiConsumer;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    move-object v3, v2

    check-cast v3, Lo/RZ;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lo/RZ;->d(Z)V

    .line 126
    invoke-virtual {v2}, Lo/BiConsumer;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lo/RZ;->i(Z)V

    .line 128
    :cond_1
    invoke-virtual {v2}, Lo/BiConsumer;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    .line 170
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 134
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectedItemsMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    :cond_3
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 172
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/BiConsumer;

    .line 138
    instance-of v2, v1, Lo/RZ;

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->isModelFromCache$NetflixApp_release(Lo/BiConsumer;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 139
    check-cast v1, Lo/RZ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/RZ;->d(Z)V

    .line 140
    invoke-virtual {v1, v2}, Lo/RZ;->i(Z)V

    goto :goto_2

    .line 145
    :cond_5
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachingEnabled:Z

    if-eqz v0, :cond_7

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 147
    check-cast p1, Ljava/lang/Iterable;

    .line 174
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 175
    move-object v2, v1

    check-cast v2, Lo/BiConsumer;

    .line 147
    invoke-virtual {v2}, Lo/BiConsumer;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 148
    :cond_6
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMap:Ljava/util/Map;

    :cond_7
    const/4 p1, 0x0

    .line 150
    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMapForBuilding:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lo/OfPrimitive$Application;)V
    .locals 1

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Lo/OfPrimitive;->addInterceptor(Lo/OfPrimitive$Application;)V

    .line 156
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionInterceptor:Lo/OfPrimitive$Application;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->removeInterceptor(Lo/OfPrimitive$Application;)V

    .line 157
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionInterceptor:Lo/OfPrimitive$Application;

    invoke-super {p0, p1}, Lo/OfPrimitive;->addInterceptor(Lo/OfPrimitive$Application;)V

    return-void
.end method

.method public final buildModels()V
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->isBuildingModels()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/akI;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMapForBuilding:Ljava/util/Map;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMapForBuilding:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/akI;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->data:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 57
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionMode:Z

    invoke-virtual {p0, v0, v2, v1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->buildModels(Ljava/lang/Object;ZLjava/util/Map;)V

    :cond_2
    return-void

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call `buildModels` directly. Call `setData` instead to trigger  a model refresh with new data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public abstract buildModels(Ljava/lang/Object;ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation
.end method

.method public finalInterceptor$NetflixApp_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->addSelectionState(Ljava/util/List;)V

    return-void
.end method

.method public final getCachingEnabled$NetflixApp_release()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachingEnabled:Z

    return v0
.end method

.method public final getSelectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectedItemsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lo/akz;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedItemsCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectedItemsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMap:Ljava/util/Map;

    return-void
.end method

.method public final invalidateCacheForModel(J)Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/BiConsumer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected final isItemSelected(Lo/RZ;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)Z"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectedItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lo/RZ;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isModelFromCache$NetflixApp_release(Lo/BiConsumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BiConsumer<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMapForBuilding:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/BiConsumer;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final setCachingEnabled$NetflixApp_release(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachingEnabled:Z

    return-void
.end method

.method public final setData(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 66
    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMap:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->data:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 68
    iget-boolean p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionMode:Z

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectedItemsMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 71
    :cond_0
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionMode:Z

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->requestModelBuild()V

    return-void
.end method

.method protected final toggleSelectedState(Lo/RZ;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->cachedModelMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lo/RZ;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BiConsumer;

    .line 32
    :cond_0
    invoke-virtual {p1}, Lo/RZ;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectedItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lo/RZ;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectedItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lo/RZ;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->requestModelBuild()V

    .line 39
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController;->selectionChangesListener:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;->e()V

    return-void
.end method
