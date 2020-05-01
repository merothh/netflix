.class public final Lo/Mn;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)Lo/PendingIntent;
    .locals 7

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    .line 150
    invoke-interface {p1}, Lo/Mh;->v()Lo/Me;

    move-result-object v1

    .line 151
    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v2

    invoke-interface {v2}, Lo/zN;->h()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v1, v2}, Lo/Me;->b(Ljava/lang/String;)I

    move-result v3

    .line 154
    invoke-virtual {v1, v3}, Lo/Me;->d(I)Lo/Mf;

    .line 156
    new-instance v4, Lo/Mj$TaskDescription;

    invoke-direct {v4, p0}, Lo/Mj$TaskDescription;-><init>(Landroid/app/Activity;)V

    const/4 v5, 0x1

    .line 157
    invoke-virtual {v4, v5}, Lo/Mj$TaskDescription;->a(Z)Lo/PendingIntent$Activity;

    .line 158
    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->hs:I

    invoke-virtual {v4, v6}, Lo/Mj$TaskDescription;->d(I)Lo/Mj$TaskDescription;

    .line 159
    invoke-virtual {v1, p0}, Lo/Me;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lo/Mj$TaskDescription;->e(Ljava/util/List;)V

    .line 162
    invoke-interface {p1}, Lo/Mh;->D()Lo/AK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v1}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v2}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->lY:I

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 172
    :goto_0
    invoke-virtual {v4, v3, v1}, Lo/Mj$TaskDescription;->c(ILjava/lang/String;)V

    .line 173
    new-instance v1, Lo/Mn$5;

    invoke-direct {v1, p0, v0, p1}, Lo/Mn$5;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Am;Lo/Mh;)V

    invoke-virtual {v4, v1}, Lo/Mj$TaskDescription;->b(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 261
    invoke-virtual {v4}, Lo/Mj$TaskDescription;->a()Lo/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    const-string v0, "MdxUiUtils"

    const-string v1, "Dismissing MDX target selection dialog"

    .line 127
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lo/Mj;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static b(Lo/Am;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 49
    invoke-virtual {p0}, Lo/Am;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    invoke-interface {v0}, Lo/zN;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    invoke-virtual {p0}, Lo/Am;->l()Lo/zN;

    move-result-object p0

    invoke-interface {p0}, Lo/zN;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lo/Mn;->b(Lo/zN;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "MdxUiUtils"

    const-string v0, "MDX service is NOT ready"

    .line 50
    invoke-static {p0, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lo/zN;Ljava/lang/String;)Z
    .locals 6

    .line 80
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MdxUiUtils"

    if-eqz v0, :cond_0

    const-string p0, "uuid is empty"

    .line 81
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p0, :cond_6

    .line 85
    invoke-interface {p0}, Lo/zN;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 90
    :cond_1
    invoke-interface {p0}, Lo/zN;->f()[Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 91
    array-length v0, p0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    array-length v0, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    aget-object v5, p0, v4

    .line 97
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p0, "Target found"

    .line 98
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string p0, "Target NOT found!"

    .line 103
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    :goto_1
    const-string p0, "No MDX remote targets found"

    .line 92
    invoke-static {v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    :goto_2
    const-string p0, "MDX service is NOT ready"

    .line 86
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static c(Lo/zN;)Lo/Bc;
    .locals 1

    if-eqz p0, :cond_0

    .line 338
    instance-of v0, p0, Lo/ko;

    if-eqz v0, :cond_0

    .line 339
    check-cast p0, Lo/ko;

    invoke-virtual {p0}, Lo/ko;->r()Lo/Bc;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)Lo/PendingIntent;
    .locals 11

    .line 269
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 270
    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->cG:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 272
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kr:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 273
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v2

    invoke-static {v2}, Lo/acE;->c(Lo/Am;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ki:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 277
    sget v2, Lcom/netflix/mediaclient/ui/R$Fragment;->kq:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 279
    invoke-interface {p1}, Lo/Mh;->D()Lo/AK;

    move-result-object v3

    .line 281
    invoke-interface {p1}, Lo/Mh;->C()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->lY:I

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, ""

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    invoke-interface {v3}, Lo/AK;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/netflix/mediaclient/ui/R$AssistContent;->lc:I

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 289
    invoke-interface {v3}, Lo/AK;->O()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-interface {v3}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v5

    const/4 v8, 0x2

    .line 290
    invoke-interface {v3}, Lo/AK;->V()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    const/4 v8, 0x3

    invoke-interface {v3}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v8

    .line 289
    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 293
    :cond_0
    invoke-interface {v3}, Lo/AK;->N()Ljava/lang/String;

    move-result-object v3

    .line 296
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->ld:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x8

    .line 300
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    new-instance v1, Lo/PendingIntent$Activity;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v1, p0, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->le:I

    new-instance v3, Lo/Mn$4;

    invoke-direct {v3, p0, p1}, Lo/Mn$4;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)V

    .line 306
    invoke-virtual {v1, v2, v3}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 330
    invoke-virtual {p0, v0}, Lo/PendingIntent$Activity;->d(Landroid/view/View;)Lo/PendingIntent$Activity;

    move-result-object p0

    invoke-virtual {p0, v5}, Lo/PendingIntent$Activity;->a(Z)Lo/PendingIntent$Activity;

    move-result-object p0

    invoke-virtual {p0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    .line 332
    invoke-virtual {p0, v5}, Lo/PendingIntent;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I
    .locals 1

    .line 355
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isConnectingToTarget()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 356
    sget p0, Lo/Iterable$Application;->b:I

    goto :goto_0

    :cond_0
    sget p0, Lo/Iterable$Application;->f:I

    :goto_0
    return p0

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-static {v0}, Lo/Mn;->e(Lo/Am;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 360
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->wasMdxStatusUpdatedByMdxReceiver()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    .line 362
    sget p0, Lo/Iterable$Application;->a:I

    goto :goto_1

    :cond_2
    sget p0, Lo/Iterable$Application;->e:I

    :goto_1
    return p0

    :cond_3
    if-eqz p1, :cond_4

    .line 366
    sget p0, Lo/Iterable$Application;->d:I

    goto :goto_2

    :cond_4
    sget p0, Lo/Iterable$Application;->c:I

    :goto_2
    return p0

    :cond_5
    if-eqz p1, :cond_6

    .line 369
    sget p0, Lo/Iterable$Application;->g:I

    goto :goto_3

    :cond_6
    sget p0, Lo/Iterable$Application;->j:I

    :goto_3
    return p0
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)Lo/PendingIntent;
    .locals 1

    .line 112
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MdxUiUtils"

    const-string p1, "Activity is not valid. Skipping MDX menu dialog"

    .line 115
    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-static {v0}, Lo/Mn;->e(Lo/Am;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {p0, p1}, Lo/Mn;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)Lo/PendingIntent;

    move-result-object p0

    return-object p0

    .line 122
    :cond_1
    invoke-static {p0, p1}, Lo/Mn;->a(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)Lo/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Me;)V
    .locals 2

    const-string v0, "MdxUiUtils"

    const-string v1, "Updating MDX target selection dialog"

    .line 136
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lo/Mj;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Lo/Mj;

    invoke-virtual {p1, p0}, Lo/Me;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lo/Mj;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static e(Lo/Am;)Z
    .locals 2

    const-string v0, "MdxUiUtils"

    const-string v1, "isTargetReadyToControl"

    .line 61
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p0}, Lo/Mn;->b(Lo/Am;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isTargetReadyToControl check is connected (i.e., launched and paired)"

    .line 63
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lo/Am;->l()Lo/zN;

    move-result-object p0

    invoke-interface {p0}, Lo/zN;->y()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
