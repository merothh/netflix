.class public Landroidx/versionedparcelable/ParcelImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lo/RSAMultiPrimePrivateCrtKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Landroidx/versionedparcelable/ParcelImpl$4;

    invoke-direct {v0}, Landroidx/versionedparcelable/ParcelImpl$4;-><init>()V

    sput-object v0, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lo/RSAKeyGenParameterSpec;

    invoke-direct {v0, p1}, Lo/RSAKeyGenParameterSpec;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Lo/RSAKeyGenParameterSpec;->j()Lo/RSAMultiPrimePrivateCrtKeySpec;

    move-result-object p1

    iput-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->a:Lo/RSAMultiPrimePrivateCrtKeySpec;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 56
    new-instance p2, Lo/RSAKeyGenParameterSpec;

    invoke-direct {p2, p1}, Lo/RSAKeyGenParameterSpec;-><init>(Landroid/os/Parcel;)V

    .line 57
    iget-object p1, p0, Landroidx/versionedparcelable/ParcelImpl;->a:Lo/RSAMultiPrimePrivateCrtKeySpec;

    invoke-virtual {p2, p1}, Lo/RSAKeyGenParameterSpec;->a(Lo/RSAMultiPrimePrivateCrtKeySpec;)V

    return-void
.end method
