.class public final Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->d(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            ")V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->d:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->d:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    invoke-static {v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->b(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;)V

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    if-eqz p1, :cond_2

    .line 117
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->d:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->e()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->c:Landroid/widget/EditText;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->d:Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry;->c()Lo/GateKeeperResponse;

    move-result-object p1

    invoke-virtual {p1}, Lo/GateKeeperResponse;->d()V

    goto :goto_1

    .line 121
    :cond_1
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity$StateListAnimator;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;)V

    check-cast p1, Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, 0x2

    if-lt p3, p4, :cond_0

    iget-object p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->c:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->hasFocus()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 107
    iget-object p3, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->c:Landroid/widget/EditText;

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/maturityPinEntry/MaturityPinEntry$Activity;->c:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
