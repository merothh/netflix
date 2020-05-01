.class public Lo/Da;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private c:Landroid/content/DialogInterface$OnClickListener;

.field private final d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lo/Da$4;

    invoke-direct {v0, p0}, Lo/Da$4;-><init>(Lo/Da;)V

    iput-object v0, p0, Lo/Da;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    new-instance v0, Lo/Da$5;

    invoke-direct {v0, p0}, Lo/Da$5;-><init>(Lo/Da;)V

    iput-object v0, p0, Lo/Da;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 32
    iput-object p1, p0, Lo/Da;->e:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 148
    sget-object v0, Lo/Da$1;->e:[I

    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->e(I)Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p2

    .line 172
    :pswitch_1
    iget-object p1, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hC:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :pswitch_2
    iget-object p1, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hy:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 160
    :pswitch_3
    iget-object p1, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hG:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :pswitch_4
    iget-object p1, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hu:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 168
    :pswitch_5
    iget-object p1, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ht:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 157
    :pswitch_6
    iget-object p1, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hB:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :pswitch_7
    iget-object p1, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hw:I

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 152
    :pswitch_8
    iget-object p1, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->hv:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(ILjava/lang/String;)V
    .locals 2

    .line 78
    sget-object v0, Lo/Da$1;->e:[I

    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->e(I)Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 92
    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object p1

    invoke-interface {p1, p2}, Lo/zN;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    iget-object p2, p0, Lo/Da;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to log error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private b()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lo/CookieSyncManager;

    return v0
.end method

.method static synthetic c(Lo/Da;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object p0
.end method

.method private c(ILjava/lang/String;)Lo/PendingIntent$Activity;
    .locals 2

    .line 102
    sget-object v0, Lo/Da$1;->e:[I

    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->e(I)Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    .line 116
    new-instance p1, Lo/PendingIntent$Activity;

    iget-object v0, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, v0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 117
    invoke-virtual {p1, p2}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    move-result-object p1

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, p2, v0}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    move-result-object p1

    return-object p1
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2}, Lo/Da;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-static {p3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "%s\n\n%s"

    .line 70
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 73
    :cond_0
    iget-object p3, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0, p1, p2}, Lo/Da;->c(ILjava/lang/String;)Lo/PendingIntent$Activity;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Lo/PendingIntent$Activity;)Landroid/app/Dialog;

    .line 74
    invoke-direct {p0, p1, p2}, Lo/Da;->b(ILjava/lang/String;)V

    return-void
.end method

.method private d(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic e(Lo/Da;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lo/Da;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lo/Da;->d:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lo/Da;->e:Ljava/lang/String;

    const-string v1, "Displaying error dialog"

    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lo/Da;->c(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0}, Lo/Da;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 51
    iget-object p3, p0, Lo/Da;->e:Ljava/lang/String;

    const-string v0, "Showing toast msg"

    invoke-static {p3, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0, p1, p2}, Lo/Da;->d(ILjava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object p1, p0, Lo/Da;->e:Ljava/lang/String;

    const-string p2, "Not MDX related activity, do not show toast"

    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
