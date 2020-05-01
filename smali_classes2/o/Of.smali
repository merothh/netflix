.class public Lo/Of;
.super Lo/zP;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final g(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 33
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cZ:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_0

    .line 34
    iget-object p1, p0, Lo/Of;->e:Ljava/lang/String;

    const-string v0, "Remove from queue failed - video was not in queue"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->iz:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseNetflixApp.getContex\u2026e_from_my_list_deep_link)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lo/Of;->e:Ljava/lang/String;

    const-string v0, "Remove from queue failed - general error"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->gJ:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseNetflixApp.getContex\u2026move_from_list_deep_link)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final i(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 47
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->cY:Lcom/netflix/mediaclient/StatusCode;

    if-ne p1, v0, :cond_0

    .line 48
    iget-object p1, p0, Lo/Of;->e:Ljava/lang/String;

    const-string v0, "Add to queue failed - video already in queue"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->kF:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseNetflixApp.getContex\u2026st_deep_link_title_exist)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lo/Of;->e:Ljava/lang/String;

    const-string v0, "Add to queue failed - general error"

    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->gH:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseNetflixApp.getContex\u2026add_to_my_list_deep_link)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lo/zP;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-direct {p0, p1}, Lo/Of;->g(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Lo/zP;->e(Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p1, :cond_0

    .line 20
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 21
    invoke-direct {p0, p1}, Lo/Of;->i(Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
