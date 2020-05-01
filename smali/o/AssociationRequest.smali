.class Lo/AssociationRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClipDescription;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ClipboardManager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/AssociationRequest;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lo/AssociationRequest;->c:Z

    .line 64
    iget-object v0, p0, Lo/AssociationRequest;->b:Ljava/util/Set;

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

    check-cast v1, Lo/ClipboardManager;

    .line 65
    invoke-interface {v1}, Lo/ClipboardManager;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lo/ClipboardManager;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lo/AssociationRequest;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c()V
    .locals 2

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lo/AssociationRequest;->d:Z

    .line 57
    iget-object v0, p0, Lo/AssociationRequest;->b:Ljava/util/Set;

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

    check-cast v1, Lo/ClipboardManager;

    .line 58
    invoke-interface {v1}, Lo/ClipboardManager;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lo/AssociationRequest;->d:Z

    .line 50
    iget-object v0, p0, Lo/AssociationRequest;->b:Ljava/util/Set;

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

    check-cast v1, Lo/ClipboardManager;

    .line 51
    invoke-interface {v1}, Lo/ClipboardManager;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lo/ClipboardManager;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lo/AssociationRequest;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget-boolean v0, p0, Lo/AssociationRequest;->c:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p1}, Lo/ClipboardManager;->b()V

    goto :goto_0

    .line 36
    :cond_0
    iget-boolean v0, p0, Lo/AssociationRequest;->d:Z

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p1}, Lo/ClipboardManager;->d()V

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p1}, Lo/ClipboardManager;->e()V

    :goto_0
    return-void
.end method
