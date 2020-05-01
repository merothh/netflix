.class public Lcom/netflix/mediaclient/android/widget/PromptListener;
.super Ljava/lang/Object;
.source "PromptListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private promptDialogView:Landroid/view/View;

.field private promptEditTextControlId:I

.field private promptValue:Ljava/lang/String;

.field private result:Lcom/netflix/mediaclient/android/widget/PromptResult;


# direct methods
.method public constructor <init>(Landroid/view/View;ILjava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/android/widget/PromptResult;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Dialog view is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptDialogView:Landroid/view/View;

    iput p4, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptEditTextControlId:I

    iput-object p6, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->result:Lcom/netflix/mediaclient/android/widget/PromptResult;

    if-nez p5, :cond_1

    const-string/jumbo p5, ""

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptDialogView:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptDialogView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-nez p3, :cond_3

    const-string/jumbo p3, ""

    :cond_3
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private getPromptText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptDialogView:Landroid/view/View;

    iget v1, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptEditTextControlId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getPromptValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->promptValue:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->result:Lcom/netflix/mediaclient/android/widget/PromptResult;

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/PromptListener;->getPromptText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/android/widget/PromptResult;->confirm(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PromptListener;->result:Lcom/netflix/mediaclient/android/widget/PromptResult;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/PromptResult;->cancel()V

    goto :goto_0
.end method
