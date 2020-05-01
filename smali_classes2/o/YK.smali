.class public Lo/YK;
.super Lo/WebChromeClient;
.source ""


# instance fields
.field e:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    return-void
.end method

.method public static e(Landroid/content/DialogInterface$OnClickListener;)Lo/YK;
    .locals 2

    .line 17
    new-instance v0, Lo/YK;

    invoke-direct {v0}, Lo/YK;-><init>()V

    .line 18
    iput-object p0, v0, Lo/YK;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 19
    sget p0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->k:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lo/YK;->setStyle(II)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCancel(Landroid/content/DialogInterface;)V

    .line 43
    iget-object v0, p0, Lo/YK;->e:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v1, -0x2

    .line 44
    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lo/WebChromeClient;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance p1, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/YK;->getActivity()Lo/Serializable;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {p1, v0, v1}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    .line 29
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ez:I

    iget-object v1, p0, Lo/YK;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lo/PendingIntent$Activity;->b(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 30
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pf:I

    iget-object v1, p0, Lo/YK;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lo/PendingIntent$Activity;->d(ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    .line 31
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->pk:I

    invoke-virtual {p0, v0}, Lo/YK;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    .line 32
    invoke-virtual {p1}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lo/PendingIntent;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method
