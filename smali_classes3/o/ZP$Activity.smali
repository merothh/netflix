.class public final Lo/ZP$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "PreQuerySearchAdapter"

    .line 38
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lo/ZP$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .line 45
    invoke-static {}, Lo/ZP;->a()I

    move-result v0

    return v0
.end method
