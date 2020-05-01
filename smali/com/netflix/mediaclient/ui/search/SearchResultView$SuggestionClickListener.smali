.class Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;
.super Ljava/lang/Object;
.source "SearchResultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final id:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->id:Ljava/lang/String;

    .line 305
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->title:Ljava/lang/String;

    .line 306
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->query:Ljava/lang/String;

    .line 307
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 311
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->SEARCH_SUGGESTION:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->query:Ljava/lang/String;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    invoke-static {v5}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->access$000(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/search/SearchResultView$SuggestionClickListener;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultView;

    .line 312
    invoke-static {v6}, Lcom/netflix/mediaclient/ui/search/SearchResultView;->access$100(Lcom/netflix/mediaclient/ui/search/SearchResultView;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v6

    .line 311
    invoke-static/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->show(Landroid/app/Activity;Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 313
    return-void
.end method
