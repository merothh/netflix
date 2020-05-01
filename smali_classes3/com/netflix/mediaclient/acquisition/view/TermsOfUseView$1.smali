.class final Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->access$isCheckboxVisible(Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView$1;->this$0:Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->getTouCheckbox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
