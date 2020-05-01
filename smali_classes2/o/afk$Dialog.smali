.class final Lo/afk$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afk;->b(Ljava/lang/String;III)Lio/reactivex/Single;
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
.field final synthetic d:Lo/MutableContextWrapper;


# direct methods
.method constructor <init>(Lo/MutableContextWrapper;)V
    .locals 0

    iput-object p1, p0, Lo/afk$Dialog;->d:Lo/MutableContextWrapper;

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
            "Lo/NfcActivityManager$ActionBar;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    new-instance v0, Lo/NfcActivityManager$ActionBar;

    .line 348
    iget-object v1, p0, Lo/afk$Dialog;->d:Lo/MutableContextWrapper;

    invoke-interface {v1}, Lo/MutableContextWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "target.get()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/io/File;

    .line 349
    sget-object v2, Lcom/netflix/android/imageloader/api/ImageDataSource;->e:Lcom/netflix/android/imageloader/api/ImageDataSource;

    .line 347
    invoke-direct {v0, v1, v2}, Lo/NfcActivityManager$ActionBar;-><init>(Ljava/io/File;Lcom/netflix/android/imageloader/api/ImageDataSource;)V

    .line 351
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
