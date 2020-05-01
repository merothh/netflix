.class final Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$Application;->e:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$Application;->e:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object p1

    invoke-virtual {p1}, Lo/AnticipateInterpolator;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$Application;->e:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->o()Lo/AnticipateInterpolator;

    move-result-object p1

    invoke-virtual {p1}, Lo/AnticipateInterpolator;->k()V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment$Application;->e:Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;

    invoke-static {p1}, Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;->d(Lcom/netflix/mediaclient/acquisition2/screens/verifyAge/VerifyAgeFragment;)V

    :goto_0
    return-void
.end method
