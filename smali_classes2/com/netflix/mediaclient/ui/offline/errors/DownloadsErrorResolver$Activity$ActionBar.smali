.class final Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

.field final synthetic d:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar;->d:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver;->b:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Application;

    check-cast v0, Lo/MessagePdu;

    .line 122
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar$3;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar$3;-><init>(Lio/reactivex/CompletableEmitter;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lo/CameraPrewarmService;->a(Ljava/lang/Runnable;)V

    .line 126
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar;->d:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object v0

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object v0

    invoke-virtual {v0}, Lo/CameraPrewarmService;->i()Lo/nS;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->a(Lo/nS;)V

    .line 127
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar;->d:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity;->h()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$Activity$ActionBar;->a:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorResolver$ActionBar;

    check-cast v0, Lo/nV;

    invoke-interface {p1, v0}, Lo/nS;->e(Lo/nV;)V

    :cond_0
    return-void
.end method
