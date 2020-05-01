.class public final Landroid/support/v7/media/MediaRouteDescriptor$Builder;
.super Ljava/lang/Object;
.source "MediaRouteDescriptor.java"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mControlFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouteDescriptor;)V
    .locals 2

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    if-nez p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->access$000(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 285
    invoke-static {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->access$100(Landroid/support/v7/media/MediaRouteDescriptor;)V

    .line 286
    invoke-static {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->access$200(Landroid/support/v7/media/MediaRouteDescriptor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->access$200(Landroid/support/v7/media/MediaRouteDescriptor;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    .line 289
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    .line 270
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 271
    invoke-virtual {p0, p2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setName(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    .line 272
    return-void
.end method


# virtual methods
.method public addControlFilter(Landroid/content/IntentFilter;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "filter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    .line 377
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_2
    return-object p0
.end method

.method public addControlFilters(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)",
            "Landroid/support/v7/media/MediaRouteDescriptor$Builder;"
        }
    .end annotation

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "filters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 393
    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addControlFilter(Landroid/content/IntentFilter;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    goto :goto_0

    .line 396
    :cond_1
    return-object p0
.end method

.method public build()Landroid/support/v7/media/MediaRouteDescriptor;
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "controlFilters"

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 464
    :cond_0
    new-instance v0, Landroid/support/v7/media/MediaRouteDescriptor;

    iget-object v1, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mControlFilters:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouteDescriptor;-><init>(Landroid/os/Bundle;Ljava/util/List;Landroid/support/v7/media/MediaRouteDescriptor$1;)V

    return-object v0
.end method

.method public setConnecting(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "connecting"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-object p0
.end method

.method public setPlaybackStream(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "playbackStream"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    return-object p0
.end method

.method public setPlaybackType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "playbackType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    return-object p0
.end method

.method public setPresentationDisplayId(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "presentationDisplayId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    return-object p0
.end method

.method public setVolume(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    return-object p0
.end method

.method public setVolumeHandling(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "volumeHandling"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    return-object p0
.end method

.method public setVolumeMax(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "volumeMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    return-object p0
.end method
