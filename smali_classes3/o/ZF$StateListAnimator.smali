.class public final Lo/ZF$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "SearchResultsFrag_Ab22078"

    .line 37
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/ZF$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Lo/ZF;
    .locals 1

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lo/ZF;

    invoke-direct {v0, p1}, Lo/ZF;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
