.class public Lo/aaO;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 169
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v0, Lo/aaO$5;

    invoke-direct {v0}, Lo/aaO$5;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 122
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v1, Lo/aaO$3;

    invoke-direct {v1, p0}, Lo/aaO$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    new-instance v0, Lo/aaO$2;

    invoke-direct {v0}, Lo/aaO$2;-><init>()V

    .line 132
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static c(Lo/aaV;Lo/Am;)V
    .locals 2

    const-string v0, "nf_dl_diagnostics"

    const-string v1, "showDialog"

    .line 54
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lo/Am;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p1}, Lo/Am;->i()Lo/cz;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p1}, Lo/cz;->W()Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 90
    :goto_0
    invoke-static {}, Lo/pf;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget-object p1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->a:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {p1, p0}, Lo/aaO;->e(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/aaO;->d(Lo/aaV;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_2
    invoke-static {p0}, Lo/pf;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-static {p0}, Lo/RL;->b(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 100
    invoke-static {p1, p0}, Lo/aaO;->e(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/aaO;->d(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_4
    invoke-static {p0}, Lo/aaO;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 104
    sget-object p1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->c:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {p1, p0}, Lo/aaO;->e(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/aaO;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_5
    sget-object p1, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->d:Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;

    invoke-static {p1, p0}, Lo/aaO;->e(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lo/aaO;->e(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "offline_ever_worked"

    .line 160
    invoke-static {p0, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 161
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v2}, Lo/Am;->i()Lo/cz;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 163
    :goto_0
    invoke-static {p0, v2}, Lo/adU;->d(Landroid/content/Context;Lo/cz;)Z

    move-result p0

    if-nez v1, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static d(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-static {p0, p1}, Lo/aaO;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lo/aaV;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-static {p0, p1}, Lo/aaO;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 178
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 179
    sget-object v2, Lo/aaO$1;->d:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineUnavailableReason;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    .line 192
    :pswitch_0
    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nQ:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :pswitch_1
    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mo:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 187
    :pswitch_2
    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nQ:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 185
    :pswitch_3
    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->mr:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 183
    :pswitch_4
    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nT:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :pswitch_5
    sget p0, Lcom/netflix/mediaclient/ui/R$AssistContent;->nM:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-static {p0, p1}, Lo/aaO;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
