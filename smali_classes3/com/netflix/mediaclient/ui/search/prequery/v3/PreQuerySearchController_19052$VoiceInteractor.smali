.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createListItemClickListenerForNewPlayButton(Lcom/netflix/model/leafs/SearchSectionSummary;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/Bx;I)Lo/LongStream;
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
.field final synthetic a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic b:Lcom/netflix/model/leafs/SearchSectionSummary;

.field final synthetic c:I

.field final synthetic d:Lo/Bx;

.field final synthetic e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->b:Lcom/netflix/model/leafs/SearchSectionSummary;

    iput p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->c:I

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->d:Lo/Bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/ZX;Lo/aal$Activity;Landroid/view/View;I)V
    .locals 7

    .line 261
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object p2, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->l:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lcom/netflix/mediaclient/servicemgr/PlayLocationType;)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object p1

    .line 262
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->e:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->access$getUiViewCallback$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/ZP$ActionBar;

    move-result-object p2

    .line 263
    new-instance p3, Lo/ZR$BroadcastReceiver;

    .line 264
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->b:Lcom/netflix/model/leafs/SearchSectionSummary;

    .line 265
    iget v2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->c:I

    .line 266
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->d:Lo/Bx;

    .line 267
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->a:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 268
    move-object v5, p1

    check-cast v5, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    const/4 v6, 0x0

    move-object v0, p3

    .line 263
    invoke-direct/range {v0 .. v6}, Lo/ZR$BroadcastReceiver;-><init>(Lcom/netflix/model/leafs/SearchSectionSummary;ILo/Bx;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lcom/netflix/mediaclient/servicemgr/PlayContext;Z)V

    check-cast p3, Lo/ZR;

    .line 262
    invoke-interface {p2, p3}, Lo/ZP$ActionBar;->c(Lo/ZR;)V

    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 48
    check-cast p1, Lo/ZX;

    check-cast p2, Lo/aal$Activity;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$VoiceInteractor;->a(Lo/ZX;Lo/aal$Activity;Landroid/view/View;I)V

    return-void
.end method
