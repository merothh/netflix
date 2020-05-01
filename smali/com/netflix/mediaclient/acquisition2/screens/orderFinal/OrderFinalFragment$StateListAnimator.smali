.class final Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ClassFormatError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->K()V
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
        "Lo/ClassFormatError<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$StateListAnimator;->e:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$StateListAnimator;->e:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->b(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$StateListAnimator;->c(Ljava/lang/String;)V

    return-void
.end method
