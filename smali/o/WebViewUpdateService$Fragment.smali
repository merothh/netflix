.class final Lo/WebViewUpdateService$Fragment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/WebViewUpdateService;->b(Lo/Serializable;Ljava/lang/String;Ljava/lang/String;II)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic d:Lo/WebViewUpdateService;

.field final synthetic e:Lo/Serializable;


# direct methods
.method constructor <init>(Lo/WebViewUpdateService;Lo/Serializable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/WebViewUpdateService$Fragment;->d:Lo/WebViewUpdateService;

    iput-object p2, p0, Lo/WebViewUpdateService$Fragment;->e:Lo/Serializable;

    iput-object p3, p0, Lo/WebViewUpdateService$Fragment;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lo/WebViewUpdateService$Fragment;->e(Landroid/graphics/Bitmap;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/graphics/Bitmap;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "mutableBitmap"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lo/WebViewUpdateService$Fragment;->d:Lo/WebViewUpdateService;

    iget-object v1, p0, Lo/WebViewUpdateService$Fragment;->e:Lo/Serializable;

    iget-object v2, p0, Lo/WebViewUpdateService$Fragment;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lo/WebViewUpdateService;->d(Lo/WebViewUpdateService;Lo/Serializable;Landroid/graphics/Bitmap;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
