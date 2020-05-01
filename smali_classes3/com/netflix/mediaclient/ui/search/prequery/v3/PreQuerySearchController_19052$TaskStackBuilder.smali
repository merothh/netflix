.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LongStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->createSearchSuggestionClickListener(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/LongStream;
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
        "Lo/aam;",
        "Lo/aan$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iput p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->c:I

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/aam;Lo/aan$ActionBar;Landroid/view/View;I)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->b:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->access$getUiViewCallback$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/ZP$ActionBar;

    move-result-object p1

    new-instance p2, Lo/ZR$AssistContent;

    iget p3, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->c:I

    iget-object p4, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->e:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {p2, p3, p4, v0, v1}, Lo/ZR$AssistContent;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    check-cast p2, Lo/ZR;

    invoke-interface {p1, p2}, Lo/ZP$ActionBar;->c(Lo/ZR;)V

    return-void
.end method

.method public synthetic d(Lo/BiConsumer;Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 48
    check-cast p1, Lo/aam;

    check-cast p2, Lo/aan$ActionBar;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$TaskStackBuilder;->c(Lo/aam;Lo/aan$ActionBar;Landroid/view/View;I)V

    return-void
.end method
