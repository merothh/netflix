.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EncryptedPrivateKeyInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->addVideoGalleryModels(Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/EncryptedPrivateKeyInfo<",
        "Lo/aaj;",
        "Lo/aad$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic e:I

.field final synthetic f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic g:Lcom/netflix/model/leafs/SearchSectionSummary;

.field final synthetic h:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

.field final synthetic i:Lo/Bx;

.field final synthetic j:Lo/ZU;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;ILo/Bx;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput p5, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->e:I

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->i:Lo/Bx;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->h:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->j:Lo/ZU;

    iput-object p9, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p10, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->g:Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;FFII)V
    .locals 7

    .line 48
    move-object v1, p1

    check-cast v1, Lo/aaj;

    move-object v2, p2

    check-cast v2, Lo/aad$ActionBar;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->c(Lo/aaj;Lo/aad$ActionBar;FFII)V

    return-void
.end method

.method public final c(Lo/aaj;Lo/aad$ActionBar;FFII)V
    .locals 0

    const/16 p1, 0x32

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    .line 472
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->h:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->access$getPresentationTracking$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/Yf;

    move-result-object p1

    .line 473
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->i:Lo/Bx;

    invoke-interface {p2}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "video.id"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    sget-object p3, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 475
    iget-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$Application;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 472
    invoke-virtual {p1, p2, p3, p4}, Lo/Yf;->a(Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    :cond_0
    return-void
.end method
