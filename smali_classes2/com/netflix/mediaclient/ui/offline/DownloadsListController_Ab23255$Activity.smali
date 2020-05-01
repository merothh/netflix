.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->addContentModel(Lo/Tf;JLjava/util/List;)Lo/Qu;
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
        "Lo/Qs;",
        "Lo/Qu$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Activity;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 34
    check-cast p1, Lo/Qs;

    check-cast p2, Lo/Qu$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Activity;->d(Lo/Qs;Lo/Qu$StateListAnimator;Landroid/view/View;I)V

    return-void
.end method

.method public final d(Lo/Qs;Lo/Qu$StateListAnimator;Landroid/view/View;I)V
    .locals 0

    .line 250
    invoke-virtual {p1}, Lo/Qs;->s()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 251
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$Activity;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->toggleSelectedState(Lo/RZ;)V

    :cond_0
    return-void
.end method
