.class public final Lo/JM$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/JM;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/Observable;
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
.field public final synthetic a:Lo/JM;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic i:Z


# direct methods
.method constructor <init>(Lo/JM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lo/JM$Dialog;->a:Lo/JM;

    iput-object p2, p0, Lo/JM$Dialog;->b:Ljava/lang/String;

    iput-object p3, p0, Lo/JM$Dialog;->c:Ljava/lang/String;

    iput-object p4, p0, Lo/JM$Dialog;->d:Ljava/lang/String;

    iput-object p5, p0, Lo/JM$Dialog;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lo/JM$Dialog;->i:Z

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
            "Lcom/netflix/mediaclient/android/app/Status;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lo/JM$Dialog;->a:Lo/JM;

    invoke-virtual {p1}, Lo/JM;->i()Lio/reactivex/Observable;

    move-result-object v1

    new-instance p1, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;

    invoke-direct {p1, p0, v0}, Lcom/netflix/mediaclient/ui/login/UserAgentRepository$sendLoginRequest$1$1;-><init>(Lo/JM$Dialog;Ljava/lang/ref/WeakReference;)V

    move-object v4, p1

    check-cast v4, Lo/alA;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/reactivex/rxkotlin/SubscribersKt;->subscribeBy$default(Lio/reactivex/Observable;Lo/alA;Lo/alB;Lo/alA;ILjava/lang/Object;)Lio/reactivex/disposables/Disposable;

    return-void
.end method