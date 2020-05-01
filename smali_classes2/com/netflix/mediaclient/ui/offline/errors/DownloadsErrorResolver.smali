.class public interface abstract Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;,
        Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;,
        Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;,
        Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;,
        Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;
    }
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    return-void
.end method


# virtual methods
.method public abstract a(Lo/Rq;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;
.end method

.method public abstract a()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionStatus;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method
