.class final Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment$StateListAnimator;->d:Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/confirm/ConfirmFragment;->m()Lo/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Lo/ArrayMap;->v()V

    return-void
.end method
