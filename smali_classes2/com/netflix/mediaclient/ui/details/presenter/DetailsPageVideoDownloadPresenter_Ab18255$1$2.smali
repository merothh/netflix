.class public final Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/As;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1;->e(Lo/DC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/DC;


# direct methods
.method constructor <init>(Lo/DC;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1$2;->c:Lo/DC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1$2;->c:Lo/DC;

    check-cast v0, Lo/DC$TaskStackBuilder;

    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/presenter/DetailsPageVideoDownloadPresenter_Ab18255$1$2;->c:Lo/DC;

    check-cast v0, Lo/DC$TaskStackBuilder;

    invoke-virtual {v0}, Lo/DC$TaskStackBuilder;->a()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
