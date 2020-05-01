.class final Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment$TaskDescription;->d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment$TaskDescription;->d:Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyCard/VerifyCardFragment;->d()Lo/ClipRectAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lo/ClipRectAnimation;->e()V

    return-void
.end method
