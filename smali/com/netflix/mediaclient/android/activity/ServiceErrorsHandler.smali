.class public Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;
.super Ljava/lang/Object;
.source "ServiceErrorsHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceErrorsHandler"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static buildNetflixConnectivityErrorMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f080243

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleAppUpdateNeeded(Landroid/app/Activity;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 137
    if-nez p1, :cond_1

    .line 138
    const-string/jumbo v1, "nflx_update_skipped"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 145
    const-string/jumbo v2, "config_recommended_version"

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 148
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    const-string/jumbo v3, "ServiceErrorsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current min recommended version = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - Last skipped update = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    if-ne v1, v2, :cond_1

    .line 208
    :goto_0
    return v0

    .line 160
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 163
    if-nez p1, :cond_2

    .line 164
    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setMessage(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 165
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setCancelable(Z)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 166
    const v0, 0x7f080120

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 188
    :goto_1
    const v0, 0x7f0801c0

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    .line 207
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 208
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_2
    const v0, 0x7f080191

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;->setMessage(I)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    goto :goto_1
.end method

.method public static handleManagerResponse(Landroid/app/Activity;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 43
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    .line 44
    const-string/jumbo v3, "ServiceErrorsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Handling manager response, code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget-object v3, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$7;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 116
    invoke-static {p0, v2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->buildNetflixConnectivityErrorMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 118
    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 49
    goto :goto_0

    .line 52
    :pswitch_1
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleAppUpdateNeeded(Landroid/app/Activity;Z)Z

    move-result v0

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v2, 0x12

    if-le v0, v2, :cond_1

    .line 58
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "ServiceErrorsHandler"

    const-string/jumbo v2, "api version 18"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 64
    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    const-string/jumbo v0, "ServiceErrorsHandler"

    const-string/jumbo v2, "nf_config_locale manager == null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 67
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->shouldAlertForMissingLocale()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getAlertMsgForMissingLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    invoke-static {p0}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->wasPreviouslyAlerted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 76
    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getAlertMsgForMissingLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideUnSupportedLanguageDialog(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 81
    :pswitch_3
    invoke-static {p0, v0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->handleAppUpdateNeeded(Landroid/app/Activity;Z)Z

    move-result v0

    goto :goto_0

    .line 84
    :pswitch_4
    const v1, 0x7f08021d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_5
    const v1, 0x7f080168

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_6
    const v1, 0x7f08016f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f08023a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :pswitch_8
    const-string/jumbo v1, "ServiceErrorsHandler"

    const-string/jumbo v3, "Configuration can not be downloaded on first app start!"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {p0, v2}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->buildNetflixConnectivityErrorMessage(Landroid/app/Activity;Lcom/netflix/mediaclient/StatusCode;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler;->provideDialogWithHelpButton(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static provideDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 213
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801c0

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$3;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$3;-><init>(Landroid/app/Activity;)V

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 222
    return-void
.end method

.method private static provideDialogWithHelpButton(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801c0

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$5;-><init>(Landroid/app/Activity;)V

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080188

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$4;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$4;-><init>(Landroid/app/Activity;)V

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 248
    return-void
.end method

.method private static provideUnSupportedLanguageDialog(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 252
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 253
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 255
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 256
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 257
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/android/activity/ServiceErrorsHandler$6;-><init>(Landroid/app/Activity;)V

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 274
    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 275
    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 278
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
