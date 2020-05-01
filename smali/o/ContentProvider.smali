.class public final Lo/ContentProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClipboardManager;


# instance fields
.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/UndoOwner<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 17
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/ContentProvider;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/UndoOwner<",
            "*>;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/ContentProvider;->e:Ljava/util/Set;

    invoke-static {v0}, Lo/FallbackCategoryProvider;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 43
    iget-object v0, p0, Lo/ContentProvider;->e:Ljava/util/Set;

    invoke-static {v0}, Lo/FallbackCategoryProvider;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/UndoOwner;

    .line 44
    invoke-interface {v1}, Lo/UndoOwner;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ContentProvider;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public c(Lo/UndoOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "*>;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lo/ContentProvider;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 29
    iget-object v0, p0, Lo/ContentProvider;->e:Ljava/util/Set;

    invoke-static {v0}, Lo/FallbackCategoryProvider;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/UndoOwner;

    .line 30
    invoke-interface {v1}, Lo/UndoOwner;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lo/UndoOwner;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/UndoOwner<",
            "*>;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lo/ContentProvider;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()V
    .locals 2

    .line 36
    iget-object v0, p0, Lo/ContentProvider;->e:Ljava/util/Set;

    invoke-static {v0}, Lo/FallbackCategoryProvider;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/UndoOwner;

    .line 37
    invoke-interface {v1}, Lo/UndoOwner;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method
