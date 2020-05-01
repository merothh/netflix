.class final Lo/Zv$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zv;->g()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic e:Lo/Zv;


# direct methods
.method constructor <init>(Lo/Zv;)V
    .locals 0

    iput-object p1, p0, Lo/Zv$ActionBar;->e:Lo/Zv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lo/CarrierIdentifier;->getInstance()Lo/CarrierIdentifier;

    move-result-object p1

    const-string v1, "BaseNetflixApp.getInstance()"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/CarrierIdentifier;->n()Lo/CameraPrewarmService;

    move-result-object p1

    const-string v1, "BaseNetflixApp.getInstance().nfAgentProvider"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lo/CameraPrewarmService;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object p1, p0, Lo/Zv$ActionBar;->e:Lo/Zv;

    invoke-static {p1, v0}, Lo/Zv;->b(Lo/Zv;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Lo/Zv$ActionBar$2;

    invoke-direct {v1, p0, v0}, Lo/Zv$ActionBar$2;-><init>(Lo/Zv$ActionBar;Ljava/lang/ref/WeakReference;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lo/CameraPrewarmService;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
