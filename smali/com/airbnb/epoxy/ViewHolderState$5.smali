.class final Lcom/airbnb/epoxy/ViewHolderState$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/epoxy/ViewHolderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/airbnb/epoxy/ViewHolderState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lcom/airbnb/epoxy/ViewHolderState;
    .locals 0

    .line 59
    new-array p1, p1, [Lcom/airbnb/epoxy/ViewHolderState;

    return-object p1
.end method

.method public b(Landroid/os/Parcel;)Lcom/airbnb/epoxy/ViewHolderState;
    .locals 6

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    new-instance v1, Lcom/airbnb/epoxy/ViewHolderState;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/airbnb/epoxy/ViewHolderState;-><init>(ILcom/airbnb/epoxy/ViewHolderState$5;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 68
    const-class v5, Lcom/airbnb/epoxy/ViewHolderState$ViewState;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/epoxy/ViewHolderState$ViewState;

    .line 69
    invoke-virtual {v1, v3, v4, v5}, Lcom/airbnb/epoxy/ViewHolderState;->b(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/ViewHolderState$5;->b(Landroid/os/Parcel;)Lcom/airbnb/epoxy/ViewHolderState;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/airbnb/epoxy/ViewHolderState$5;->a(I)[Lcom/airbnb/epoxy/ViewHolderState;

    move-result-object p1

    return-object p1
.end method
