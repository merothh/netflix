.class public final Lo/ZQ$Application;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "SLolomoRecyclerViewFrag"

    .line 50
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lo/ZQ$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lo/ZQ;
    .locals 1

    .line 53
    new-instance v0, Lo/ZQ;

    invoke-direct {v0}, Lo/ZQ;-><init>()V

    return-object v0
.end method
