.class final Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$TaskDescription;->c:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$TaskDescription;->c:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/Xml;->e(Z)V

    return-void
.end method
