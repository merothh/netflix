.class public final Lo/hu$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/hu$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const-string v0, "xhe_aac"

    .line 22
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 21
    check-cast v0, Lo/hu;

    .line 25
    invoke-virtual {v0}, Lo/hu;->d()Z

    move-result v0

    return v0
.end method
