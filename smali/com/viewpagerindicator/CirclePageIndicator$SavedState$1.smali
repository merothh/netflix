.class final Lcom/viewpagerindicator/CirclePageIndicator$SavedState$1;
.super Ljava/lang/Object;
.source "CirclePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/viewpagerindicator/CirclePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    .locals 2

    new-instance v0, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/viewpagerindicator/CirclePageIndicator$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/viewpagerindicator/CirclePageIndicator$SavedState;
    .locals 1

    new-array v0, p1, [Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/CirclePageIndicator$SavedState$1;->newArray(I)[Lcom/viewpagerindicator/CirclePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
