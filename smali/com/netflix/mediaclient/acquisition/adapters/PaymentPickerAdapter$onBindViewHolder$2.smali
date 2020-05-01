.class final Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$onBindViewHolder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->onBindViewHolder(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lo/TransformationMethod2;

.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;Lo/TransformationMethod2;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$onBindViewHolder$2;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$onBindViewHolder$2;->$item:Lo/TransformationMethod2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$onBindViewHolder$2;->this$0:Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;->access$getPaymentSelection$p(Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter;)Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$onBindViewHolder$2;->$item:Lo/TransformationMethod2;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/acquisition/adapters/PaymentPickerAdapter$OnPaymentOptionSelectedListener;->onPaymentOptionSelected(Lo/TransformationMethod2;)V

    return-void
.end method
