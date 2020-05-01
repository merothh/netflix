.class public final Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Application;
.super Lo/yi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Application;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-direct {p0}, Lo/yi;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 160
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 161
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$Application;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    invoke-static {p2, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
