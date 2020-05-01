.class public final Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;
.super Ljava/util/LinkedList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/cl/util/NavigationLevelCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lcom/netflix/cl/model/AppView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/netflix/cl/model/AppView;)Z
    .locals 2

    .line 33
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 35
    invoke-super {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, p1}, Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;->add(Lcom/netflix/cl/model/AppView;)Z

    move-result p1

    return p1
.end method

.method public bridge contains(Lcom/netflix/cl/model/AppView;)Z
    .locals 0

    .line 31
    invoke-super {p0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    instance-of v0, p1, Lcom/netflix/cl/model/AppView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, p1}, Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;->contains(Lcom/netflix/cl/model/AppView;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 31
    invoke-super {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public bridge indexOf(Lcom/netflix/cl/model/AppView;)I
    .locals 0

    .line 31
    invoke-super {p0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    instance-of v0, p1, Lcom/netflix/cl/model/AppView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, p1}, Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;->indexOf(Lcom/netflix/cl/model/AppView;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge lastIndexOf(Lcom/netflix/cl/model/AppView;)I
    .locals 0

    .line 31
    invoke-super {p0, p1}, Ljava/util/LinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    instance-of v0, p1, Lcom/netflix/cl/model/AppView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, p1}, Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;->lastIndexOf(Lcom/netflix/cl/model/AppView;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge remove(Lcom/netflix/cl/model/AppView;)Z
    .locals 0

    .line 31
    invoke-super {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    instance-of v0, p1, Lcom/netflix/cl/model/AppView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    check-cast p1, Lcom/netflix/cl/model/AppView;

    invoke-virtual {p0, p1}, Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;->remove(Lcom/netflix/cl/model/AppView;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/netflix/cl/util/NavigationLevelCollector$navigationLevels$1;->getSize()I

    move-result v0

    return v0
.end method
