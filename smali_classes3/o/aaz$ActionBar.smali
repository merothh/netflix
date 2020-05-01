.class public final Lo/aaz$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aaz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "SOALSearchResultsFrag"

    .line 17
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/aaz$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lo/aaz;
    .locals 1

    .line 19
    new-instance v0, Lo/aaz;

    invoke-direct {v0}, Lo/aaz;-><init>()V

    return-object v0
.end method
