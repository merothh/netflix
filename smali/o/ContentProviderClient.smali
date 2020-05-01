.class public Lo/ContentProviderClient;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/QuickViewConstants;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/QuickViewConstants;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/ContentProviderClient;->a:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ContentProviderClient;->c:Ljava/util/List;

    return-void
.end method

.method private c(Lo/QuickViewConstants;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 75
    :cond_0
    iget-object v1, p0, Lo/ContentProviderClient;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 77
    iget-object v2, p0, Lo/ContentProviderClient;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 79
    invoke-interface {p1}, Lo/QuickViewConstants;->b()V

    if-eqz p2, :cond_3

    .line 81
    invoke-interface {p1}, Lo/QuickViewConstants;->i()V

    :cond_3
    return v0
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 152
    iget-object v0, p0, Lo/ContentProviderClient;->a:Ljava/util/Set;

    invoke-static {v0}, Lo/FallbackCategoryProvider;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/QuickViewConstants;

    .line 153
    invoke-interface {v1}, Lo/QuickViewConstants;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lo/QuickViewConstants;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    invoke-interface {v1}, Lo/QuickViewConstants;->b()V

    .line 155
    iget-boolean v2, p0, Lo/ContentProviderClient;->b:Z

    if-nez v2, :cond_1

    .line 156
    invoke-interface {v1}, Lo/QuickViewConstants;->c()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lo/ContentProviderClient;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lo/ContentProviderClient;->b:Z

    .line 99
    iget-object v0, p0, Lo/ContentProviderClient;->a:Ljava/util/Set;

    invoke-static {v0}, Lo/FallbackCategoryProvider;->a(Ljava/util/Collection;)Ljava/util/List;

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

    check-cast v1, Lo/QuickViewConstants;

    .line 100
    invoke-interface {v1}, Lo/QuickViewConstants;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-interface {v1}, Lo/QuickViewConstants;->b()V

    .line 102
    iget-object v2, p0, Lo/ContentProviderClient;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lo/QuickViewConstants;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lo/ContentProviderClient;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget-boolean v0, p0, Lo/ContentProviderClient;->b:Z

    if-nez v0, :cond_0

    .line 44
    invoke-interface {p1}, Lo/QuickViewConstants;->c()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p1}, Lo/QuickViewConstants;->b()V

    const/4 v0, 0x2

    const-string v1, "RequestTracker"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Paused, delaying request"

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    iget-object v0, p0, Lo/ContentProviderClient;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lo/ContentProviderClient;->b:Z

    .line 123
    iget-object v0, p0, Lo/ContentProviderClient;->a:Ljava/util/Set;

    invoke-static {v0}, Lo/FallbackCategoryProvider;->a(Ljava/util/Collection;)Ljava/util/List;

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

    check-cast v1, Lo/QuickViewConstants;

    .line 127
    invoke-interface {v1}, Lo/QuickViewConstants;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lo/QuickViewConstants;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-interface {v1}, Lo/QuickViewConstants;->c()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lo/ContentProviderClient;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public e()V
    .locals 3

    .line 140
    iget-object v0, p0, Lo/ContentProviderClient;->a:Ljava/util/Set;

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

    check-cast v1, Lo/QuickViewConstants;

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0, v1, v2}, Lo/ContentProviderClient;->c(Lo/QuickViewConstants;Z)Z

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lo/ContentProviderClient;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public e(Lo/QuickViewConstants;)Z
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, v0}, Lo/ContentProviderClient;->c(Lo/QuickViewConstants;Z)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{numRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ContentProviderClient;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/ContentProviderClient;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
