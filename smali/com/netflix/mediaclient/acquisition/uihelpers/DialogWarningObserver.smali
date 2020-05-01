.class public Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ClassFormatError<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private isDialogShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$isDialogShowing$p(Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;->isDialogShowing:Z

    return p0
.end method

.method public static final synthetic access$setDialogShowing$p(Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;->isDialogShowing:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 4

    .line 12
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;->isDialogShowing:Z

    if-nez v0, :cond_3

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 14
    :cond_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;->isDialogShowing:Z

    .line 15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;->context:Landroid/content/Context;

    sget v3, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 16
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 18
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->is:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver$onChanged$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver$onChanged$1;-><init>(Lcom/netflix/mediaclient/acquisition/uihelpers/DialogWarningObserver;)V

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    :goto_2
    return-void
.end method
