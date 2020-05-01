.class Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JsDialogHelper$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/details/DetailsActivity;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/details/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 338
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 341
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->d(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;)V

    .line 344
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v1, v0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->c(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setLoadingStatusCallback(Lo/JsDialogHelper$Activity;)V

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 350
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->handleFalkorAgentErrors(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_3
    return-void
.end method
