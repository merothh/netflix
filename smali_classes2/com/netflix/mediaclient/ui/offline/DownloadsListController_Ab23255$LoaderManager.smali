.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/BC;ZLo/Rr$Activity;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$TaskDescription;Lio/reactivex/Observable;)V
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
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

.field final synthetic e:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$LoaderManager;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$LoaderManager;->e:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)Z
    .locals 0

    .line 34
    check-cast p1, Lo/Qv;

    check-cast p2, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$LoaderManager;->c(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public final c(Lo/Qv;Lo/Qt$StateListAnimator;Landroid/view/View;I)Z
    .locals 0

    .line 56
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$LoaderManager;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    const-string p3, "model"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p3, p1

    check-cast p3, Lo/RZ;

    invoke-virtual {p2, p3}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->toggleSelectedState(Lo/RZ;)V

    .line 57
    invoke-virtual {p1}, Lo/Qv;->I()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 58
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$LoaderManager;->b:Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;

    check-cast p1, Lo/RZ;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255;->toggleSelectedState(Lo/RZ;)V

    .line 59
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController_Ab23255$LoaderManager;->e:Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;

    invoke-interface {p1, p3}, Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;->c(Z)V

    :cond_0
    return p3
.end method
