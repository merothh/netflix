.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AEADBadTagException;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->buildModels(Lo/ZU;)V
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
        "Lo/aae;",
        "Lo/aab$Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PendingIntent;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic c(Lo/BiConsumer;Ljava/lang/Object;I)V
    .locals 0

    .line 48
    check-cast p1, Lo/aae;

    check-cast p2, Lo/aab$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PendingIntent;->d(Lo/aae;Lo/aab$Activity;I)V

    return-void
.end method

.method public final d(Lo/aae;Lo/aab$Activity;I)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$PendingIntent;->c:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->access$getUiViewCallback$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/ZP$ActionBar;

    move-result-object p1

    sget-object p2, Lo/ZR$FragmentManager;->d:Lo/ZR$FragmentManager;

    check-cast p2, Lo/ZR;

    invoke-interface {p1, p2}, Lo/ZP$ActionBar;->c(Lo/ZR;)V

    return-void
.end method
