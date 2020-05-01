.class Lo/Jw$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lo/Jw$7;->a:Lo/Jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 314
    iget-object p1, p0, Lo/Jw$7;->a:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->e(Lo/Jw;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/Jw$7;->a:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->e(Lo/Jw;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 p3, 0x4

    if-lt p1, p3, :cond_1

    .line 315
    :cond_0
    iget-object p1, p0, Lo/Jw$7;->a:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->b(Lo/Jw;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :cond_1
    iget-object p1, p0, Lo/Jw$7;->a:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->e(Lo/Jw;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 318
    iget-object p1, p0, Lo/Jw$7;->a:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->c(Lo/Jw;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_2
    iget-object p1, p0, Lo/Jw$7;->a:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->c(Lo/Jw;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
