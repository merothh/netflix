.class Lcom/netflix/mediaclient/ui/search/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$5;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetryRequested()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$5;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$5;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$500(Lcom/netflix/mediaclient/ui/search/SearchActivity;Ljava/lang/String;)V

    return-void
.end method
