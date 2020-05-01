.class final Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;",
            ")V"
        }
    .end annotation

    const-string v0, "title"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityId"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchReferenceId"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->b:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "v"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/ZD;->j()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->e:Ljava/lang/String;

    const-string v2, "EntityId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->a:Ljava/lang/String;

    const-string v2, "Title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    sget-object v1, Lcom/netflix/cl/model/AppView;->searchSuggestionTitleResults:Lcom/netflix/cl/model/AppView;

    invoke-virtual {v1}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchResultType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->d:Ljava/lang/String;

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->c:Ljava/lang/String;

    const-string v2, "ParentRefId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->b:Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;->access$getSearchCLHelper$p(Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController;)Lo/aaw;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/searchlite/SOALSearchResultsEpoxyController$ActionBar;->f:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v1, v2}, Lo/aaw;->e(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 235
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
