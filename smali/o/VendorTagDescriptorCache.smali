.class public Lo/VendorTagDescriptorCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/HdmiTimerRecordSources;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/request/ImageRequest;

.field private final b:Lo/InputManagerInternal;

.field private final c:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/facebook/imagepipeline/common/Priority;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Lo/InputManagerInternal;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lo/VendorTagDescriptorCache;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 48
    iput-object p2, p0, Lo/VendorTagDescriptorCache;->e:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lo/VendorTagDescriptorCache;->b:Lo/InputManagerInternal;

    .line 50
    iput-object p4, p0, Lo/VendorTagDescriptorCache;->d:Ljava/lang/Object;

    .line 51
    iput-object p5, p0, Lo/VendorTagDescriptorCache;->c:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 53
    iput-boolean p6, p0, Lo/VendorTagDescriptorCache;->g:Z

    .line 54
    iput-object p8, p0, Lo/VendorTagDescriptorCache;->i:Lcom/facebook/imagepipeline/common/Priority;

    .line 55
    iput-boolean p7, p0, Lo/VendorTagDescriptorCache;->f:Z

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lo/VendorTagDescriptorCache;->j:Z

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/VendorTagDescriptorCache;->h:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InputManager;

    .line 209
    invoke-interface {v0}, Lo/InputManager;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InputManager;

    .line 222
    invoke-interface {v0}, Lo/InputManager;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InputManager;

    .line 236
    invoke-interface {v0}, Lo/InputManager;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/InputManager;

    .line 248
    invoke-interface {v0}, Lo/InputManager;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/VendorTagDescriptorCache;->c:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lo/VendorTagDescriptorCache;->e:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized b(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lo/VendorTagDescriptorCache;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 139
    monitor-exit p0

    return-object p1

    .line 141
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lo/VendorTagDescriptorCache;->g:Z

    .line 142
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/VendorTagDescriptorCache;->h:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/VendorTagDescriptorCache;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized c(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/common/Priority;",
            ")",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lo/VendorTagDescriptorCache;->i:Lcom/facebook/imagepipeline/common/Priority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 157
    monitor-exit p0

    return-object p1

    .line 159
    :cond_0
    :try_start_1
    iput-object p1, p0, Lo/VendorTagDescriptorCache;->i:Lcom/facebook/imagepipeline/common/Priority;

    .line 160
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/VendorTagDescriptorCache;->h:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lo/InputManager;)V
    .locals 1

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lo/VendorTagDescriptorCache;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-boolean v0, p0, Lo/VendorTagDescriptorCache;->j:Z

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p1}, Lo/InputManager;->d()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/VendorTagDescriptorCache;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    return-object v0
.end method

.method public declared-synchronized d(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    iget-boolean v0, p0, Lo/VendorTagDescriptorCache;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 176
    monitor-exit p0

    return-object p1

    .line 178
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lo/VendorTagDescriptorCache;->f:Z

    .line 179
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lo/VendorTagDescriptorCache;->h:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e()Lo/InputManagerInternal;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/VendorTagDescriptorCache;->b:Lo/InputManagerInternal;

    return-object v0
.end method

.method public declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lo/VendorTagDescriptorCache;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/InputManager;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_0
    iget-boolean v0, p0, Lo/VendorTagDescriptorCache;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 194
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 196
    :try_start_1
    iput-boolean v0, p0, Lo/VendorTagDescriptorCache;->j:Z

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/VendorTagDescriptorCache;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-boolean v0, p0, Lo/VendorTagDescriptorCache;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lo/VendorTagDescriptorCache;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/VendorTagDescriptorCache;->a(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized j()Lcom/facebook/imagepipeline/common/Priority;
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lo/VendorTagDescriptorCache;->i:Lcom/facebook/imagepipeline/common/Priority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
