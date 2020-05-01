.class Lo/Jw$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Jw;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/Jw;


# direct methods
.method constructor <init>(Lo/Jw;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lo/Jw$11;->c:Lo/Jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 344
    iget-object p1, p0, Lo/Jw$11;->c:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->e(Lo/Jw;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 346
    iget-object p1, p0, Lo/Jw$11;->c:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->b(Lo/Jw;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lo/Jw$11;->c:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->g(Lo/Jw;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cd:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    .line 348
    iget-object p1, p0, Lo/Jw$11;->c:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->e(Lo/Jw;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 350
    :cond_0
    iget-object p1, p0, Lo/Jw$11;->c:Lo/Jw;

    invoke-static {p1}, Lo/Jw;->d(Lo/Jw;)V

    return-void
.end method
