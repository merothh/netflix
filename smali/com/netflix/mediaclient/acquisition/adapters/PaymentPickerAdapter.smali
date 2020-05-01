.class public final Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;,
        Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;,
        Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Activity<",
        "Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$Companion;

.field public static final SHOW_ONLY_TABLET_LOGOS:Z = true


# instance fields
.field private paymentOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TransformationMethod2;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentSelection:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$Companion;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->Companion:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;",
            "Ljava/util/List<",
            "Lo/TransformationMethod2;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paymentSelection"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentOptions"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Activity;-><init>()V

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->paymentSelection:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->paymentOptions:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getPaymentSelection$p(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;)Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->paymentSelection:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->paymentOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$Intent;I)V
    .locals 0

    .line 14
    check-cast p1, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->onBindViewHolder(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->paymentOptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/TransformationMethod2;

    .line 38
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->getPaymentDisplayText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lo/TransformationMethod2;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p2}, Lo/TransformationMethod2;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->getMopLogosRecyclerView()Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/acquisition/view/MopLogosMultiLineLayout;->loadMopLogos(Ljava/util/List;)V

    .line 46
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$onBindViewHolder$2;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$onBindViewHolder$2;-><init>(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;Lo/TransformationMethod2;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p2}, Lo/TransformationMethod2;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;->setPaymentMode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$Intent;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Intent;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 29
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->cq:I

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;-><init>(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;Landroid/view/View;)V

    return-object p2
.end method
