.class final Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:[Ljava/lang/String;

.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

.field final synthetic e:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$PendingIntent;->e:[Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$PendingIntent;->d:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    iput-object p3, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$PendingIntent;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$PendingIntent;->d:Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment;->c()Lo/Xml;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/acquisition2/screens/orderFinal/OrderFinalFragment$PendingIntent;->e:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lo/Xml;->a(Ljava/lang/String;)V

    .line 177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
