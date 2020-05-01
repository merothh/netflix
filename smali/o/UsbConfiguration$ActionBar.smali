.class public abstract Lo/UsbConfiguration$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UsbConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ActionBar"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract c()Lo/UsbConfiguration$Activity;
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method protected abstract e()Lo/UsbConfiguration$StateListAnimator;
.end method
