.class public final Lo/gm$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Config_FastProperty_InBetweenPPUnificationProductization"

    .line 16
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lo/gm$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const-string v0, "ppinbetween_unification_productization"

    .line 22
    invoke-static {v0}, Lo/cQ;->c(Ljava/lang/String;)Lo/hq;

    move-result-object v0

    .line 20
    check-cast v0, Lo/gm;

    .line 25
    invoke-virtual {v0}, Lo/gm;->c()Z

    move-result v0

    return v0
.end method