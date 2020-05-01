.class final Lo/OffHostApduService$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OffHostApduService;->c(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;)V
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
.field final synthetic a:Lo/OffHostApduService;

.field final synthetic b:Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lo/Ndef;

.field final synthetic e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

.field final synthetic f:I

.field final synthetic g:Landroid/graphics/Bitmap$Config;

.field final synthetic i:Lo/MifareUltralight;


# direct methods
.method constructor <init>(Lo/OffHostApduService;Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lo/Ndef;Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;ILandroid/graphics/Bitmap$Config;Lo/MifareUltralight;)V
    .locals 0

    iput-object p1, p0, Lo/OffHostApduService$TaskDescription;->a:Lo/OffHostApduService;

    iput-object p2, p0, Lo/OffHostApduService$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    iput-object p3, p0, Lo/OffHostApduService$TaskDescription;->c:Ljava/lang/String;

    iput-object p4, p0, Lo/OffHostApduService$TaskDescription;->d:Lo/Ndef;

    iput-object p5, p0, Lo/OffHostApduService$TaskDescription;->b:Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;

    iput p6, p0, Lo/OffHostApduService$TaskDescription;->f:I

    iput-object p7, p0, Lo/OffHostApduService$TaskDescription;->g:Landroid/graphics/Bitmap$Config;

    iput-object p8, p0, Lo/OffHostApduService$TaskDescription;->i:Lo/MifareUltralight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/xZ;)V
    .locals 11

    .line 219
    iget-object v0, p0, Lo/OffHostApduService$TaskDescription;->a:Lo/OffHostApduService;

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lo/OffHostApduService;->a(Lo/OffHostApduService;Lo/xZ;)Lo/TransceiveResult;

    move-result-object v2

    .line 220
    iget-object v3, p0, Lo/OffHostApduService$TaskDescription;->e:Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;

    .line 221
    iget-object v4, p0, Lo/OffHostApduService$TaskDescription;->c:Ljava/lang/String;

    .line 222
    iget-object p1, p0, Lo/OffHostApduService$TaskDescription;->d:Lo/Ndef;

    move-object v5, p1

    check-cast v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;

    .line 223
    iget-object p1, p0, Lo/OffHostApduService$TaskDescription;->b:Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->g()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lo/OffHostApduService$TaskDescription;->d:Lo/Ndef;

    invoke-virtual {p1}, Lo/Ndef;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v6, 0x0

    .line 224
    :goto_0
    iget v7, p0, Lo/OffHostApduService$TaskDescription;->f:I

    .line 225
    iget-object v8, p0, Lo/OffHostApduService$TaskDescription;->g:Landroid/graphics/Bitmap$Config;

    .line 226
    iget-object p1, p0, Lo/OffHostApduService$TaskDescription;->b:Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$ActionBar;->b()Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/imageloader/api/ShowImageRequest$Application;->f()Z

    move-result v9

    .line 227
    iget-object p1, p0, Lo/OffHostApduService$TaskDescription;->i:Lo/MifareUltralight;

    move-object v10, p1

    check-cast v10, Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;

    .line 219
    invoke-interface/range {v2 .. v10}, Lo/TransceiveResult;->a(Lcom/netflix/mediaclient/util/gfx/ImageLoader$TaskDescription;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Application;ZILandroid/graphics/Bitmap$Config;ZLcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p1, Lo/xZ;

    invoke-virtual {p0, p1}, Lo/OffHostApduService$TaskDescription;->a(Lo/xZ;)V

    return-void
.end method
