.class public final Lo/GK$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "ExtrasFeedViewModel"

    .line 39
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lo/GK$ActionBar;-><init>()V

    return-void
.end method

.method public static final synthetic b(Lo/GK$ActionBar;)Lo/Bv;
    .locals 0

    .line 39
    invoke-direct {p0}, Lo/GK$ActionBar;->e()Lo/Bv;

    move-result-object p0

    return-object p0
.end method

.method private final e()Lo/Bv;
    .locals 2

    invoke-static {}, Lo/GK;->B()Lo/aka;

    move-result-object v0

    sget-object v1, Lo/GK;->a:Lo/GK$ActionBar;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Bv;

    return-object v0
.end method
