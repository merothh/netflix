.class final Lcom/airbnb/lottie/LottieAnimationView$SavedState$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/airbnb/lottie/LottieAnimationView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    .locals 0

    .line 964
    new-array p1, p1, [Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 956
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState$5;->d(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    .locals 2

    .line 959
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcel;Lcom/airbnb/lottie/LottieAnimationView$3;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 956
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState$5;->a(I)[Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-result-object p1

    return-object p1
.end method
