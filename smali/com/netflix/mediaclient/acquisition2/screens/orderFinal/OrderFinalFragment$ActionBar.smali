.class public final Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$ActionBar;->a:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/Xml;->b(Ljava/lang/String;)V

    :cond_0
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
