.class final Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EncryptedPrivateKeyInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->buildModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/EncryptedPrivateKeyInfo<",
        "Lo/Nk;",
        "Lo/Nf$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

.field final synthetic d:Lo/Nk;

.field final synthetic e:Lo/Nh;


# direct methods
.method constructor <init>(Lo/Nk;Lo/Nh;Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->d:Lo/Nk;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->e:Lo/Nh;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->c:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;FFII)V
    .locals 7

    .line 22
    move-object v1, p1

    check-cast v1, Lo/Nk;

    move-object v2, p2

    check-cast v2, Lo/Nf$ActionBar;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->c(Lo/Nk;Lo/Nf$ActionBar;FFII)V

    return-void
.end method

.method public final c(Lo/Nk;Lo/Nf$ActionBar;FFII)V
    .locals 0

    const p1, 0x42c7fae1    # 99.99f

    cmpl-float p1, p4, p1

    if-ltz p1, :cond_1

    const/high16 p1, 0x42960000    # 75.0f

    cmpl-float p2, p3, p1

    if-ltz p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->e:Lo/Nh;

    invoke-virtual {p2}, Lo/Nh;->f()I

    move-result p2

    iget-object p4, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->c:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    invoke-static {p4}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->access$getFocusedItem$p(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)I

    move-result p4

    if-eq p2, p4, :cond_0

    .line 72
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->c:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->e:Lo/Nh;

    invoke-virtual {p2}, Lo/Nh;->f()I

    move-result p2

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->access$setFocusedItem$p(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;I)V

    .line 73
    sget-object p1, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 74
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->d:Lo/Nk;

    invoke-virtual {p1}, Lo/Nk;->k()Lo/UpdateEngine;

    move-result-object p1

    .line 75
    new-instance p2, Lo/Nj$Activity;

    .line 76
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->c:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->access$getFocusedItem$p(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)I

    move-result p3

    const/4 p4, 0x1

    .line 75
    invoke-direct {p2, p3, p4}, Lo/Nj$Activity;-><init>(IZ)V

    check-cast p2, Lo/VintfObject;

    .line 164
    const-class p3, Lo/Nj;

    invoke-virtual {p1, p3, p2}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 82
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->c:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->access$getFocusedItem$p(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)I

    move-result p2

    add-int/2addr p2, p4

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->access$executePlayerPrepareForItem(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;I)V

    goto :goto_0

    :cond_0
    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->e:Lo/Nh;

    invoke-virtual {p1}, Lo/Nh;->f()I

    move-result p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->c:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->access$getFocusedItem$p(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 86
    sget-object p1, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 87
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$TaskDescription;->c:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->access$emitFocusLostEvent(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)V

    :cond_1
    :goto_0
    return-void
.end method
