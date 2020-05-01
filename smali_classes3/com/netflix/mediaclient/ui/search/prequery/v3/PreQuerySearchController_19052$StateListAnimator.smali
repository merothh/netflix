.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AEADBadTagException;


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
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AEADBadTagException<",
        "Lo/aag;",
        "Lo/aac$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ZU;

.field final synthetic b:I

.field final synthetic c:Lo/Bx;

.field final synthetic d:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic h:Ljava/util/List;

.field final synthetic i:Lcom/netflix/model/leafs/SearchSectionSummary;

.field final synthetic j:Ljava/util/List;


# direct methods
.method constructor <init>(IILo/Bx;Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Ljava/util/List;Lcom/netflix/model/leafs/SearchSectionSummary;ILjava/util/List;)V
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->e:I

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->b:I

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->c:Lo/Bx;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->a:Lo/ZU;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->g:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->j:Ljava/util/List;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->i:Lcom/netflix/model/leafs/SearchSectionSummary;

    iput p9, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->f:I

    iput-object p10, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->h:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic c(Lo/BiConsumer;Ljava/lang/Object;I)V
    .locals 0

    .line 48
    check-cast p1, Lo/aag;

    check-cast p2, Lo/aac$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->d(Lo/aag;Lo/aac$Activity;I)V

    return-void
.end method

.method public final d(Lo/aag;Lo/aac$Activity;I)V
    .locals 0

    .line 546
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->i:Lcom/netflix/model/leafs/SearchSectionSummary;

    invoke-interface {p1}, Lcom/netflix/model/leafs/SearchSectionSummary;->getPageKind()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuerySearch"

    invoke-static {p1, p2}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 544
    sget-object p1, Lo/fl;->d:Lo/fl$ActionBar;

    invoke-virtual {p1}, Lo/fl$ActionBar;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 545
    iget p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->e:I

    add-int/lit8 p1, p1, -0x1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->e:I

    if-ne p1, p2, :cond_0

    .line 547
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->a:Lo/ZU;

    iget p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->f:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ZU;->b(Ljava/lang/Integer;)V

    .line 548
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->d:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$StateListAnimator;->a:Lo/ZU;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->setData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
