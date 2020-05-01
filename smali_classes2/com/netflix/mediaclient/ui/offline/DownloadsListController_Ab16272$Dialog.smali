.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Application;Lio/reactivex/Observable;)V
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
        "Lo/Qv;",
        "Lo/Qt$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Dialog;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Dialog;->e:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 0

    .line 39
    check-cast p1, Lo/Qv;

    check-cast p2, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Dialog;->d(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public final d(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)Z
    .locals 0

    .line 85
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Dialog;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p1

    check-cast p3, Lo/RZ;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->toggleSelectedState(Lo/RZ;)V

    .line 86
    invoke-virtual {p1}, Lo/Qv;->I()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Dialog;->d:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272;->toggleSelectedState(Lo/RZ;)V

    .line 88
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab16272$Dialog;->e:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    invoke-interface {p1, p3}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;->c(Z)V

    :cond_0
    return p3
.end method
