.class Lcom/netflix/mediaclient/ui/search/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string/jumbo v0, "SearchActivity"

    const-string/jumbo v1, "onTouch triggering query update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$3;->this$0:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$400(Lcom/netflix/mediaclient/ui/search/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->access$500(Lcom/netflix/mediaclient/ui/search/SearchActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
