.class final Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/DownloadsListController;-><init>(Lo/BC;Lo/RP;ZLo/Rr$Activity;Lo/Rq;Lcom/netflix/mediaclient/ui/offline/CachingSelectableController$TaskDescription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/DownloadsListController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Activity;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Activity;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->getShowOnlyCurrentProfile()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->setShowOnlyCurrentProfile(Z)V

    .line 97
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/DownloadsListController$Activity;->c:Lcom/netflix/mediaclient/ui/offline/DownloadsListController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadsListController;->requestModelBuild()V

    return-void
.end method
