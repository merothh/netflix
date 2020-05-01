.class public final Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$Intent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lo/amT;


# instance fields
.field private final mopLogosRecyclerView$delegate:Lo/ams;

.field private final paymentDisplayText$delegate:Lo/ams;

.field private paymentMode:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "paymentDisplayText"

    const-string v5, "getPaymentDisplayText()Landroid/widget/TextView;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "mopLogosRecyclerView"

    const-string v4, "getMopLogosRecyclerView()Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->$$delegatedProperties:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Intent;-><init>(Landroid/view/View;)V

    .line 22
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->lS:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->paymentDisplayText$delegate:Lo/ams;

    .line 24
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->kL:I

    invoke-static {p0, p1}, Lo/NfcV;->d(Landroidx/recyclerview/widget/RecyclerView$Intent;I)Lo/ams;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->mopLogosRecyclerView$delegate:Lo/ams;

    return-void
.end method


# virtual methods
.method public final getMopLogosRecyclerView()Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->mopLogosRecyclerView$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;

    return-object v0
.end method

.method public final getPaymentDisplayText()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->paymentDisplayText$delegate:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->$$delegatedProperties:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPaymentMode()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->paymentMode:Ljava/lang/String;

    return-object v0
.end method

.method public final setPaymentMode(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->paymentMode:Ljava/lang/String;

    return-void
.end method
