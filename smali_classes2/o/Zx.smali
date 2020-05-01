.class public final Lo/Zx;
.super Lo/Zv;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Zx$TaskDescription;,
        Lo/Zx$StateListAnimator;,
        Lo/Zx$Activity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Zv<",
        "Lo/hW;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lo/Zx$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Zx$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Zx$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Zx;->b:Lo/Zx$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/Zv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Zx$TaskDescription;",
            ">;"
        }
    .end annotation

    const-string v0, "taskMode"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lo/Zx;->b:Lo/Zx$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 114
    new-instance v0, Lo/Zx$FragmentManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/Zx$FragmentManager;-><init>(Lo/Zx;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Zx$TaskDescription;",
            ">;"
        }
    .end annotation

    const-string v0, "taskMode"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lo/Zx;->b:Lo/Zx$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 143
    new-instance v0, Lo/Zx$ActionBar;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/Zx$ActionBar;-><init>(Lo/Zx;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/Zx;->b()Lo/hW;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lo/Zx$StateListAnimator;",
            ">;"
        }
    .end annotation

    const-string v0, "eventGuid"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lo/Zx;->b:Lo/Zx$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 167
    new-instance v0, Lo/Zx$Fragment;

    invoke-direct {v0, p0, p1, p2}, Lo/Zx$Fragment;-><init>(Lo/Zx;Ljava/lang/String;Z)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected b()Lo/hW;
    .locals 1

    .line 28
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 189
    const-class v0, Lo/hW;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hW;

    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/netflix/mediaclient/browse/api/task/TaskMode;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/Zx$TaskDescription;",
            ">;"
        }
    .end annotation

    const-string v0, "taskMode"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lo/Zx;->b:Lo/Zx$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 86
    new-instance v0, Lo/Zx$Application;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lo/Zx$Application;-><init>(Lo/Zx;Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create { subs\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Lo/DateTransformation;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/DateTransformation<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fetchTask"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lo/Zx$Dialog;

    invoke-direct {v0, p0, p1}, Lo/Zx$Dialog;-><init>(Lo/Zx;Lo/DateTransformation;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "Observable.create { subs\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
