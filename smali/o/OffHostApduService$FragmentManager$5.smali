.class final Lo/OffHostApduService$FragmentManager$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OffHostApduService$FragmentManager;->subscribe(Lio/reactivex/SingleEmitter;)V
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
.field final synthetic a:Lo/OffHostApduService$FragmentManager;

.field final synthetic c:Lio/reactivex/SingleEmitter;


# direct methods
.method constructor <init>(Lo/OffHostApduService$FragmentManager;Lio/reactivex/SingleEmitter;)V
    .locals 0

    iput-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iput-object p2, p0, Lo/OffHostApduService$FragmentManager$5;->c:Lio/reactivex/SingleEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/xZ;)V
    .locals 12

    .line 139
    iget-object v0, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object v0, v0, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->i()Z

    move-result v0

    const-string v1, "emitter"

    const-string v2, "it"

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object v0, v0, Lo/OffHostApduService$FragmentManager;->c:Lo/OffHostApduService;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/OffHostApduService;->a(Lo/OffHostApduService;Lo/xZ;)Lo/TransceiveResult;

    move-result-object v3

    .line 141
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object p1, p1, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->b()Ljava/lang/String;

    move-result-object v4

    .line 142
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object p1, p1, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->a()I

    move-result v5

    .line 143
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object p1, p1, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->d()I

    move-result v6

    .line 144
    new-instance p1, Lo/CardEmulation;

    iget-object v0, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object v0, v0, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {v0}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lo/OffHostApduService$FragmentManager$5;->c:Lio/reactivex/SingleEmitter;

    invoke-static {v2, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, v2}, Lo/CardEmulation;-><init>(Ljava/lang/String;Lio/reactivex/SingleEmitter;)V

    move-object v7, p1

    check-cast v7, Lo/aeW;

    .line 145
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-boolean v8, p1, Lo/OffHostApduService$FragmentManager;->a:Z

    .line 146
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget v9, p1, Lo/OffHostApduService$FragmentManager;->e:I

    .line 147
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object v10, p1, Lo/OffHostApduService$FragmentManager;->d:Landroid/graphics/Bitmap$Config;

    .line 148
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object p1, p1, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->e()Z

    move-result v11

    .line 140
    invoke-interface/range {v3 .. v11}, Lo/TransceiveResult;->e(Ljava/lang/String;IILo/aeW;ZILandroid/graphics/Bitmap$Config;Z)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object v0, v0, Lo/OffHostApduService$FragmentManager;->c:Lo/OffHostApduService;

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/OffHostApduService;->a(Lo/OffHostApduService;Lo/xZ;)Lo/TransceiveResult;

    move-result-object v3

    .line 152
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object p1, p1, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->b()Ljava/lang/String;

    move-result-object v4

    .line 153
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object p1, p1, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->a()I

    move-result v5

    .line 154
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object p1, p1, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->d()I

    move-result v6

    .line 155
    new-instance p1, Lo/AidGroup;

    iget-object v0, p0, Lo/OffHostApduService$FragmentManager$5;->c:Lio/reactivex/SingleEmitter;

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lo/AidGroup;-><init>(Lio/reactivex/SingleEmitter;)V

    move-object v7, p1

    check-cast v7, Lo/bP;

    .line 156
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-boolean v8, p1, Lo/OffHostApduService$FragmentManager;->a:Z

    .line 157
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget v9, p1, Lo/OffHostApduService$FragmentManager;->e:I

    .line 158
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object v10, p1, Lo/OffHostApduService$FragmentManager;->d:Landroid/graphics/Bitmap$Config;

    .line 159
    iget-object p1, p0, Lo/OffHostApduService$FragmentManager$5;->a:Lo/OffHostApduService$FragmentManager;

    iget-object p1, p1, Lo/OffHostApduService$FragmentManager;->b:Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/GetImageRequest$TaskDescription;->e()Z

    move-result v11

    .line 151
    invoke-interface/range {v3 .. v11}, Lo/TransceiveResult;->d(Ljava/lang/String;IILo/bP;ZILandroid/graphics/Bitmap$Config;Z)V

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lo/xZ;

    invoke-virtual {p0, p1}, Lo/OffHostApduService$FragmentManager$5;->a(Lo/xZ;)V

    return-void
.end method
