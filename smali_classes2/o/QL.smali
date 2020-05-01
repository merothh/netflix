.class public abstract Lo/QL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/QL$Application;
    }
.end annotation


# static fields
.field public static final c:Lo/QL;

.field private static d:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lo/QL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lo/QL;->h()Lo/QL$Application;

    move-result-object v0

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Lo/QL$Application;->d(I)Lo/QL$Application;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Lo/QL$Application;->e(I)Lo/QL$Application;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Lo/QL$Application;->a(I)Lo/QL$Application;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lo/QL$Application;->c(I)Lo/QL$Application;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lo/QL$Application;->b(I)Lo/QL$Application;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Lo/QL$Application;->a(Z)Lo/QL$Application;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lo/QL$Application;->b()Lo/QL;

    move-result-object v0

    sput-object v0, Lo/QL;->c:Lo/QL;

    .line 30
    sget-object v0, Lo/QL;->c:Lo/QL;

    invoke-static {v0}, Lio/reactivex/subjects/BehaviorSubject;->createDefault(Ljava/lang/Object;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    sput-object v0, Lo/QL;->d:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lo/QL;)V
    .locals 1

    .line 37
    sget-object v0, Lo/QL;->d:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, p0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static f()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lo/QL;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lo/QL;->d:Lio/reactivex/subjects/BehaviorSubject;

    return-object v0
.end method

.method public static h()Lo/QL$Application;
    .locals 1

    .line 65
    new-instance v0, Lo/PX$ActionBar;

    invoke-direct {v0}, Lo/PX$ActionBar;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public g()Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lo/QL;->a()I

    move-result v0

    invoke-virtual {p0}, Lo/QL;->e()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/QL;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lo/QL;->c()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract j()Z
.end method
