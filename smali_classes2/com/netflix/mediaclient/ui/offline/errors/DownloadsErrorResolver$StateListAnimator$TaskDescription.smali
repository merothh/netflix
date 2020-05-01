.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->e(Ljava/util/Collection;J)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator$TaskDescription;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator$TaskDescription;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$StateListAnimator;->a(Lio/reactivex/CompletableEmitter;)V

    return-void
.end method
