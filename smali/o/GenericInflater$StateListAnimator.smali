.class public final Lo/GenericInflater$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GenericInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "SqliteDiskCache"

    .line 22
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lo/GenericInflater$StateListAnimator;-><init>()V

    return-void
.end method