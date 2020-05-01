.class final Lo/OffHostApduService$FragmentManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OffHostApduService;->e(Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;)Lio/reactivex/Single;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

.field final synthetic c:Lo/OffHostApduService;

.field final synthetic d:Landroid/graphics/Bitmap$Config;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/OffHostApduService;Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;ZILandroid/graphics/Bitmap$Config;)V
    .locals 0

    iput-object p1, p0, Lo/OffHostApduService$FragmentManager;->c:Lo/OffHostApduService;

    iput-object p2, p0, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    iput-boolean p3, p0, Lo/OffHostApduService$FragmentManager;->a:Z

    iput p4, p0, Lo/OffHostApduService$FragmentManager;->e:I

    iput-object p5, p0, Lo/OffHostApduService$FragmentManager;->d:Landroid/graphics/Bitmap$Config;

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
            "Lcom/netflix/android/imageloader/api/GetImageRequest$ActionBar;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lo/OffHostApduService$FragmentManager;->c:Lo/OffHostApduService;

    invoke-virtual {v0}, Lo/OffHostApduService;->i()Lio/reactivex/Observable;

    move-result-object v0

    .line 138
    new-instance v1, Lo/OffHostApduService$FragmentManager$5;

    invoke-direct {v1, p0, p1}, Lo/OffHostApduService$FragmentManager$5;-><init>(Lo/OffHostApduService$FragmentManager;Lio/reactivex/SingleEmitter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 163
    new-instance v2, Lo/OffHostApduService$FragmentManager$2;

    invoke-direct {v2, p1}, Lo/OffHostApduService$FragmentManager$2;-><init>(Lio/reactivex/SingleEmitter;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 137
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
