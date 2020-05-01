.class final Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$PendingIntent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->c(Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/List<",
        "+",
        "Lo/AnalogClock<",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

.field final synthetic e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$PendingIntent;->c:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$PendingIntent;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$PendingIntent;->d(Ljava/util/List;)V

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AnalogClock<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$PendingIntent;->c:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController$PendingIntent;->e:Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;->a(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralMoreViewController;Ljava/util/List;Lcom/netflix/mediaclient/android/sharing/impl/types/Shareable;)V

    return-void
.end method
