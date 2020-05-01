.class final Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder$bind$disposable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;->bind(Lo/Emoji;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder$bind$disposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/CharSequence;)V
    .locals 4

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "*"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/anv;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder$bind$disposable$1;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/CreditDebitCardFieldViewHolder$bind$disposable$1;->accept(Ljava/lang/CharSequence;)V

    return-void
.end method
