.class public Lo/In;
.super Lo/WebChromeClient;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method protected static e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lo/In;
    .locals 2

    .line 19
    new-instance p0, Lo/In;

    invoke-direct {p0}, Lo/In;-><init>()V

    .line 20
    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->k:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lo/In;->setStyle(II)V

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance p1, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/In;->getActivity()Lo/Serializable;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, v0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 29
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    new-instance v1, Lo/In$5;

    invoke-direct {v1, p0}, Lo/In$5;-><init>(Lo/In;)V

    invoke-virtual {p1, v0, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 34
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->o:I

    invoke-virtual {p0, v0}, Lo/In;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    .line 35
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lo/PendingIntent;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method
