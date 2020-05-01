.class public interface abstract Lcom/netflix/android/imageloader/api/BlurProcessor;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;,
        Lcom/netflix/android/imageloader/api/BlurProcessor$ActionBar;,
        Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;
    }
.end annotation


# static fields
.field public static final c:Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;

    sput-object v0, Lcom/netflix/android/imageloader/api/BlurProcessor;->c:Lcom/netflix/android/imageloader/api/BlurProcessor$Activity;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;)Landroid/graphics/Bitmap;
.end method

.method public abstract d(Landroid/graphics/Bitmap;Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;)Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/netflix/android/imageloader/api/BlurProcessor$Intensity;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
