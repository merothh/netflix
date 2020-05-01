.class public abstract Lio/realm/RealmObject;
.super Ljava/lang/Object;
.source "RealmObject.java"

# interfaces
.implements Lio/realm/RealmModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmChangeListener",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 345
    if-nez p0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    if-nez p1, :cond_1

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_5

    .line 352
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 353
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 355
    iget-object v1, v0, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    invoke-virtual {v1}, Lio/realm/HandlerController;->isAutoRefreshEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You can\'t register a listener from a non-Looper thread or IntentService thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_2
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getListeners$realm()Ljava/util/List;

    move-result-object v1

    .line 359
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 360
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_3
    invoke-static {p0}, Lio/realm/RealmObject;->isLoaded(Lio/realm/RealmModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 366
    iget-object v0, v0, Lio/realm/BaseRealm;->handlerController:Lio/realm/HandlerController;

    invoke-virtual {v0, p0}, Lio/realm/HandlerController;->addToRealmObjects(Lio/realm/internal/RealmObjectProxy;)V

    .line 371
    :cond_4
    return-void

    .line 369
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot add listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asObservable(Lio/realm/RealmModel;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)",
            "Lrx/Observable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 495
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 496
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 497
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    .line 498
    instance-of v1, v0, Lio/realm/Realm;

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v1}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v1

    check-cast v0, Lio/realm/Realm;

    invoke-interface {v1, v0, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/Realm;Lio/realm/RealmModel;)Lrx/Observable;

    move-result-object v0

    .line 505
    :goto_0
    return-object v0

    .line 500
    :cond_0
    instance-of v1, v0, Lio/realm/DynamicRealm;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 501
    check-cast v1, Lio/realm/DynamicRealm;

    .line 502
    check-cast p0, Lio/realm/DynamicRealmObject;

    .line 504
    iget-object v0, v0, Lio/realm/BaseRealm;->configuration:Lio/realm/RealmConfiguration;

    invoke-virtual {v0}, Lio/realm/RealmConfiguration;->getRxFactory()Lio/realm/rx/RxObservableFactory;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Lio/realm/rx/RxObservableFactory;->from(Lio/realm/DynamicRealm;Lio/realm/DynamicRealmObject;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    .line 507
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " does not support RxJava."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " See https://realm.io/docs/java/latest/#rxjava for more details."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create Observables from unmanaged RealmObjects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteFromRealm(Lio/realm/RealmModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 95
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Object not managed by Realm, so it cannot be removed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 101
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 109
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->moveLastOver(J)V

    .line 111
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    sget-object v1, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    invoke-virtual {v0, v1}, Lio/realm/ProxyState;->setRow$realm(Lio/realm/internal/Row;)V

    .line 112
    return-void
.end method

.method public static isLoaded(Lio/realm/RealmModel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 235
    instance-of v1, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    .line 236
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 237
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 238
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getPendingQuery$realm()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->isCompleted$realm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isManaged(Lio/realm/RealmModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    .line 287
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    return v0
.end method

.method public static isValid(Lio/realm/RealmModel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 144
    instance-of v1, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    .line 145
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 146
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/realm/internal/Row;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load(Lio/realm/RealmModel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)Z"
        }
    .end annotation

    .prologue
    .line 310
    invoke-static {p0}, Lio/realm/RealmObject;->isLoaded(Lio/realm/RealmModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    .line 313
    :cond_0
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_1

    .line 316
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->onCompleted$realm()Z

    move-result v0

    goto :goto_0

    .line 318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;",
            "Lio/realm/RealmChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 395
    if-nez p0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Object should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    if-nez p1, :cond_1

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Listener should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_1
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_2

    .line 402
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 403
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 404
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getListeners$realm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 408
    return-void

    .line 406
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot remove listener from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeChangeListeners(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(TE;)V"
        }
    .end annotation

    .prologue
    .line 424
    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    .line 425
    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    .line 426
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 427
    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getListeners$realm()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 431
    return-void

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/RealmModel;",
            ">(",
            "Lio/realm/RealmChangeListener",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {p0, p1}, Lio/realm/RealmObject;->addChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 333
    return-void
.end method

.method public final asObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lio/realm/RealmObject;",
            ">()",
            "Lrx/Observable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-static {p0}, Lio/realm/RealmObject;->asObservable(Lio/realm/RealmModel;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final deleteFromRealm()V
    .locals 0

    .prologue
    .line 82
    invoke-static {p0}, Lio/realm/RealmObject;->deleteFromRealm(Lio/realm/RealmModel;)V

    .line 83
    return-void
.end method

.method public final isLoaded()Z
    .locals 1

    .prologue
    .line 191
    invoke-static {p0}, Lio/realm/RealmObject;->isLoaded(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 264
    invoke-static {p0}, Lio/realm/RealmObject;->isManaged(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Lio/realm/RealmObject;->isValid(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final load()Z
    .locals 1

    .prologue
    .line 298
    invoke-static {p0}, Lio/realm/RealmObject;->load(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public final removeChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 0

    .prologue
    .line 382
    invoke-static {p0, p1}, Lio/realm/RealmObject;->removeChangeListener(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V

    .line 383
    return-void
.end method

.method public final removeChangeListeners()V
    .locals 0

    .prologue
    .line 414
    invoke-static {p0}, Lio/realm/RealmObject;->removeChangeListeners(Lio/realm/RealmModel;)V

    .line 415
    return-void
.end method
