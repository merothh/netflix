.class Lcom/netflix/mediaclient/ui/search/SearchActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/search/SearchActivity;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchActivity;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$1;->c:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchActivity$1;->c:Lcom/netflix/mediaclient/ui/search/SearchActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/search/SearchActivity;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 298
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    if-eqz v1, :cond_0

    .line 299
    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    return-void
.end method
