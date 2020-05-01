.class public final Lo/Sm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Sm$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/Sm$StateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Sm$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Sm$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/Sm;->d:Lo/Sm$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lo/hW;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hW;",
            "Ljava/util/List<",
            "+",
            "Lo/AA;",
            ">;",
            "Lio/reactivex/ObservableEmitter<",
            "Lo/Sh$TaskDescription;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->e:I

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AA;

    .line 57
    invoke-interface {v2}, Lo/AA;->getParentVideoId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    new-instance v3, Lo/XmlConfigSource;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lo/XmlConfigSource;-><init>(Ljava/lang/String;Z)V

    check-cast v3, Lo/SettingsValidators;

    .line 60
    new-instance v2, Lo/Sm$Application;

    invoke-direct {v2, p1, v1, v0, p3}, Lo/Sm$Application;-><init>(Lo/hW;Ljava/util/ArrayList;Lkotlin/jvm/internal/Ref$IntRef;Lio/reactivex/ObservableEmitter;)V

    check-cast v2, Lo/ci;

    .line 58
    invoke-interface {p1, v3, v2}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final synthetic d(Lo/Sm;Lo/hW;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lo/Sm;->a(Lo/hW;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method


# virtual methods
.method public final a(Lo/BC;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/BC;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lo/Sh$TaskDescription;",
            ">;"
        }
    .end annotation

    const-string v0, "profile"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lo/Sm$Activity;

    invoke-direct {v0, p0, p1, p2}, Lo/Sm$Activity;-><init>(Lo/Sm;Lo/BC;I)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026}\n            )\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
