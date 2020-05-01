.class public final Lo/MX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Nb$Application;


# instance fields
.field private final d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

.field private final e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;",
            ")V"
        }
    .end annotation

    const-string v0, "shareable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MX;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    iput-object p2, p0, Lo/MX;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    return-void
.end method


# virtual methods
.method public d(Lo/AnalogClock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "shareTarget"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lo/MX;->d:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    iget-object v1, p0, Lo/MX;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a(Lo/AnalogClock;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    return-void
.end method
