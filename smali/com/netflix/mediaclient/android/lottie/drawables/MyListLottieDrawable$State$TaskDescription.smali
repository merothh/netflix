.class public final Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State$TaskDescription;
.super Landroid/graphics/drawable/ColorDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State$TaskDescription;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State$TaskDescription;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/android/lottie/drawables/MyListLottieDrawable$State$TaskDescription;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
