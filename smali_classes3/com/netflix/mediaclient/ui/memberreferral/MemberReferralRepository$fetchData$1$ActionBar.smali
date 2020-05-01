.class public final Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1$ActionBar;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;->d(Lo/hW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1$ActionBar;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;

    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .line 54
    invoke-super {p0, p1, p2}, Lo/cq;->b(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    if-eqz p2, :cond_1

    .line 57
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1$ActionBar;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;->b:Lo/MZ;

    invoke-static {p2}, Lo/MZ;->c(Lo/MZ;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object p2

    new-instance v0, Lo/MZ$Application$StateListAnimator;

    invoke-direct {v0, p1}, Lo/MZ$Application$StateListAnimator;-><init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;)V

    invoke-virtual {p2, v0}, Lio/reactivex/subjects/ReplaySubject;->onNext(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1$ActionBar;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;->b:Lo/MZ;

    invoke-static {p1}, Lo/MZ;->c(Lo/MZ;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject;->onComplete()V

    goto :goto_1

    .line 66
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "callback"

    const-string v2, "onMemberReferralFetched"

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 69
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->e()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result p2

    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    if-eqz p1, :cond_3

    .line 74
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;->url()Ljava/lang/String;

    move-result-object p2

    const-string v1, "detail.url"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/MemberReferralDetails;->enabled()Z

    move-result p1

    const-string p2, "detail.enabled"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    :cond_3
    sget-object p1, Lcom/netflix/cl/Logger;->INSTANCE:Lcom/netflix/cl/Logger;

    new-instance p2, Lcom/netflix/cl/model/event/discrete/DebugEvent;

    invoke-direct {p2, v0}, Lcom/netflix/cl/model/event/discrete/DebugEvent;-><init>(Lorg/json/JSONObject;)V

    check-cast p2, Lcom/netflix/cl/model/event/discrete/DiscreteEvent;

    invoke-virtual {p1, p2}, Lcom/netflix/cl/Logger;->logEvent(Lcom/netflix/cl/model/event/discrete/DiscreteEvent;)V

    .line 79
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1$ActionBar;->b:Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/memberreferral/MemberReferralRepository$fetchData$1;->b:Lo/MZ;

    invoke-static {p1}, Lo/MZ;->c(Lo/MZ;)Lio/reactivex/subjects/ReplaySubject;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/ReplaySubject;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
