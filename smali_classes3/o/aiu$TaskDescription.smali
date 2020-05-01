.class public abstract Lo/aiu$TaskDescription;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lo/aiu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aiu$TaskDescription$ActionBar;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.netflix.partner.IPartnerPlaybackSessionListener"

    .line 28
    invoke-virtual {p0, p0, v0}, Lo/aiu$TaskDescription;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static d()Lo/aiu;
    .locals 1

    .line 148
    sget-object v0, Lo/aiu$TaskDescription$ActionBar;->a:Lo/aiu;

    return-object v0
.end method

.method public static d(Landroid/os/IBinder;)Lo/aiu;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.netflix.partner.IPartnerPlaybackSessionListener"

    .line 39
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    instance-of v1, v0, Lo/aiu;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lo/aiu;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lo/aiu$TaskDescription$ActionBar;

    invoke-direct {v0, p0}, Lo/aiu$TaskDescription$ActionBar;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.netflix.partner.IPartnerPlaybackSessionListener"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 70
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lo/aiu$TaskDescription;->d(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 61
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lo/air$Application;->b(Landroid/os/IBinder;)Lo/air;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lo/aiu$TaskDescription;->a(Lo/air;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
