.class public final Lio/realm/RealmList;
.super Ljava/util/AbstractList;
.source "RealmList.java"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Lio/realm/OrderedRealmCollection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected className:Ljava/lang/String;

.field protected clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final managedMode:Z

.field protected realm:Lio/realm/BaseRealm;

.field private unmanagedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected view:Lio/realm/internal/LinkView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    .line 75
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lio/realm/internal/LinkView;Lio/realm/BaseRealm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lio/realm/internal/LinkView;",
            "Lio/realm/BaseRealm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    .line 104
    iput-object p1, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    .line 105
    iput-object p2, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    .line 106
    iput-object p3, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    .line 107
    return-void
.end method

.method static synthetic access$100(Lio/realm/RealmList;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method static synthetic access$200(Lio/realm/RealmList;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method static synthetic access$300(Lio/realm/RealmList;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method static synthetic access$400(Lio/realm/RealmList;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method static synthetic access$500(Lio/realm/RealmList;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    return v0
.end method

.method private checkValidObject(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 739
    if-nez p1, :cond_0

    .line 740
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "RealmList does not accept null values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_0
    return-void
.end method

.method private checkValidView()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 753
    iget-object v0, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 754
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Realm instance has been closed or this object or its parent has been deleted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_1
    return-void
.end method

.method private copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 241
    instance-of v0, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 242
    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 244
    instance-of v1, v0, Lio/realm/DynamicRealmObject;

    if-eqz v1, :cond_4

    .line 245
    iget-object v1, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    invoke-virtual {v1}, Lio/realm/internal/LinkView;->getTargetTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v1}, Lio/realm/RealmSchema;->getSchemaForTable(Lio/realm/internal/Table;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    .line 246
    check-cast v1, Lio/realm/DynamicRealmObject;

    invoke-virtual {v1}, Lio/realm/DynamicRealmObject;->getType()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v3

    iget-object v4, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    if-ne v3, v4, :cond_2

    .line 248
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-object p1

    .line 253
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The object has a different type from list\'s. Type of the list is \'%s\', type of object is \'%s\'."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2
    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-wide v2, v1, Lio/realm/BaseRealm;->threadId:J

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    iget-wide v0, v0, Lio/realm/BaseRealm;->threadId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot copy DynamicRealmObject between Realm instances."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot copy an object to a Realm instance created in another thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_4
    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 267
    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v0

    if-eq v1, v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot copy an object from another Realm instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_5
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    check-cast v0, Lio/realm/Realm;

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/realm/Realm;->getTable(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->hasPrimaryKey()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 278
    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    goto/16 :goto_0

    .line 280
    :cond_6
    invoke-virtual {v0, p1}, Lio/realm/Realm;->copyToRealm(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private isAttached()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(ILio/realm/RealmModel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p2}, Lio/realm/RealmList;->checkValidObject(Lio/realm/RealmModel;)V

    .line 163
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_2

    .line 164
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidView()V

    .line 165
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    invoke-direct {p0, p2}, Lio/realm/RealmList;->copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 169
    iget-object v1, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    int-to-long v2, p1

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/realm/internal/LinkView;->insert(JJ)V

    .line 173
    :goto_0
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 174
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p2, Lio/realm/RealmModel;

    invoke-virtual {p0, p1, p2}, Lio/realm/RealmList;->add(ILio/realm/RealmModel;)V

    return-void
.end method

.method public add(Lio/realm/RealmModel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lio/realm/RealmList;->checkValidObject(Lio/realm/RealmModel;)V

    .line 195
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidView()V

    .line 197
    invoke-direct {p0, p1}, Lio/realm/RealmList;->copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 198
    iget-object v1, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/LinkView;->add(J)V

    .line 202
    :goto_0
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 203
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lio/realm/RealmModel;

    invoke-virtual {p0, p1}, Lio/realm/RealmList;->add(Lio/realm/RealmModel;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidView()V

    .line 322
    iget-object v0, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->clear()V

    .line 326
    :goto_0
    iget v0, p0, Lio/realm/RealmList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/realm/RealmList;->modCount:I

    .line 327
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    iget-boolean v1, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->checkIfValid()V

    .line 694
    instance-of v1, p1, Lio/realm/internal/RealmObjectProxy;

    if-eqz v1, :cond_0

    .line 695
    check-cast p1, Lio/realm/internal/RealmObjectProxy;

    .line 696
    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v1}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/ProxyState;->getRealm$realm()Lio/realm/BaseRealm;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/BaseRealm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    sget-object v2, Lio/realm/internal/InvalidRow;->INSTANCE:Lio/realm/internal/InvalidRow;

    if-eq v1, v2, :cond_0

    .line 697
    iget-object v0, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    invoke-interface {p1}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/LinkView;->contains(J)Z

    move-result v0

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 701
    :cond_1
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Lio/realm/RealmModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 446
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_0

    .line 447
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidView()V

    .line 448
    iget-object v0, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lio/realm/internal/LinkView;->getTargetRowIndex(J)J

    move-result-wide v0

    .line 449
    iget-object v2, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    iget-object v3, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/RealmList;->className:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v1}, Lio/realm/BaseRealm;->get(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/RealmModel;

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public isManaged()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 711
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_0

    .line 712
    new-instance v0, Lio/realm/RealmList$RealmItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/realm/RealmList$RealmItr;-><init>(Lio/realm/RealmList;Lio/realm/RealmList$1;)V

    .line 714
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/RealmList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 731
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_0

    .line 732
    new-instance v0, Lio/realm/RealmList$RealmListItr;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmList$RealmListItr;-><init>(Lio/realm/RealmList;I)V

    .line 734
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(I)Lio/realm/RealmModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 340
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidView()V

    .line 342
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/LinkView;->remove(J)V

    .line 347
    :goto_0
    iget v1, p0, Lio/realm/RealmList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/realm/RealmList;->modCount:I

    .line 348
    return-object v0

    .line 345
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->remove(I)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 370
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Objects can only be removed from inside a write transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 394
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/RealmList;->realm:Lio/realm/BaseRealm;

    invoke-virtual {v0}, Lio/realm/BaseRealm;->isInTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Objects can only be removed from inside a write transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILio/realm/RealmModel;)Lio/realm/RealmModel;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0, p2}, Lio/realm/RealmList;->checkValidObject(Lio/realm/RealmModel;)V

    .line 227
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidView()V

    .line 229
    invoke-direct {p0, p2}, Lio/realm/RealmList;->copyToRealmIfNeeded(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    .line 230
    invoke-virtual {p0, p1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    int-to-long v4, p1

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lio/realm/internal/LinkView;->set(JJ)V

    move-object v0, v1

    .line 236
    :goto_0
    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmModel;

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p2, Lio/realm/RealmModel;

    invoke-virtual {p0, p1, p2}, Lio/realm/RealmList;->set(ILio/realm/RealmModel;)Lio/realm/RealmModel;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 547
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_1

    .line 548
    invoke-direct {p0}, Lio/realm/RealmList;->checkValidView()V

    .line 549
    iget-object v0, p0, Lio/realm/RealmList;->view:Lio/realm/internal/LinkView;

    invoke-virtual {v0}, Lio/realm/internal/LinkView;->size()J

    move-result-wide v0

    .line 550
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 552
    :goto_0
    return v0

    .line 550
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lio/realm/RealmList;->unmanagedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/RealmList;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string/jumbo v0, "@["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lio/realm/RealmList;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 764
    const-string/jumbo v0, "invalid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_0
    const-string/jumbo v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 761
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 767
    iget-boolean v0, p0, Lio/realm/RealmList;->managedMode:Z

    if-eqz v0, :cond_4

    .line 768
    invoke-virtual {p0, v1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realmGet$proxyState()Lio/realm/ProxyState;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ProxyState;->getRow$realm()Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getIndex()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 772
    :goto_2
    invoke-virtual {p0}, Lio/realm/RealmList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    .line 773
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 766
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 770
    :cond_4
    invoke-virtual {p0, v1}, Lio/realm/RealmList;->get(I)Lio/realm/RealmModel;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
