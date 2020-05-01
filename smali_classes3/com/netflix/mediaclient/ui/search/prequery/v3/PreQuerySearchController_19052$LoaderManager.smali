.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createCarouselItemClickListener(Lcom/netflix/model/leafs/SearchSectionSummary;Lo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LongStream;
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
        "Lo/aag;",
        "Lo/aac$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic c:Lcom/netflix/model/leafs/SearchSectionSummary;

.field final synthetic d:Lo/Bx;

.field final synthetic e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;Lo/Bx;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->c:Lcom/netflix/model/leafs/SearchSectionSummary;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->d:Lo/Bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/aag;Lo/aac$Activity;Landroid/view/View;I)V
    .locals 7

    .line 306
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->l:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    .line 307
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->access$getUiViewCallback$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/ZP$ActionBar;

    move-result-object p2

    .line 308
    new-instance p3, Lo/ZR$BroadcastReceiver;

    .line 309
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->c:Lcom/netflix/model/leafs/SearchSectionSummary;

    .line 311
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->d:Lo/Bx;

    .line 312
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 313
    move-object v5, p1

    check-cast v5, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v6, 0x1

    move-object v0, p3

    move v2, p4

    .line 308
    invoke-direct/range {v0 .. v6}, Lo/ZR$BroadcastReceiver;-><init>(Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)V

    check-cast p3, Lo/ZR;

    .line 307
    invoke-interface {p2, p3}, Lo/ZP$ActionBar;->c(Lo/ZR;)V

    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 48
    check-cast p1, Lo/aag;

    check-cast p2, Lo/aac$Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$LoaderManager;->a(Lo/aag;Lo/aac$Activity;Landroid/view/View;I)V

    return-void
.end method
