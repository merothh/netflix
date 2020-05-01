.class Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;
.super Ljava/lang/Object;
.source "PinDialog.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;-><init>(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$800(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$900(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Z)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$600()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "nf_pin"

    const-string/jumbo v1, "serviceManager is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$PinDialogOnKeyPress;->this$0:Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;->access$700(Lcom/netflix/mediaclient/ui/verifyplay/PinDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
