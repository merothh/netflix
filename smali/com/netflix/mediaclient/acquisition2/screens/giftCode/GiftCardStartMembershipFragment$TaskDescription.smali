.class final Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$TaskDescription;->d:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$TaskDescription;->d:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->y()Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition/view/TermsOfUseView;->hasAcceptedTermsOfUse()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment$TaskDescription;->d:Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/acquisition2/screens/giftCode/GiftCardStartMembershipFragment;->m()Lo/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lo/Pair;->e()V

    :cond_0
    return-void
.end method
