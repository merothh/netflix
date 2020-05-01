.class final Lo/OffHostApduService$Fragment$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OffHostApduService$Fragment;->subscribe(Lio/reactivex/SingleEmitter;)V
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
        "Lio/reactivex/functions/Consumer<",
        "Lo/xZ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/OffHostApduService$Fragment;

.field final synthetic e:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lo/OffHostApduService$Fragment;Lio/reactivex/SingleEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/OffHostApduService$Fragment$5;->a:Lo/OffHostApduService$Fragment;

    iput-object p2, p0, Lo/OffHostApduService$Fragment$5;->e:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/xZ;)V
    .locals 11

    .line 66
    iget-object v0, p0, Lo/OffHostApduService$Fragment$5;->a:Lo/OffHostApduService$Fragment;

    iget-object v0, v0, Lo/OffHostApduService$Fragment;->d:Lo/OffHostApduService;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/OffHostApduService;->a(Lo/OffHostApduService;Lo/xZ;)Lo/TransceiveResult;

    move-result-object v2

    .line 67
    iget-object p1, p0, Lo/OffHostApduService$Fragment$5;->a:Lo/OffHostApduService$Fragment;

    iget-object p1, p1, Lo/OffHostApduService$Fragment;->b:Lo/NfcEvent$Activity;

    invoke-virtual {p1}, Lo/NfcEvent$Activity;->e()Ljava/lang/String;

    move-result-object v3

    .line 68
    iget-object p1, p0, Lo/OffHostApduService$Fragment$5;->a:Lo/OffHostApduService$Fragment;

    iget-object p1, p1, Lo/OffHostApduService$Fragment;->b:Lo/NfcEvent$Activity;

    invoke-virtual {p1}, Lo/NfcEvent$Activity;->b()I

    move-result v4

    .line 69
    iget-object p1, p0, Lo/OffHostApduService$Fragment$5;->a:Lo/OffHostApduService$Fragment;

    iget-object p1, p1, Lo/OffHostApduService$Fragment;->b:Lo/NfcEvent$Activity;

    invoke-virtual {p1}, Lo/NfcEvent$Activity;->a()I

    move-result v5

    .line 70
    new-instance p1, Lo/NfcDta;

    iget-object v0, p0, Lo/OffHostApduService$Fragment$5;->e:Lio/reactivex/SingleEmitter;

    const-string v1, "emitter"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lo/NfcDta;-><init>(Lio/reactivex/SingleEmitter;)V

    move-object v6, p1

    check-cast v6, Lo/bP;

    .line 71
    iget-object p1, p0, Lo/OffHostApduService$Fragment$5;->a:Lo/OffHostApduService$Fragment;

    iget-boolean v7, p1, Lo/OffHostApduService$Fragment;->a:Z

    .line 72
    iget-object p1, p0, Lo/OffHostApduService$Fragment$5;->a:Lo/OffHostApduService$Fragment;

    iget v8, p1, Lo/OffHostApduService$Fragment;->e:I

    .line 73
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    .line 66
    invoke-interface/range {v2 .. v10}, Lo/TransceiveResult;->d(Ljava/lang/String;IILo/bP;ZILandroid/graphics/Bitmap$Config;Z)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lo/xZ;

    invoke-virtual {p0, p1}, Lo/OffHostApduService$Fragment$5;->a(Lo/xZ;)V

    return-void
.end method
