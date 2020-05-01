.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GN;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/Ph;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/GN;


# direct methods
.method public constructor <init>(Lo/GN;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;->b:Lo/GN;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/Ph;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    instance-of v0, p1, Lo/Ph$ActionBar;

    if-eqz v0, :cond_8

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;->b:Lo/GN;

    invoke-static {v0}, Lo/GN;->c(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 54
    move-object v0, p1

    check-cast v0, Lo/Ph$ActionBar;

    invoke-virtual {v0}, Lo/Ph$ActionBar;->e()Lo/Pf;

    move-result-object v0

    invoke-virtual {v0}, Lo/Pf;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lo/aee;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_4

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;->b:Lo/GN;

    invoke-static {v0}, Lo/GN;->c(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/util/List;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 61
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 62
    check-cast v0, Ljava/lang/Iterable;

    .line 135
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/Pa;

    .line 63
    invoke-virtual {v4}, Lo/Pa;->messageGuid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 64
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 67
    :cond_4
    move-object v0, p1

    check-cast v0, Lo/Ph$ActionBar;

    invoke-virtual {v0}, Lo/Ph$ActionBar;->e()Lo/Pf;

    move-result-object v0

    invoke-virtual {v0}, Lo/Pf;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/Pa;

    .line 68
    invoke-virtual {v4}, Lo/Pa;->messageGuid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 69
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 74
    :cond_6
    check-cast v2, Ljava/lang/Iterable;

    sget-object v0, Lo/aeh;->e:Lo/aeh;

    invoke-virtual {v0}, Lo/aeh;->b()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Lo/akz;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 75
    invoke-static {v2}, Lo/akz;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 78
    :goto_4
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;->b:Lo/GN;

    invoke-static {v2}, Lo/GN;->d(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v2

    check-cast p1, Lo/Ph$ActionBar;

    invoke-virtual {p1}, Lo/Ph$ActionBar;->e()Lo/Pf;

    move-result-object p1

    invoke-virtual {p1}, Lo/Pf;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 81
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;->b:Lo/GN;

    invoke-static {v2}, Lo/GN;->a(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;->b:Lo/GN;

    invoke-virtual {p1}, Lo/GN;->e()Z

    move-result p1

    if-nez p1, :cond_9

    .line 83
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_9

    .line 84
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;->b:Lo/GN;

    invoke-static {p1}, Lo/GN;->c(Lo/GN;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    .line 58
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 89
    :cond_8
    instance-of v0, p1, Lo/Ph$Application;

    if-eqz v0, :cond_9

    .line 91
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    check-cast p1, Lo/Ph$Application;

    invoke-virtual {p1}, Lo/Ph$Application;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "NotificationsListFetchFailed"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Lo/Ph;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasNotificationsViewModel$refreshExtrasNotifications$1;->c(Lo/Ph;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
