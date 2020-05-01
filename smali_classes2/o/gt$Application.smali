.class public final Lo/gt$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/gt$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const-string v0, "lolomo_lite_enabled"

    .line 25
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gt;

    .line 26
    invoke-virtual {v0}, Lo/gt;->a()Z

    move-result v0

    return v0
.end method
