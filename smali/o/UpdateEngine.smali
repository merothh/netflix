.class public final Lo/UpdateEngine;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UpdateEngine$TaskDescription;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/UnicodeScript;",
            "Lo/UpdateEngine;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lo/UpdateEngine$TaskDescription;


# instance fields
.field private final a:Lo/ClassCircularityError;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/reactivex/subjects/Subject<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Lo/UnicodeScript;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/UpdateEngine$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/UpdateEngine$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lo/UpdateEngine;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lo/UnicodeScript;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/UpdateEngine;->d:Lo/UnicodeScript;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/UpdateEngine;->b:Ljava/util/HashMap;

    .line 55
    new-instance p1, Lcom/netflix/arch/EventBusFactory$observer$1;

    invoke-direct {p1, p0}, Lcom/netflix/arch/EventBusFactory$observer$1;-><init>(Lo/UpdateEngine;)V

    check-cast p1, Lo/ClassCircularityError;

    iput-object p1, p0, Lo/UpdateEngine;->a:Lo/ClassCircularityError;

    return-void
.end method

.method public synthetic constructor <init>(Lo/UnicodeScript;Lo/amc;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/UpdateEngine;-><init>(Lo/UnicodeScript;)V

    return-void
.end method

.method public static final synthetic b(Lo/UpdateEngine;)Lo/UnicodeScript;
    .locals 0

    .line 22
    iget-object p0, p0, Lo/UpdateEngine;->d:Lo/UnicodeScript;

    return-object p0
.end method

.method public static final synthetic c()Ljava/util/Map;
    .locals 1

    .line 22
    sget-object v0, Lo/UpdateEngine;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static final d(Lo/UnicodeScript;)Lo/UpdateEngine;
    .locals 1

    sget-object v0, Lo/UpdateEngine;->e:Lo/UpdateEngine$TaskDescription;

    invoke-virtual {v0, p0}, Lo/UpdateEngine$TaskDescription;->d(Lo/UnicodeScript;)Lo/UpdateEngine;

    move-result-object p0

    return-object p0
.end method

.method private final e(Ljava/lang/Class;)Lio/reactivex/subjects/Subject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/subjects/Subject<",
            "TT;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lo/UpdateEngine;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/Subject;

    if-eqz v0, :cond_0

    return-object v0

    .line 71
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->toSerialized()Lio/reactivex/subjects/Subject;

    move-result-object v0

    const-string v1, "PublishSubject.create<T>().toSerialized()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lo/UpdateEngine;->b:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/VintfObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, p1}, Lo/UpdateEngine;->e(Ljava/lang/Class;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    return-object p1
.end method

.method public final b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/reactivex/subjects/Subject<",
            "*>;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/UpdateEngine;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final c(Ljava/lang/Class;Lo/VintfObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/VintfObject;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1}, Lo/UpdateEngine;->e(Ljava/lang/Class;)Lio/reactivex/subjects/Subject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/reactivex/subjects/Subject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Lo/ClassCircularityError;
    .locals 1

    .line 55
    iget-object v0, p0, Lo/UpdateEngine;->a:Lo/ClassCircularityError;

    return-object v0
.end method

.method public final e()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lo/UpdateEngine;->d:Lo/UnicodeScript;

    .line 140
    new-instance v1, Lo/BatteryProperties$Activity;

    invoke-direct {v1, v0}, Lo/BatteryProperties$Activity;-><init>(Lo/UnicodeScript;)V

    check-cast v1, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "Observable.create { emit\u2026       }\n        })\n    }"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
