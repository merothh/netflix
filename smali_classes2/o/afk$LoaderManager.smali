.class public final Lo/afk$LoaderManager;
.super Lo/SyncAdaptersCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/afk;->a(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lcom/netflix/mediaclient/util/gfx/ImageLoader$Activity;IIILandroid/graphics/Bitmap$Config;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SyncAdaptersCache<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .line 308
    iput p1, p0, Lo/afk$LoaderManager;->c:I

    iput p2, p0, Lo/afk$LoaderManager;->a:I

    invoke-direct {p0, p3, p4}, Lo/SyncAdaptersCache;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;Lo/AppsQueryHelper;)V
    .locals 0

    .line 308
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lo/afk$LoaderManager;->b(Landroid/graphics/Bitmap;Lo/AppsQueryHelper;)V

    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Lo/AppsQueryHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lo/AppsQueryHelper<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
