.class final Lo/BluetoothAvrcpController$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/BluetoothAssignedNumbers;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BluetoothAvrcpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActionBar"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lo/BluetoothAvrcpController$ActionBar;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/BluetoothAvrcpController$ActionBar;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 280
    instance-of v0, p1, Lo/BluetoothAvrcpController$ActionBar;

    if-eqz v0, :cond_0

    .line 281
    check-cast p1, Lo/BluetoothAvrcpController$ActionBar;

    .line 282
    iget-object v0, p0, Lo/BluetoothAvrcpController$ActionBar;->d:Ljava/lang/String;

    iget-object p1, p1, Lo/BluetoothAvrcpController$ActionBar;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 289
    iget-object v0, p0, Lo/BluetoothAvrcpController$ActionBar;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StringHeaderFactory{value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/BluetoothAvrcpController$ActionBar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method