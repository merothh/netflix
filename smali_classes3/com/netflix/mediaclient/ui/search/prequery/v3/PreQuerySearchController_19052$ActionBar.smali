.class final Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->buildModels(Lo/ZU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/ZU;

.field final synthetic d:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;Lo/ZU;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$ActionBar;->d:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$ActionBar;->b:Lo/ZU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$ActionBar;->b:Lo/ZU;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/ZU;->e(Z)V

    .line 85
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$ActionBar;->d:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$ActionBar;->b:Lo/ZU;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->setData(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052$ActionBar;->d:Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->access$getUiViewCallback$p(Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;)Lo/ZP$ActionBar;

    move-result-object p1

    .line 87
    sget-object v0, Lo/ZR$Fragment;->c:Lo/ZR$Fragment;

    check-cast v0, Lo/ZR;

    .line 86
    invoke-interface {p1, v0}, Lo/ZP$ActionBar;->c(Lo/ZR;)V

    return-void
.end method
