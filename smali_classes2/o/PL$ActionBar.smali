.class final Lo/PL$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PL;->b(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/PL$ActionBar;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Lo/Zx$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/PL$ActionBar;->d(Lo/Zx$StateListAnimator;)Lo/Ph;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lo/Zx$StateListAnimator;)Lo/Ph;
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lo/Zx$StateListAnimator;->a()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lo/Zx$StateListAnimator;->b()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 24
    new-instance p1, Lo/Ph$StateListAnimator;

    invoke-direct {p1, v0}, Lo/Ph$StateListAnimator;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)V

    check-cast p1, Lo/Ph;

    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    new-instance v0, Lo/Ph$TaskDescription;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/PL;->a:Lo/PL$StateListAnimator;

    invoke-virtual {v2}, Lo/PL$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - failed to fetch notification with eventGuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/PL$ActionBar;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-direct {v0, p1, v1}, Lo/Ph$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Lo/Ph;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 33
    new-instance v0, Lo/Ph$TaskDescription;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/PL;->a:Lo/PL$StateListAnimator;

    invoke-virtual {v2}, Lo/PL$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - the notifications list summary is null for eventGuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/PL$ActionBar;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-direct {v0, p1, v1}, Lo/Ph$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Lo/Ph;

    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Lo/Ph$TaskDescription;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo/PL;->a:Lo/PL$StateListAnimator;

    invoke-virtual {v2}, Lo/PL$StateListAnimator;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - got unexpected result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-direct {v0, p1, v1}, Lo/Ph$TaskDescription;-><init>(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    move-object p1, v0

    check-cast p1, Lo/Ph;

    :goto_0
    return-object p1
.end method
