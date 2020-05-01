.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createPlayVideoClickListenerForNewPlayButton(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;
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
        "Lo/ZX;",
        "Lo/aal$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

.field final synthetic c:Lo/Bx;

.field final synthetic d:Lcom/netflix/model/leafs/SearchSectionSummary;

.field final synthetic e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->d:Lcom/netflix/model/leafs/SearchSectionSummary;

    iput p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->a:I

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->c:Lo/Bx;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 48
    check-cast p1, Lo/ZX;

    check-cast p2, Lo/aal$Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->d(Lo/ZX;Lo/aal$Activity;Landroid/view/View;I)V

    return-void
.end method

.method public final d(Lo/ZX;Lo/aal$Activity;Landroid/view/View;I)V
    .locals 2

    .line 214
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->access$getUiViewCallback$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/ZP$ActionBar;

    move-result-object p1

    .line 215
    new-instance p2, Lo/ZR$TaskStackBuilder;

    .line 216
    iget-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->d:Lcom/netflix/model/leafs/SearchSectionSummary;

    .line 217
    iget p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->a:I

    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->c:Lo/Bx;

    .line 219
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PictureInPictureParams;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 215
    invoke-direct {p2, p3, p4, v0, v1}, Lo/ZR$TaskStackBuilder;-><init>(Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    check-cast p2, Lo/ZR;

    .line 214
    invoke-interface {p1, p2}, Lo/ZP$ActionBar;->c(Lo/ZR;)V

    return-void
.end method
