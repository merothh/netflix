.class final Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;->m()Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$Activity;->b:Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment;->a()Lo/WindowManagerPolicyConstants;

    move-result-object v0

    invoke-virtual {v0}, Lo/WindowManagerPolicyConstants;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/acquisition2/screens/returningMemberContext/ReturningMemberContextFragment$StateListAnimator;->onReturningMemberContextConfirm(Ljava/lang/String;)V

    return-void
.end method
