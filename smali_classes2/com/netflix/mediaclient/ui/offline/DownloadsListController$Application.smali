.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Stream;


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
        "Lo/Stream<",
        "Lo/Qx;",
        "Lo/Qy$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Application;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Application;->b:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 0

    .line 26
    check-cast p1, Lo/Qx;

    check-cast p2, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Application;->e(Lo/Qx;Lo/Qy$StateListAnimator;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public final e(Lo/Qx;Lo/Qy$StateListAnimator;Landroid/view/View;I)Z
    .locals 0

    .line 73
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Application;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p1

    check-cast p3, Lo/RZ;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->toggleSelectedState(Lo/RZ;)V

    .line 74
    invoke-virtual {p1}, Lo/Qx;->I()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 75
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Application;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->toggleSelectedState(Lo/RZ;)V

    .line 76
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Application;->b:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    invoke-interface {p1, p3}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;->c(Z)V

    :cond_0
    return p3
.end method