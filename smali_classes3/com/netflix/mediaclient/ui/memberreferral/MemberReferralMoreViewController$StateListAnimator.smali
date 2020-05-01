.class final Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

.field final synthetic e:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$StateListAnimator;->c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 130
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$StateListAnimator;->e:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->e(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)Lo/AnalogClock;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$StateListAnimator;->c:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a(Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    return-void
.end method
