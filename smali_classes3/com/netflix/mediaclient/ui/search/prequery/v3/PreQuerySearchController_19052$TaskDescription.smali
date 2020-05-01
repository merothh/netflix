.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EncryptedPrivateKeyInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->addVideoCarouselModels(Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;Ljava/util/List;I)V
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
        "Lo/aag;",
        "Lo/aac$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

.field final synthetic c:Lo/Bx;

.field final synthetic d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic e:Lo/ZU;

.field final synthetic f:Ljava/util/List;

.field final synthetic g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic h:Lcom/netflix/model/leafs/SearchSectionSummary;

.field final synthetic i:Ljava/util/List;

.field final synthetic j:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;ILo/Bx;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Ljava/util/List;Lcom/netflix/model/leafs/SearchSectionSummary;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->a:I

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->c:Lo/Bx;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->e:Lo/ZU;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->i:Ljava/util/List;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->h:Lcom/netflix/model/leafs/SearchSectionSummary;

    iput p9, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->j:I

    iput-object p10, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;FFII)V
    .locals 7

    .line 48
    move-object v1, p1

    check-cast v1, Lo/aag;

    move-object v2, p2

    check-cast v2, Lo/aac$Activity;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->b(Lo/aag;Lo/aac$Activity;FFII)V

    return-void
.end method

.method public final b(Lo/aag;Lo/aac$Activity;FFII)V
    .locals 0

    const/16 p1, 0x32

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    .line 530
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->access$getPresentationTracking$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/Yf;

    move-result-object p1

    .line 531
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->c:Lo/Bx;

    invoke-interface {p2}, Lo/Bx;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "video.id"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    sget-object p3, Lcom/netflix/cl/model/AppView;->searchResults:Lcom/netflix/cl/model/AppView;

    .line 533
    iget-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskDescription;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 530
    invoke-virtual {p1, p2, p3, p4}, Lo/Yf;->a(Ljava/lang/String;Lcom/netflix/cl/model/AppView;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    :cond_0
    return-void
.end method
