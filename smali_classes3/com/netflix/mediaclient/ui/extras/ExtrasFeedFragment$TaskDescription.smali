.class final Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BadPaddingException;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

.field final synthetic c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lo/Spliterator;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->d()Lo/If;

    move-result-object p1

    invoke-virtual {p1}, Lo/If;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$Fragment;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_2

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 820
    invoke-static {v0}, Lo/TagTechnology;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 822
    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lo/TagTechnology;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 821
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 354
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->m()I

    move-result v2

    if-nez v2, :cond_2

    .line 358
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->getAdapter()Lo/OfLong;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/OfLong;->c(I)Lo/BiConsumer;

    move-result-object v2

    const-string v3, "extrasEpoxyController.ad\u2026ion(firstVisiblePosition)"

    invoke-static {v2, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    instance-of v3, v2, Lo/GX;

    if-eqz v3, :cond_1

    .line 360
    new-instance v3, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription$Activity;

    invoke-direct {v3, v2, p1, p0}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription$Activity;-><init>(Lo/BiConsumer;Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v3}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    .line 366
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->a:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 365
    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment$TaskDescription;->a:Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;->c()Lo/GK;

    move-result-object p1

    invoke-virtual {p1}, Lo/GK;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 372
    sget-object p1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->d:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 371
    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->endRenderNavigationLevelSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_2
    :goto_0
    return-void
.end method
