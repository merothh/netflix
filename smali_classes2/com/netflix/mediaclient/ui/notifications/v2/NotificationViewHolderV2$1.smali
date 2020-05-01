.class public final Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OY;-><init>(Lo/UnicodeScript;Lio/reactivex/subjects/PublishSubject;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/akj;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lio/reactivex/subjects/PublishSubject;

.field final synthetic e:Lo/OY;


# direct methods
.method public constructor <init>(Lo/OY;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;->e:Lo/OY;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;->b:Lio/reactivex/subjects/PublishSubject;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/akj;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;->e:Lo/OY;

    invoke-static {p1}, Lo/OY;->c(Lo/OY;)Lo/Pa;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Lo/Pa;->eventGuid()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lo/Pa;->urlTarget()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lo/Pa;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;->b:Lio/reactivex/subjects/PublishSubject;

    new-instance v2, Lo/Pe$ActionBar;

    invoke-direct {v2, v0, p1}, Lo/Pe$ActionBar;-><init>(Ljava/lang/String;Lo/Pa;)V

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;->b:Lio/reactivex/subjects/PublishSubject;

    new-instance v2, Lo/Pe$Activity;

    invoke-direct {v2, v1, p1}, Lo/Pe$Activity;-><init>(Ljava/lang/String;Lo/Pa;)V

    invoke-virtual {v0, v2}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/OY;->d:Lo/OY$Application;

    invoke-virtual {v1}, Lo/OY$Application;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": no way to handle click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 59
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;->e:Lo/OY;

    invoke-static {p1}, Lo/OY;->c(Lo/OY;)Lo/Pa;

    move-result-object p1

    if-nez p1, :cond_3

    .line 60
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/OY;->d:Lo/OY$Application;

    invoke-virtual {v1}, Lo/OY$Application;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": cannot handle click - model is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lo/akj;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/notifications/v2/NotificationViewHolderV2$1;->c(Lo/akj;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
