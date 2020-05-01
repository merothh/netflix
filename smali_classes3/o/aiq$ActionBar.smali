.class public abstract Lo/aiq$ActionBar;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lo/aiq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aiq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActionBar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aiq$ActionBar$Application;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.netflix.partner.INetflixPartnerCallback"

    .line 36
    invoke-virtual {p0, p0, v0}, Lo/aiq$ActionBar;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lo/aiq;
    .locals 1

    .line 215
    sget-object v0, Lo/aiq$ActionBar$Application;->d:Lo/aiq;

    return-object v0
.end method

.method public static e(Landroid/os/IBinder;)Lo/aiq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.netflix.partner.INetflixPartnerCallback"

    .line 47
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    instance-of v1, v0, Lo/aiq;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Lo/aiq;

    return-object v0

    .line 51
    :cond_1
    new-instance v0, Lo/aiq$ActionBar$Application;

    invoke-direct {v0, p0}, Lo/aiq$ActionBar$Application;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.netflix.partner.INetflixPartnerCallback"

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 97
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-virtual {p0, p1, p2}, Lo/aiq$ActionBar;->d(ILjava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 83
    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    sget-object p1, Lcom/netflix/partner/NetflixPartnerRecoResults;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netflix/partner/NetflixPartnerRecoResults;

    .line 91
    :cond_3
    invoke-virtual {p0, v0}, Lo/aiq$ActionBar;->a(Lcom/netflix/partner/NetflixPartnerRecoResults;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 69
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 72
    sget-object p1, Lcom/netflix/partner/NetflixPartnerSearchResults;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/netflix/partner/NetflixPartnerSearchResults;

    .line 77
    :cond_5
    invoke-virtual {p0, v0}, Lo/aiq$ActionBar;->c(Lcom/netflix/partner/NetflixPartnerSearchResults;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
