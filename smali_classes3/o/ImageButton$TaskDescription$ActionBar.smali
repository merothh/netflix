.class public final Lo/ImageButton$TaskDescription$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ImageButton$TaskDescription;->b(Landroid/content/Context;Ljava/lang/String;Lo/ImageButton;)Lio/reactivex/Single;
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
        "Lio/reactivex/SingleOnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic d:Lo/ImageButton;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/ImageButton;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/ImageButton$TaskDescription$ActionBar;->e:Ljava/lang/String;

    iput-object p2, p0, Lo/ImageButton$TaskDescription$ActionBar;->d:Lo/ImageButton;

    iput-object p3, p0, Lo/ImageButton$TaskDescription$ActionBar;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Lo/akj;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lo/WebResourceRequest;->a:Lo/WebResourceRequest;

    iget-object v1, p0, Lo/ImageButton$TaskDescription$ActionBar;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/WebResourceRequest;->c(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 132
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "NetflixLottieHelper.load\u2026dSchedulers.mainThread())"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$1;-><init>(Lo/ImageButton$TaskDescription$ActionBar;Lio/reactivex/SingleEmitter;)V

    check-cast v1, Lo/alA;

    .line 146
    new-instance v2, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$2;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/android/widget/NetflixLottieAnimationView$Companion$setCompositionFromFile$1$2;-><init>(Lio/reactivex/SingleEmitter;)V

    check-cast v2, Lo/alA;

    .line 133
    invoke-static {v0, v2, v1}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy(Lio/reactivex/Single;Lo/alA;Lo/alA;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
