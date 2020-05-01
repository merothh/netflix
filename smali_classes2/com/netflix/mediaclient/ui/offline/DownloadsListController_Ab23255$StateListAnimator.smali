.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addMerchModel(Lo/QH;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/LongStream<",
        "Lo/Sp;",
        "Lo/Sr$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 34
    check-cast p1, Lo/Sp;

    check-cast p2, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$StateListAnimator;->e(Lo/Sp;Lo/Sr$ActionBar;Landroid/view/View;I)V

    return-void
.end method

.method public final e(Lo/Sp;Lo/Sr$ActionBar;Landroid/view/View;I)V
    .locals 0

    .line 310
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->getListener()Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;

    move-result-object p1

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->access$getOptInBoxArtList$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;->d(Ljava/util/List;)V

    return-void
.end method
