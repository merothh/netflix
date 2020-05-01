.class final Lo/OffHostApduService$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OffHostApduService;->a(Lo/NfcEvent$Activity;)Lio/reactivex/Single;
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

.field final synthetic b:Lo/NfcEvent$Activity;

.field final synthetic d:Lo/OffHostApduService;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/OffHostApduService;Lo/NfcEvent$Activity;ZI)V
    .locals 0

    iput-object p1, p0, Lo/OffHostApduService$Fragment;->d:Lo/OffHostApduService;

    iput-object p2, p0, Lo/OffHostApduService$Fragment;->b:Lo/NfcEvent$Activity;

    iput-boolean p3, p0, Lo/OffHostApduService$Fragment;->a:Z

    iput p4, p0, Lo/OffHostApduService$Fragment;->e:I

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
            "Lo/NfcEvent$StateListAnimator;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emitter"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lo/OffHostApduService$Fragment;->d:Lo/OffHostApduService;

    invoke-virtual {v0}, Lo/OffHostApduService;->i()Lio/reactivex/Observable;

    move-result-object v0

    .line 65
    new-instance v1, Lo/OffHostApduService$Fragment$5;

    invoke-direct {v1, p0, p1}, Lo/OffHostApduService$Fragment$5;-><init>(Lo/OffHostApduService$Fragment;Lio/reactivex/SingleEmitter;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    .line 77
    new-instance v2, Lo/OffHostApduService$Fragment$4;

    invoke-direct {v2, p1}, Lo/OffHostApduService$Fragment$4;-><init>(Lio/reactivex/SingleEmitter;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    .line 64
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
