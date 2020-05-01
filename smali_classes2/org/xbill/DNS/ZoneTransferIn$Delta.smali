.class public Lorg/xbill/DNS/ZoneTransferIn$Delta;
.super Ljava/lang/Object;
.source "ZoneTransferIn.java"


# instance fields
.field public adds:Ljava/util/List;

.field public deletes:Ljava/util/List;

.field public end:J

.field public start:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Lorg/xbill/DNS/ZoneTransferIn$1;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/xbill/DNS/ZoneTransferIn$Delta;-><init>()V

    return-void
.end method
