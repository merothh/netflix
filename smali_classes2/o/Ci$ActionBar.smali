.class public final Lo/Ci$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "SafeToastContext"

    .line 24
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/Ci$ActionBar;-><init>()V

    return-void
.end method
