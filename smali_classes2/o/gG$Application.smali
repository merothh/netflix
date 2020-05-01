.class public final Lo/gG$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/gG$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 1

    const-string v0, "newcanvassesuilatencytracker"

    .line 19
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gG;

    invoke-static {v0}, Lo/gG;->e(Lo/gG;)Z

    move-result v0

    return v0
.end method
