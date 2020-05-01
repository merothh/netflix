.class Lo/acP$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/acP;


# direct methods
.method private constructor <init>(Lo/acP;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lo/acP$Application;->a:Lo/acP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/acP;Lo/acP$4;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lo/acP$Application;-><init>(Lo/acP;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lo/acP$Application;->a:Lo/acP;

    invoke-static {v1}, Lo/acP;->d(Lo/acP;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lo/acP$Application;->a:Lo/acP;

    iget v1, v1, Lo/acP;->n:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 279
    iget-object v0, p0, Lo/acP$Application;->a:Lo/acP;

    iget-object v0, v0, Lo/acP;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 280
    iget-object v0, p0, Lo/acP$Application;->a:Lo/acP;

    invoke-virtual {v0}, Lo/acP;->k()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v1, p0, Lo/acP$Application;->a:Lo/acP;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lo/acP;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object p1, p0, Lo/acP$Application;->a:Lo/acP;

    iget-object p1, p1, Lo/acP;->d:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 286
    iget-object p1, p0, Lo/acP$Application;->a:Lo/acP;

    iget-object p1, p1, Lo/acP;->d:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object p1, p0, Lo/acP$Application;->a:Lo/acP;

    invoke-virtual {p1, v2}, Lo/acP;->b(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
