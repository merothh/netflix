.class public final Lo/Yl$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Yl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "PreviewsPlayerAdapter"

    .line 15
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/Yl$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Z)V
    .locals 0

    .line 16
    invoke-static {p1}, Lo/Yl;->e(Z)V

    return-void
.end method

.method public final e()Z
    .locals 1

    .line 16
    invoke-static {}, Lo/Yl;->a()Z

    move-result v0

    return v0
.end method
