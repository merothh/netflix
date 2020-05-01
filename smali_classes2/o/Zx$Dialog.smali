.class public final Lo/Zx$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zx;->e(Lo/DateTransformation;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lo/DateTransformation;

.field final synthetic d:Lo/Zx;


# direct methods
.method constructor <init>(Lo/Zx;Lo/DateTransformation;)V
    .locals 0

    iput-object p1, p0, Lo/Zx$Dialog;->d:Lo/Zx;

    iput-object p2, p0, Lo/Zx$Dialog;->c:Lo/DateTransformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lo/Zx$Dialog;->d:Lo/Zx;

    invoke-virtual {v0}, Lo/Zx;->i()Lio/reactivex/Observable;

    move-result-object v1

    new-instance v0, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/repository/BrowseRepository$fetchTask$1$1;-><init>(Lo/Zx$Dialog;Lio/reactivex/ObservableEmitter;)V

    move-object v4, v0

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
