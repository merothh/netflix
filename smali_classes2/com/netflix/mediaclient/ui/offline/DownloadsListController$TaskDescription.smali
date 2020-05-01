.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
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
        "Lo/Qx;",
        "Lo/Qy$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$TaskDescription;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/Qx;Lo/Qy$StateListAnimator;Landroid/view/View;I)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Lo/Qx;->I()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$TaskDescription;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->toggleSelectedState(Lo/RZ;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$TaskDescription;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->access$getScreenLauncher$p(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)Lo/Rr$Activity;

    move-result-object p2

    invoke-virtual {p1}, Lo/Qx;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lo/Qx;->m()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lo/Rr$Activity;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/Qx;

    check-cast p2, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$TaskDescription;->b(Lo/Qx;Lo/Qy$StateListAnimator;Landroid/view/View;I)V

    return-void
.end method
