.class final Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CipherSpi;


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
        "Lo/CipherSpi<",
        "Lo/Nk;",
        "Lo/Nf$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

.field final synthetic b:Lo/Nh;


# direct methods
.method constructor <init>(Lo/Nh;Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;->b:Lo/Nh;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;->a:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lo/BiConsumer;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p1, Lo/Nk;

    check-cast p2, Lo/Nf$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;->a(Lo/Nk;Lo/Nf$ActionBar;I)V

    return-void
.end method

.method public final a(Lo/Nk;Lo/Nf$ActionBar;I)V
    .locals 1

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;->b:Lo/Nh;

    invoke-virtual {p1}, Lo/Nh;->f()I

    move-result p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;->a:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->access$getFocusedItem$p(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 97
    sget-object p1, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 98
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;->a:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->access$emitFocusLostEvent(Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;)V

    :cond_0
    const/4 p1, 0x2

    if-ne p3, p1, :cond_1

    .line 102
    sget-object p1, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    const/4 p1, 0x0

    .line 105
    sget-object p2, Lcom/netflix/cl/model/AppView;->boxArt:Lcom/netflix/cl/model/AppView;

    .line 106
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/videoscarousel/VideosCarouselEpoxyController$Application;->b:Lo/Nh;

    invoke-virtual {p3}, Lo/Nh;->c()Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p3

    const/4 v0, 0x0

    .line 103
    invoke-static {p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    :cond_1
    return-void
.end method
