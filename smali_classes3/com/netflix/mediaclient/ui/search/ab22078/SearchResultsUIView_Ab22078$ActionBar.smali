.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$ActionBar;
.super Lo/amu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;-><init>(Landroid/view/ViewGroup;Lcom/netflix/cl/model/AppView;Lo/UpdateEngine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/amu<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$ActionBar;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$ActionBar;->c:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    .line 33
    invoke-direct {p0, p2}, Lo/amu;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Lo/amT;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/amT<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 71
    invoke-static {p2, p3}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078$ActionBar;->c:Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->r()Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/search/prequery/v3/PreQuerySearchController_19052;->resetLoadedSectionMap()V

    :cond_0
    return-void
.end method
