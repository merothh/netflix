.class final Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$FragmentManager;->c:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$FragmentManager;->c:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->b(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Z)V

    .line 103
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$FragmentManager;->c:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c()Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$TaskDescription;->e()V

    :cond_0
    return-void
.end method
