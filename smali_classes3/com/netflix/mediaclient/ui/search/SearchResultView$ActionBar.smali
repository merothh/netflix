.class Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/ui/search/SearchResultView;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->d:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->a:Ljava/lang/String;

    .line 289
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->e:Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 296
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->d:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lo/ZD;->j()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->b:Ljava/lang/String;

    const-string v1, "EntityId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->a:Ljava/lang/String;

    const-string v1, "Title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->d:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->b(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Lcom/netflix/cl/model/AppView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->e:Ljava/lang/String;

    const-string v1, "query"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->d:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->d(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParentRefId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->d:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 305
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$ActionBar;->d:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/search/SearchResultView;->d:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    .line 306
    sget-object v0, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v2, Lcom/netflix/cl/model/AppView;->searchSuggestionResults:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2, p1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p1, Lcom/netflix/cl/model/event/session/command/SelectCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/SelectCommand;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    return-void
.end method
