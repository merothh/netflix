.class public final Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afi;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alB<",
        "Lo/SystemSensorManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/SystemSensorManager;

.field final synthetic b:Lo/afi;


# direct methods
.method public constructor <init>(Lo/afi;Lo/SystemSensorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;->b:Lo/afi;

    iput-object p2, p0, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;->a:Lo/SystemSensorManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Lo/SystemSensorManager;
    .locals 7

    .line 36
    new-instance v6, Lo/SystemSensorManager;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;->b:Lo/afi;

    invoke-static {v0}, Lo/afi;->e(Lo/afi;)I

    move-result v1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;->a:Lo/SystemSensorManager;

    iget v2, v0, Lo/SystemSensorManager;->e:I

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;->a:Lo/SystemSensorManager;

    iget v3, v0, Lo/SystemSensorManager;->a:I

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;->a:Lo/SystemSensorManager;

    iget v4, v0, Lo/SystemSensorManager;->d:I

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;->a:Lo/SystemSensorManager;

    iget v5, v0, Lo/SystemSensorManager;->c:I

    move-object v0, v6

    .line 36
    invoke-direct/range {v0 .. v5}, Lo/SystemSensorManager;-><init>(IIIII)V

    return-object v6
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/gfx/fresco/NetflixFrescoModule$initializeFrescoImageLibrary$memoryCacheParams$1;->d()Lo/SystemSensorManager;

    move-result-object v0

    return-object v0
.end method
