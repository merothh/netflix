.class public Lo/FindActionModeCallback;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->aB:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 230
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 234
    :cond_0
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(Z)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v1, Lo/FindActionModeCallback$2;

    invoke-direct {v1, p0}, Lo/FindActionModeCallback$2;-><init>(Landroid/app/Activity;)V

    .line 237
    invoke-virtual {p1, v0, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->e()Lo/PendingIntent;

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 5

    .line 43
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling manager response, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceErrorsHandler"

    invoke-static {v2, v1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v1, Lo/FindActionModeCallback$8;->d:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 147
    invoke-static {p0, v0}, Lo/FindActionModeCallback;->c(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)V

    return v4

    .line 142
    :pswitch_0
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->bn:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return v4

    :pswitch_1
    const-string p0, "Handled by CryptoErrorManager..."

    .line 139
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 135
    :pswitch_2
    invoke-static {p0, v0}, Lo/FindActionModeCallback;->e(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return v4

    .line 131
    :pswitch_3
    invoke-static {p0, v0}, Lo/FindActionModeCallback;->d(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return v4

    :pswitch_4
    const-string v0, "Blacklisted device, failing back to Widevine L3, restart!"

    .line 126
    invoke-static {v2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->gn:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return v4

    .line 123
    :pswitch_5
    invoke-static {p0}, Lo/FindActionModeCallback;->c(Landroid/app/Activity;)V

    return v4

    :pswitch_6
    const-string p1, "Configuration blacklisted device. "

    .line 117
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p0, v0}, Lo/FindActionModeCallback;->a(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p0, p1, v4}, Lo/FindActionModeCallback;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V

    return v4

    :pswitch_7
    const-string p1, "Configuration can not be downloaded on first app start!"

    .line 112
    invoke-static {v2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p0, v0}, Lo/FindActionModeCallback;->d(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-static {p0, p1, v4}, Lo/FindActionModeCallback;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V

    return v4

    .line 105
    :pswitch_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kS:I

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return v4

    .line 98
    :pswitch_9
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gu:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return v4

    .line 93
    :pswitch_a
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gk:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return v4

    .line 87
    :pswitch_b
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kc:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->b(Landroid/app/Activity;Ljava/lang/String;)V

    return v4

    .line 82
    :pswitch_c
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kc:I

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return v4

    .line 79
    :pswitch_d
    invoke-static {p0, v4}, Lo/FindActionModeCallback;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z

    move-result p0

    return p0

    .line 57
    :pswitch_e
    invoke-static {}, Lo/adk;->c()I

    move-result p1

    const/16 v0, 0x12

    if-le p1, v0, :cond_0

    new-array p0, v4, [Ljava/lang/Object;

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const-string p1, "api version %d"

    invoke-static {v2, p1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v3

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "nf_config_locale manager == null"

    .line 64
    invoke-static {v2, p0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 71
    :cond_1
    invoke-virtual {p1}, Lo/Am;->G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object v0

    invoke-interface {v0}, Lo/cz;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    sget-object v0, Lo/ys;->a:Lo/ys;

    .line 73
    invoke-virtual {v0, p0}, Lo/ys;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object p1

    invoke-interface {p1}, Lo/cz;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/FindActionModeCallback;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v3

    .line 52
    :pswitch_f
    invoke-static {p0, v3}, Lo/FindActionModeCallback;->d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z

    move-result p0

    return p0

    :pswitch_10
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Z
    .locals 3

    .line 285
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 289
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0xf

    .line 290
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 292
    new-instance p1, Lo/PendingIntent$Activity;

    sget v2, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, p0, v2}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 293
    invoke-virtual {p1, v2}, Lo/PendingIntent$Activity;->a(Z)Lo/PendingIntent$Activity;

    move-result-object p1

    .line 294
    invoke-virtual {p1, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p1

    const v0, 0x104000a

    new-instance v2, Lo/FindActionModeCallback$4;

    invoke-direct {v2, p0}, Lo/FindActionModeCallback$4;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 295
    invoke-virtual {p1, v0, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Lo/PendingIntent;->show()V

    const p1, 0x102000b

    .line 309
    invoke-virtual {p0, p1}, Lo/PendingIntent;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 311
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return v1
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 3

    .line 317
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 321
    :cond_0
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kH:I

    .line 322
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->c(I)Lo/PendingIntent$Activity;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->kI:I

    new-instance v2, Lo/FindActionModeCallback$10;

    invoke-direct {v2, p0}, Lo/FindActionModeCallback$10;-><init>(Landroid/app/Activity;)V

    .line 323
    invoke-virtual {v0, v1, v2}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object v0

    new-instance v1, Lo/FindActionModeCallback$7;

    invoke-direct {v1, p0}, Lo/FindActionModeCallback$7;-><init>(Landroid/app/Activity;)V

    .line 334
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->d(Landroid/content/DialogInterface$OnCancelListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 339
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->e()Lo/PendingIntent;

    return-void
.end method

.method private static c(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 1

    .line 154
    instance-of v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 155
    move-object v0, p0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 156
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayErrorDialogIfExist()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ServiceErrorsHandler"

    const-string p1, "Pending error found and already handled..."

    .line 157
    invoke-static {p0, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_0
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->d(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 213
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(Z)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v1, Lo/FindActionModeCallback$5;

    invoke-direct {v1, p0}, Lo/FindActionModeCallback$5;-><init>(Landroid/app/Activity;)V

    .line 220
    invoke-virtual {p1, v0, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->e()Lo/PendingIntent;

    return-void
.end method

.method private static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Z)V
    .locals 2

    .line 251
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 254
    :cond_0
    new-instance v0, Lo/PendingIntent$Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 255
    invoke-virtual {v0, v1}, Lo/PendingIntent$Activity;->a(Z)Lo/PendingIntent$Activity;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p1}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v1, Lo/FindActionModeCallback$3;

    invoke-direct {v1, p2, p0}, Lo/FindActionModeCallback$3;-><init>(ZLcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 257
    invoke-virtual {p1, v0, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hd:I

    new-instance v0, Lo/FindActionModeCallback$1;

    invoke-direct {v0, p0}, Lo/FindActionModeCallback$1;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 268
    invoke-virtual {p1, p2, v0}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p0

    .line 281
    invoke-virtual {p0}, Lo/PendingIntent$Activity;->e()Lo/PendingIntent;

    return-void
.end method

.method private static d(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lT:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)Z
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleAppUpdateNeed(Z)Z

    move-result p0

    return p0
.end method

.method private static e(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 3

    const-wide/32 v0, 0x15f90

    .line 173
    invoke-static {v0, v1}, Lo/aeJ;->a(J)Z

    move-result v0

    const-string v1, "ServiceErrorsHandler"

    if-eqz v0, :cond_0

    const-string p1, "Widevine plugin is blocked"

    .line 176
    invoke-static {v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 178
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gt:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->at:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "Widevine plugin is NOT blocked"

    .line 180
    invoke-static {v1, v0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p0, p1}, Lo/FindActionModeCallback;->d(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
