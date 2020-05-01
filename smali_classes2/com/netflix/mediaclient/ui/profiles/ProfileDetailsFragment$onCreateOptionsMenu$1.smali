.class public final Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$onCreateOptionsMenu$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Lo/Serializable;",
        "Landroid/view/Menu;",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/YY;


# direct methods
.method public constructor <init>(Lo/YY;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$onCreateOptionsMenu$1;->b:Lo/YY;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/Serializable;Landroid/view/Menu;)Landroid/view/MenuItem;
    .locals 5

    const-string v0, "validActivity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "optionsMenu"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$onCreateOptionsMenu$1;->b:Lo/YY;

    invoke-static {v0}, Lo/YY;->t(Lo/YY;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->c:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->x:I

    .line 775
    :goto_0
    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->px:I

    .line 777
    new-instance v2, Landroid/text/SpannableString;

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->pt:I

    invoke-virtual {p1, v3}, Lo/Serializable;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 779
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 781
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 v0, 0x11

    const/4 v4, 0x0

    .line 778
    invoke-virtual {v2, v3, v4, p1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 785
    new-instance p1, Lo/adr;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$onCreateOptionsMenu$1;->b:Lo/YY;

    invoke-virtual {v3}, Lo/YY;->getActivity()Lo/Serializable;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lo/TwoLineListItem;->d(Landroid/app/Activity;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-direct {p1, v3}, Lo/adr;-><init>(Landroid/graphics/Typeface;)V

    .line 787
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 784
    invoke-virtual {v2, p1, v4, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 777
    check-cast v2, Ljava/lang/CharSequence;

    .line 773
    invoke-interface {p2, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 791
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 792
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$onCreateOptionsMenu$1;->b:Lo/YY;

    invoke-static {p2}, Lo/YY;->t(Lo/YY;)Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Lo/Serializable;

    check-cast p2, Landroid/view/Menu;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$onCreateOptionsMenu$1;->d(Lo/Serializable;Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method
