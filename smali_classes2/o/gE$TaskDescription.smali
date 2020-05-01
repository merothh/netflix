.class public final Lo/gE$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/gE$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const-string v0, "new_parental_controls_enabled"

    .line 23
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    check-cast v0, Lo/gE;

    .line 24
    invoke-virtual {v0}, Lo/gE;->a()Z

    move-result v0

    return v0
.end method
